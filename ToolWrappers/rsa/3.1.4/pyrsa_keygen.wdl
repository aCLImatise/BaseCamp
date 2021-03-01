version 1.0

task Pyrsakeygen {
  input {
    File? pub_out
    File? out
    String? form
    String key_size
  }
  command <<<
    pyrsa_keygen \
      ~{key_size} \
      ~{if defined(pub_out) then ("--pubout " +  '"' + pub_out + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(form) then ("--form " +  '"' + form + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pub_out: "Output filename for the public key. The public key is not\\nsaved if this option is not present. You can use pyrsa-\\npriv2pub to create the public key file later."
    out: "Output filename for the private key. The key is written\\nto stdout if this option is not present."
    form: "key format of the private and public keys - default PEM"
    key_size: ""
  }
  output {
    File out_stdout = stdout()
    File out_pub_out = "${in_pub_out}"
    File out_out = "${in_out}"
  }
}