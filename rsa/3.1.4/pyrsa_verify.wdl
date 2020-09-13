version 1.0

task Pyrsaverify {
  input {
    File? name_verify_reads
    String? key_form
    String public_key
    String signature_file
  }
  command <<<
    pyrsa_verify \
      ~{public_key} \
      ~{signature_file} \
      ~{if defined(name_verify_reads) then ("--input " +  '"' + name_verify_reads + '"') else ""} \
      ~{if defined(key_form) then ("--keyform " +  '"' + key_form + '"') else ""}
  >>>
  parameter_meta {
    name_verify_reads: "Name of the file to verify. Reads from stdin if not\\nspecified."
    key_form: "Key format of the public key - default PEM"
    public_key: ""
    signature_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}