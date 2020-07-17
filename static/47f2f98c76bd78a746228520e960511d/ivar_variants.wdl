version 1.0

task IvarVariants {
  input {
    Boolean? minimum_quality_score
    Boolean? minimum_frequency_threshold
    Boolean? minimum_read_depth
    Boolean? reference_file_used
    Boolean? gff_file_gff
    Boolean? required_prefix_output
    Boolean? aa
    Boolean? a
    String? d
    Boolean? b
    String? var_10
    Boolean? reference
    String sam_tools
    String m_pile_up
  }
  command <<<
    ivar variants \
      ~{sam_tools} \
      ~{m_pile_up} \
      ~{true="-q" false="" minimum_quality_score} \
      ~{true="-t" false="" minimum_frequency_threshold} \
      ~{true="-m" false="" minimum_read_depth} \
      ~{true="-r" false="" reference_file_used} \
      ~{true="-g" false="" gff_file_gff} \
      ~{true="-p" false="" required_prefix_output} \
      ~{true="-aa" false="" aa} \
      ~{true="-A" false="" a} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{true="-B" false="" b} \
      ~{if defined(var_10) then ("-Q " +  '"' + var_10 + '"') else ""} \
      ~{true="--reference" false="" reference}
  >>>
  parameter_meta {
    minimum_quality_score: "Minimum quality score threshold to count base (Default: 20)"
    minimum_frequency_threshold: "Minimum frequency threshold(0 - 1) to call variants (Default: 0.03)"
    minimum_read_depth: "Minimum read depth to call variants (Default: 0)"
    reference_file_used: "Reference file used for alignment. This is used to translate the nucleotide sequences and identify intra host single nucleotide variants"
    gff_file_gff: "A GFF file in the GFF3 format can be supplied to specify coordinates of open reading frames (ORFs). In absence of GFF file, amino acid translation will not be done."
    required_prefix_output: "(Required) Prefix for the output tsv variant file"
    aa: ""
    a: ""
    d: ""
    b: ""
    var_10: ""
    reference: ""
    sam_tools: ""
    m_pile_up: ""
  }
}