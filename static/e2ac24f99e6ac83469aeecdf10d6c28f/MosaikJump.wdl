version 1.0

task MosaikJump {
  input {
    String? mem
    String? hs
    Boolean? iupac
  }
  command <<<
    MosaikJump \
      ~{if defined(mem) then ("-mem " +  '"' + mem + '"') else ""} \
      ~{if defined(hs) then ("-hs " +  '"' + hs + '"') else ""} \
      ~{true="-iupac" false="" iupac}
  >>>
  parameter_meta {
    mem: "the amount memory used when sorting hashes. def: 2"
    hs: "the hash size [4 - 32]"
    iupac: "considers IUPAC"
  }
}