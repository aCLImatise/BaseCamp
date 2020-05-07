version 1.0

task MosaikJump {
  input {
    String memMem
    String hsHs
    Boolean iupacIupac
  }
  command <<<
    MosaikJump \
      ~{if defined(memMem) then ("-mem " +  '"' + memMem + '"') else ""} \
      ~{if defined(hsHs) then ("-hs " +  '"' + hsHs + '"') else ""} \
      ~{true="-iupac" false="" iupacIupac}
  >>>
}