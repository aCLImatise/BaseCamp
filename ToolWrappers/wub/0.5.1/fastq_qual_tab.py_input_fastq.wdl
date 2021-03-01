version 1.0

task FastqQualTabpyInputFastq {
  input {
    String? t
  }
  command <<<
    fastq_qual_tab_py input_fastq \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    t: ""
  }
  output {
    File out_stdout = stdout()
  }
}