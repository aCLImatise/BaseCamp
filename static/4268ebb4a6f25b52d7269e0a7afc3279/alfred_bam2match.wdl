version 1.0

task AlfredBam2match {
  input {
    Boolean? arg_min_mapping
    Boolean? arg_reference_fasta
    File? arg_gzipped_file
    String contig_dot_bam
  }
  command <<<
    alfred bam2match \
      ~{contig_dot_bam} \
      ~{if (arg_min_mapping) then "-m" else ""} \
      ~{if (arg_reference_fasta) then "-r" else ""} \
      ~{if (arg_gzipped_file) then "-o" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/alfred:0.2.3--hf3ca161_0"
  }
  parameter_meta {
    arg_min_mapping: "[ --map-qual ] arg (=0)          min. mapping quality"
    arg_reference_fasta: "[ --reference ] arg              reference fasta file"
    arg_gzipped_file: "[ --outfile ] arg (=\\\"match.gz\\\")  gzipped output file"
    contig_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_gzipped_file = "${in_arg_gzipped_file}"
  }
}