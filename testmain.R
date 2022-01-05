# df <- data.frame(A=c(1,2,3), B=c("A", "B", "C"), C=c(T,F,F)) 
# df <- serialize(df, con=NULL, ascii=T) 
# 
# gpg_keygen(name = "meet", email = "meet1708@gmail.com", passphrase = NULL)
# 
# enc <- gpg_encrypt(df, receiver="F39E31FC4F15E5D7") 
# writeBin(enc, "Data/test_df.gpg")






dec <- gpg_decrypt("test.df.gpg", as_text = FALSE)

df <- unserialize(dec)
