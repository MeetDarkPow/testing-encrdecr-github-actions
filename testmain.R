df <- data.frame(A=c(1,2,3), B=c("A", "B", "C"), C=c(T,F,F)) 
df <- serialize(df, con=NULL, ascii=T) 
enc <- gpg_encrypt(df, receiver="64B1D93B44627B8B") 
writeBin(enc, "test.df.gpg")




gpg_keygen(name = "meet", email = "meet1708@gmail.com", passphrase = NULL)


dec <- gpg_decrypt("test.df.gpg", as_text = FALSE)

df <- unserialize(dec)
