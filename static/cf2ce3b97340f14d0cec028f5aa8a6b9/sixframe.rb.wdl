version 1.0

task Sixframerb {
  input {
    File? explicitly_named_output
    Boolean? peptide_shaker
    Boolean? coords
    Boolean? strip_header
    Int? min_len
    Boolean? gff_three
    String genome_dot_fast_a
  }
  command <<<
    sixframe_rb \
      ~{genome_dot_fast_a} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""} \
      ~{if (peptide_shaker) then "--peptideshaker" else ""} \
      ~{if (coords) then "--coords" else ""} \
      ~{if (strip_header) then "--strip-header" else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if (gff_three) then "--gff3" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    explicitly_named_output: "An explicitly named output file."
    peptide_shaker: "Format fasta output for peptideshaker compatibility [false]"
    coords: "Write genomic coordinates in the fasta header [false]"
    strip_header: "Dont write sequence definition [true]"
    min_len: "Minimum ORF length to keep [20]"
    gff_three: "Output gff3 instead of fasta [false]"
    genome_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
    File out_explicitly_named_output = "${in_explicitly_named_output}"
  }
}