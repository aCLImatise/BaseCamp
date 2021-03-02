version 1.0

task FastqQualTabpy {
  input {
    File? output_tab_separated
  }
  command <<<
    fastq_qual_tab_py \
      ~{if defined(output_tab_separated) then ("-t " +  '"' + output_tab_separated + '"') else ""}
  >>>
  parameter_meta {
    output_tab_separated: "Output tab separated file."
  }
  output {
    File out_stdout = stdout()
    File out_output_tab_separated = "${in_output_tab_separated}"
  }
}