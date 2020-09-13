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
      ~{if (enable_indexing_frames) then "-f" else ""} \
      ~{if (reference_type_reference) then "-r" else ""}
  >>>
  parameter_meta {
    enable_indexing_frames: "Enable indexing all frames in nucleotide references"
    reference_type_reference: "<#>  Reference type:\\n1: Reference contains nucleotide sequences (requires corresponding .gff annotation)\\n2: Reference contains nucleotide sequences (coding only, eg curated transcriptome)\\n3: Reference contains protein sequences (UniProt or other source)\\n4: Development tests"
    reference_dot_fast_a: ""
    annotation_dot_gff: ""
  }
  output {
    File out_stdout = stdout()
  }
}