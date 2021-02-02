version 1.0

task TreebestFilter {
  input {
    Boolean? nucleotide_alignment
    Boolean? collapse_alternative_splicing
    Boolean? apply_alignment_mask
    Boolean? mask_lowscoring_segments
    Int? quality_cutoff
    String alignment
  }
  command <<<
    treebest filter \
      ~{alignment} \
      ~{if (nucleotide_alignment) then "-n" else ""} \
      ~{if (collapse_alternative_splicing) then "-g" else ""} \
      ~{if (apply_alignment_mask) then "-M" else ""} \
      ~{if (mask_lowscoring_segments) then "-N" else ""} \
      ~{if defined(quality_cutoff) then ("-F " +  '"' + quality_cutoff + '"') else ""}
  >>>
  parameter_meta {
    nucleotide_alignment: "nucleotide alignment"
    collapse_alternative_splicing: "collapse alternative splicing"
    apply_alignment_mask: "do not apply alignment mask"
    mask_lowscoring_segments: "do not mask low-scoring segments"
    quality_cutoff: "quality cut-off [15]"
    alignment: ""
  }
  output {
    File out_stdout = stdout()
  }
}