version 1.0

task PaladinIndex {
  input {
    Boolean? enable_indexing_frames
    Boolean? reference_type_reference
    String reference_dot_fast_a
    String? annotation_dot_gff
  }
  command <<<
    paladin index \
      ~{reference_dot_fast_a} \
      ~{annotation_dot_gff} \
      ~{true="-f" false="" enable_indexing_frames} \
      ~{true="-r" false="" reference_type_reference}
  >>>
  parameter_meta {
    enable_indexing_frames: "Enable indexing all frames in nucleotide references"
    reference_type_reference: "<#>  Reference type: 1: Reference contains nucleotide sequences (requires corresponding .gff annotation) 2: Reference contains nucleotide sequences (coding only, eg curated transcriptome) 3: Reference contains protein sequences (UniProt or other source) 4: Development tests"
    reference_dot_fast_a: ""
    annotation_dot_gff: ""
  }
}