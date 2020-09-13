version 1.0

task BrackenbuildMYDB {
  input {
    String database
    String threads
  }
  command <<<
    bracken_build MY_DB \
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