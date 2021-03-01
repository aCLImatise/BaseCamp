version 1.0

task PhyloFlashpl {
  input {
    File? read_one
    String? lib
  }
  command <<<
    phyloFlash_pl \
      ~{if defined(read_one) then ("-read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(lib) then ("-lib " +  '"' + lib + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_one: ""
    lib: ""
  }
  output {
    File out_stdout = stdout()
  }
}