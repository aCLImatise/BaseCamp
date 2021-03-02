version 1.0

task PoreCAlignmentsAssignfragments {
  input {
    Int? mapping_quality_cut_off
    Int? min_overlap_length
    Float? containment_cut_off
    String align_table
  }
  command <<<
    pore_c alignments assign_fragments \
      ~{align_table} \
      ~{if defined(mapping_quality_cut_off) then ("--mapping_quality_cutoff " +  '"' + mapping_quality_cut_off + '"') else ""} \
      ~{if defined(min_overlap_length) then ("--min_overlap_length " +  '"' + min_overlap_length + '"') else ""} \
      ~{if defined(containment_cut_off) then ("--containment_cutoff " +  '"' + containment_cut_off + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pore-c:0.3.0--py_0"
  }
  parameter_meta {
    mapping_quality_cut_off: "Minimum mapping quality for an alignment to\\nbe considered  [default: 1]"
    min_overlap_length: "Minimum overlap in base pairs between an\\nalignment and restriction fragment\\n[default: 10]"
    containment_cut_off: "Minimum percentage of a fragment included in\\nan overlap for that fragment to be\\nconsidered 'contained' within an alignment\\n[default: 99.0]"
    align_table: ""
  }
  output {
    File out_stdout = stdout()
  }
}