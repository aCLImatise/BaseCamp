version 1.0

task SliceFastaGff {
  input {
    String? type
    String slice_fast_a
    File fast_a_file
    File gff_file
  }
  command <<<
    slice_fasta_gff \
      ~{slice_fast_a} \
      ~{fast_a_file} \
      ~{gff_file} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fsa:1.15.9--h8b12597_1"
  }
  parameter_meta {
    type: "only look at features of particular type"
    slice_fast_a: ""
    fast_a_file: ""
    gff_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}