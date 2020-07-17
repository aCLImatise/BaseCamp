version 1.0

task SliceFastaGff {
  input {
    String? type
    String slice_fast_a
    String fast_a_file
    String gff_file
  }
  command <<<
    slice_fasta_gff \
      ~{slice_fast_a} \
      ~{fast_a_file} \
      ~{gff_file} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""}
  >>>
  parameter_meta {
    type: "only look at features of particular type"
    slice_fast_a: ""
    fast_a_file: ""
    gff_file: ""
  }
}