# df <- data.frame(A=c(1,2,3), B=c("A", "B", "C"), C=c(T,F,F))
# df <- serialize(df, con=NULL, ascii=T)
# gpg_keygen(name = "meet", email = "meet1708@gmail.com", passphrase = NULL)
# 
# enc <- gpg_encrypt(df, receiver="E07B1BACB940A6D1")
# writeBin(enc, "Data/test_df.gpg")
# gpg_send(id = "E07B1BACB940A6D1")


library(gpg)

key <- Sys.getenv('SEC_PASS')
gpg_recv(id = key)

 
dec <- gpg_decrypt("Data/test_df.gpg", as_text = FALSE)
df <- unserialize(dec)
df[nrow(df) + 1,] = c(4,"D", T)

enc <- gpg_encrypt(df, receiver=key)
writeBin(enc, "Data/test_df.gpg")
