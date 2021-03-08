version 1.0

task Normalisationpy {
  input {
    Int? num_reads
    Boolean? debug
    File? input_biom
    File? input_fast_a
    String? output_biom
    String? output_fast_a
    File? summary_file
    File? log_file
    Boolean? v
  }
  command <<<
    normalisation_py \
      ~{if defined(num_reads) then ("--num-reads " +  '"' + num_reads + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(input_biom) then ("--input-biom " +  '"' + input_biom + '"') else ""} \
      ~{if defined(input_fast_a) then ("--input-fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(output_biom) then ("--output-biom " +  '"' + output_biom + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if defined(summary_file) then ("--summary-file " +  '"' + summary_file + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/frogs:3.2.1--py37_0"
  }
  parameter_meta {
    num_reads: "Number of reads per sample after normalisation"
    debug: "Keep temporary files to debug program."
    input_biom: "Abundances file to normalize (format: BIOM)."
    input_fast_a: "Sequences file to normalize (format: FASTA)."
    output_biom: "Normalized abundances (format: BIOM). [Default:\\nnormalisation_abundance.biom]"
    output_fast_a: "Normalized sequences (format: FASTA). [Default:\\nnormalisation.fasta]"
    summary_file: "The HTML file containing the graphs. [Default:\\nnormalisation.html]"
    log_file: "The list of commands executed.\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}