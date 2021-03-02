version 1.0

task Anviscriptgenpseudopairedreadsfromfastq {
  input {
    File? output_file_prefix
  }
  command <<<
    anvi_script_gen_pseudo_paired_reads_from_fastq \
      ~{if defined(output_file_prefix) then ("--output-file-prefix " +  '"' + output_file_prefix + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    output_file_prefix: "If you want final FASTQs with the format\\nmyfastq_1.fastq and myfastq_2.fastq, then this\\nparameter should be set to myfastq (default: None)"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_prefix = "${in_output_file_prefix}"
  }
}