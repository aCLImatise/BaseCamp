version 1.0

task ExtendSuperReadsBasedOnUniqueExtensions {
  input {
    File? dir
    Int? mer
    String cmdline_parse
  }
  command <<<
    extendSuperReadsBasedOnUniqueExtensions \
      ~{cmdline_parse} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(mer) then ("--mer " +  '"' + mer + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dir: "*Directory where the super-reads work is done"
    mer: "*Length of mer"
    cmdline_parse: ""
  }
  output {
    File out_stdout = stdout()
  }
}