version 1.0

task BrackenbuildTHREADS {
  input {
    String database
    String threads
  }
  command <<<
    bracken_build THREADS \
      ~{database} \
      ~{threads}
  >>>
  parameter_meta {
    database: "= "
    threads: "= 1"
  }
  output {
    File out_stdout = stdout()
  }
}