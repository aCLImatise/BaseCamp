version 1.0

task PyrsaKeygen {
  input {
    String? pub_out
    String? out
    String? form
    String key_size
  }
  command <<<
    pyrsa-keygen \
      ~{key_size} \
      ~{if defined(pub_out) then ("--pubout " +  '"' + pub_out + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(form) then ("--form " +  '"' + form + '"') else ""}
  >>>
  parameter_meta {
    pub_out: "Output filename for the public key. The public key is not saved if this option is not present. You can use pyrsa- priv2pub to create the public key file later."
    out: "Output filename for the private key. The key is written to stdout if this option is not present."
    form: "key format of the private and public keys - default PEM"
    key_size: ""
  }
}