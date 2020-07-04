version 1.0

task TracyBasecall {
  input {
    Boolean? arg_peak_ratio
    Boolean? f
    Boolean? arg_basecalling_output
    String trace_do_tab_one
  }
  command <<<
    tracy basecall \
      ~{trace_do_tab_one} \
      ~{true="-p" false="" arg_peak_ratio} \
      ~{true="-f" false="" f} \
      ~{true="-o" false="" arg_basecalling_output}
  >>>
  parameter_meta {
    arg_peak_ratio: "[ --pratio ] arg (=0.330000013)  peak ratio to call a base"
    f: "[ --format ] arg (=json)         output format [json|tsv|fasta|fastq]"
    arg_basecalling_output: "[ --output ] arg (=\"out.json\")   basecalling output"
    trace_do_tab_one: ""
  }
}