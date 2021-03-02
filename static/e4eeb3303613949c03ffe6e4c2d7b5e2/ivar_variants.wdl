version 1.0

task IvarVariants {
  input {
    Boolean? minimum_quality_score
    Boolean? minimum_frequency_threshold
    Boolean? minimum_read_depth
    Boolean? reference_file_used
    Boolean? gff_file_gff
    File? required_prefix_output
    Boolean? reference
    Int? var_7
    Boolean? b
    Int? d
    Boolean? a
    Boolean? aa
    String sam_tools
    String m_pile_up
  }
  command <<<
    ivar variants \
      ~{sam_tools} \
      ~{m_pile_up} \
      ~{if (minimum_quality_score) then "-q" else ""} \
      ~{if (minimum_frequency_threshold) then "-t" else ""} \
      ~{if (minimum_read_depth) then "-m" else ""} \
      ~{if (reference_file_used) then "-r" else ""} \
      ~{if (gff_file_gff) then "-g" else ""} \
      ~{if (required_prefix_output) then "-p" else ""} \
      ~{if (reference) then "--reference" else ""} \
      ~{if defined(var_7) then ("-Q " +  '"' + var_7 + '"') else ""} \
      ~{if (b) then "-B" else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if (a) then "-A" else ""} \
      ~{if (aa) then "-aa" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ivar:1.3.1--h089eab3_0"
  }
  parameter_meta {
    minimum_quality_score: "Minimum quality score threshold to count base (Default: 20)"
    minimum_frequency_threshold: "Minimum frequency threshold(0 - 1) to call variants (Default: 0.03)"
    minimum_read_depth: "Minimum read depth to call variants (Default: 0)"
    reference_file_used: "Reference file used for alignment. This is used to translate the nucleotide sequences and identify intra host single nucleotide variants"
    gff_file_gff: "A GFF file in the GFF3 format can be supplied to specify coordinates of open reading frames (ORFs). In absence of GFF file, amino acid translation will not be done."
    required_prefix_output: "(Required) Prefix for the output tsv variant file"
    reference: ""
    var_7: ""
    b: ""
    d: ""
    a: ""
    aa: ""
    sam_tools: ""
    m_pile_up: ""
  }
  output {
    File out_stdout = stdout()
    File out_required_prefix_output = "${in_required_prefix_output}"
  }
}