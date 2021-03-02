version 1.0

task MosaikJump {
  input {
    Int? mem
    Int? hs
    Boolean? iupac
  }
  command <<<
    MosaikJump \
      ~{if defined(mem) then ("-mem " +  '"' + mem + '"') else ""} \
      ~{if defined(hs) then ("-hs " +  '"' + hs + '"') else ""} \
      ~{if (iupac) then "-iupac" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mem: "the amount memory used when sorting\\nhashes. def: 2"
    hs: "the hash size [4 - 32]"
    iupac: "considers IUPAC"
  }
  output {
    File out_stdout = stdout()
  }
}