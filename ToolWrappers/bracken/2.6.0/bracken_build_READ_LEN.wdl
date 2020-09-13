version 1.0

task BrackenbuildREADLEN {
  input {
    String database
    String threads
  }
  command <<<
    bracken_build READ_LEN \
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