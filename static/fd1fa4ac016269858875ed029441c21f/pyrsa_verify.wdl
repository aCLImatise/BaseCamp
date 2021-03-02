version 1.0

task Pyrsaverify {
  input {
    File? name_file_verify
    String? key_form
    String public_key
    String signature_file
  }
  command <<<
    pyrsa_verify \
      ~{public_key} \
      ~{signature_file} \
      ~{if defined(name_file_verify) then ("--input " +  '"' + name_file_verify + '"') else ""} \
      ~{if defined(key_form) then ("--keyform " +  '"' + key_form + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name_file_verify: "Name of the file to verify. Reads from stdin if not\\nspecified."
    key_form: "Key format of the public key - default PEM"
    public_key: ""
    signature_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}