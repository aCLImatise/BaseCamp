version 1.0

task FumaGencodeGtfToBed {
  input {
    String? output_filename_stdout
    Boolean? v
    String gene_code_gtf_file
  }
  command <<<
    fuma-gencode-gtf-to-bed \
      ~{gene_code_gtf_file} \
      ~{if defined(output_filename_stdout) then ("--output " +  '"' + output_filename_stdout + '"') else ""} \
      ~{true="-V" false="" v}
  >>>
  parameter_meta {
    output_filename_stdout: "output filename; '-' for stdout"
    v: ""
    gene_code_gtf_file: "Input GTF file, e.g. 'gencode_gtf_file.gtf' - not as .gz"
  }
}