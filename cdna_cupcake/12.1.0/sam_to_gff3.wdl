version 1.0

task SamToGff3.py {
  input {
    String? input_fast_a
    String? source
    String convert
    String sam
    String to
    String gff_three
    String format
    String using
    String bc_bio
    String gff
  }
  command <<<
    sam_to_gff3.py \
      ~{convert} \
      ~{sam} \
      ~{to} \
      ~{gff_three} \
      ~{format} \
      ~{using} \
      ~{bc_bio} \
      ~{gff} \
      ~{if defined(input_fast_a) then ("--input_fasta " +  '"' + input_fast_a + '"') else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""}
  >>>
  parameter_meta {
    input_fast_a: "(Optional) input fasta. If given, coverage will be calculated."
    source: "source name (ex: hg38, mm10)"
    convert: ""
    sam: ""
    to: ""
    gff_three: ""
    format: ""
    using: ""
    bc_bio: ""
    gff: ""
  }
}