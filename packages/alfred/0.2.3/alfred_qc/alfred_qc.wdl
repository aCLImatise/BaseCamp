version 1.0

task AlfredQc {
  input {
    Boolean? arg_reference_fasta
    Boolean? arg_bed_file
    Boolean? arg_sample_name
    File? arg_gzipped_file
    File? arg_gzipped_tsv
    Boolean? evaluate_secondary_alignments
    Boolean? evaluate_supplementary_alignments
    Boolean? arg_only_analyze
    Boolean? _ignore_readgroups
    String aligned_dot_bam
  }
  command <<<
    alfred qc \
      ~{aligned_dot_bam} \
      ~{if (arg_reference_fasta) then "-r" else ""} \
      ~{if (arg_bed_file) then "-b" else ""} \
      ~{if (arg_sample_name) then "-a" else ""} \
      ~{if (arg_gzipped_file) then "-j" else ""} \
      ~{if (arg_gzipped_tsv) then "-o" else ""} \
      ~{if (evaluate_secondary_alignments) then "-s" else ""} \
      ~{if (evaluate_supplementary_alignments) then "-u" else ""} \
      ~{if (arg_only_analyze) then "-g" else ""} \
      ~{if (_ignore_readgroups) then "-i" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/alfred:0.2.3--hf3ca161_0"
  }
  parameter_meta {
    arg_reference_fasta: "[ --reference ] arg   reference fasta file (required)"
    arg_bed_file: "[ --bed ] arg         bed file with target regions (optional)"
    arg_sample_name: "[ --name ] arg        sample name (optional, otherwise SM tag is used)"
    arg_gzipped_file: "[ --jsonout ] arg     gzipped json output file"
    arg_gzipped_tsv: "[ --outfile ] arg     gzipped tsv output file"
    evaluate_secondary_alignments: "[ --secondary ]       evaluate secondary alignments"
    evaluate_supplementary_alignments: "[ --supplementary ]   evaluate supplementary alignments"
    arg_only_analyze: "[ --rg ] arg          only analyze this read group (optional)"
    _ignore_readgroups: "[ --ignore ]          ignore read-groups"
    aligned_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
    File out_arg_gzipped_file = "${in_arg_gzipped_file}"
    File out_arg_gzipped_tsv = "${in_arg_gzipped_tsv}"
  }
}