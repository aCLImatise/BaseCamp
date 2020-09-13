version 1.0

task Fumagencodegtftobed {
  input {
    File? output_filename_stdout
    Boolean? v
    String gene_code_gtf_file
  }
  command <<<
    fuma_gencode_gtf_to_bed \
      ~{gene_code_gtf_file} \
      ~{if defined(output_filename_stdout) then ("--output " +  '"' + output_filename_stdout + '"') else ""} \
      ~{if (v) then "-V" else ""}
  >>>
  parameter_meta {
    output_filename_stdout: "output filename; '-' for stdout"
    v: ""
    gene_code_gtf_file: "Input GTF file, e.g. 'gencode_gtf_file.gtf' - not as\\n.gz"
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_stdout = "${in_output_filename_stdout}"
  }
}