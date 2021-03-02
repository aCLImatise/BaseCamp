version 1.0

task TracyBasecall {
  input {
    Boolean? arg_peak_ratio
    Boolean? f
    Boolean? arg_basecalling_output
    Int trace_do_tab_one
  }
  command <<<
    tracy basecall \
      ~{trace_do_tab_one} \
      ~{if (arg_peak_ratio) then "-p" else ""} \
      ~{if (f) then "-f" else ""} \
      ~{if (arg_basecalling_output) then "-o" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tracy:0.5.8--hf3ca161_0"
  }
  parameter_meta {
    arg_peak_ratio: "[ --pratio ] arg (=0.330000013)  peak ratio to call a base"
    f: "[ --format ] arg (=json)         output format [json|tsv|fasta|fastq]"
    arg_basecalling_output: "[ --output ] arg (=\\\"out.json\\\")   basecalling output"
    trace_do_tab_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}