version 1.0

task SamtoolsSort {
  input {
    String? m
    Boolean? on
    String in_dot_bam
    String out_dot_prefix
  }
  command <<<
    samtools sort \
      ~{in_dot_bam} \
      ~{out_dot_prefix} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if (on) then "-on" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    m: ""
    on: ""
    in_dot_bam: ""
    out_dot_prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}