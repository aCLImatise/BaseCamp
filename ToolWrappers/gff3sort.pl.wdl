version 1.0

task Gff3sortpl {
  input {
    Int? precise
    String? chr_order
    File? extract_fast_a
  }
  command <<<
    gff3sort_pl \
      ~{if defined(precise) then ("--precise " +  '"' + precise + '"') else ""} \
      ~{if defined(chr_order) then ("--chr_order " +  '"' + chr_order + '"') else ""} \
      ~{if defined(extract_fast_a) then ("--extract_FASTA " +  '"' + extract_fast_a + '"') else ""}
  >>>
  parameter_meta {
    precise: "in precise mode, about 2X~3X slower than the default mode."
    chr_order: "how the chromosome IDs should be sorted. Acceptable"
    extract_fast_a: "the input GFF3 file contains FASTA sequence at the"
  }
  output {
    File out_stdout = stdout()
  }
}