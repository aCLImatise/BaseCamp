version 1.0

task FlyeSamtoolsFlagstat {
  input {
    Int? threads
    String sam_tools
    String flag_stat
    String in_dot_bam
  }
  command <<<
    flye-samtools flagstat \
      ~{sam_tools} \
      ~{flag_stat} \
      ~{in_dot_bam} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    threads: "Number of additional threads to use [0]"
    sam_tools: ""
    flag_stat: ""
    in_dot_bam: ""
  }
}