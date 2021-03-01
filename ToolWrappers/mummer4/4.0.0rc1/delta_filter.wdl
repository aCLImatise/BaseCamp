version 1.0

task Deltafilter {
  input {
    Boolean? _alignment_allowing
    Boolean? _global_alignment
    Float? set_alignment_identity
    Int? set_length_default
    Boolean? manytomany_alignment_allowing
    Boolean? maps_position_overlaps
    Boolean? maps_position_query
    Float? set_alignment_uniqueness
    Float? set_maximum_alignment
    String delta_file
  }
  command <<<
    delta_filter \
      ~{delta_file} \
      ~{if (_alignment_allowing) then "-1" else ""} \
      ~{if (_global_alignment) then "-g" else ""} \
      ~{if defined(set_alignment_identity) then ("-i " +  '"' + set_alignment_identity + '"') else ""} \
      ~{if defined(set_length_default) then ("-l " +  '"' + set_length_default + '"') else ""} \
      ~{if (manytomany_alignment_allowing) then "-m" else ""} \
      ~{if (maps_position_overlaps) then "-q" else ""} \
      ~{if (maps_position_query) then "-r" else ""} \
      ~{if defined(set_alignment_uniqueness) then ("-u " +  '"' + set_alignment_uniqueness + '"') else ""} \
      ~{if defined(set_maximum_alignment) then ("-o " +  '"' + set_maximum_alignment + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mummer4:4.0.0rc1--pl526he1b5a44_0"
  }
  parameter_meta {
    _alignment_allowing: "1-to-1 alignment allowing for rearrangements\\n(intersection of -r and -q alignments)"
    _global_alignment: "1-to-1 global alignment not allowing rearrangements"
    set_alignment_identity: "Set the minimum alignment identity [0, 100], default 0"
    set_length_default: "Set the minimum alignment length, default 0"
    manytomany_alignment_allowing: "Many-to-many alignment allowing for rearrangements\\n(union of -r and -q alignments)"
    maps_position_overlaps: "Maps each position of each query to its best hit in\\nthe reference, allowing for reference overlaps"
    maps_position_query: "Maps each position of each reference to its best hit\\nin the query, allowing for query overlaps"
    set_alignment_uniqueness: "Set the minimum alignment uniqueness, i.e. percent of\\nthe alignment matching to unique reference AND query\\nsequence [0, 100], default 0"
    set_maximum_alignment: "Set the maximum alignment overlap for -r and -q options\\nas a percent of the alignment length [0, 100], default 100"
    delta_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}