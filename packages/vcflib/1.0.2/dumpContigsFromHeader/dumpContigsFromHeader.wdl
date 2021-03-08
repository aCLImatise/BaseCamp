version 1.0

task DumpContigsFromHeader {
  input {
    String scaffold_
  }
  command <<<
    dumpContigsFromHeader \
      ~{scaffold_}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0"
  }
  parameter_meta {
    scaffold_: "scaffold4       1524"
  }
  output {
    File out_stdout = stdout()
  }
}