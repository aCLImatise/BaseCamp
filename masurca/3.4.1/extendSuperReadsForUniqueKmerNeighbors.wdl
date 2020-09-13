version 1.0

task ExtendSuperReadsForUniqueKmerNeighbors {
  input {
    File? dir
    String cmdline_parse
  }
  command <<<
    extendSuperReadsForUniqueKmerNeighbors \
      ~{cmdline_parse} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""}
  >>>
  parameter_meta {
    dir: "*Directory where the super-reads work is done"
    cmdline_parse: ""
  }
  output {
    File out_stdout = stdout()
  }
}