version 1.0

task SeqanTcoffee {
  input {
    Boolean? version_check
    String? seq
    String? alphabet
    String? outfile
    String? pairwise_alignment
    Int? band_width
    Int? gop
    Int? gex
    String? matrix
    Int? msc
    Int? mmsc
    String? use_tree
    String? build
    String? in_file
  }
  command <<<
    seqan_tcoffee \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{if defined(seq) then ("--seq " +  '"' + seq + '"') else ""} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(pairwise_alignment) then ("--pairwise-alignment " +  '"' + pairwise_alignment + '"') else ""} \
      ~{if defined(band_width) then ("--band-width " +  '"' + band_width + '"') else ""} \
      ~{if defined(gop) then ("--gop " +  '"' + gop + '"') else ""} \
      ~{if defined(gex) then ("--gex " +  '"' + gex + '"') else ""} \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(msc) then ("--msc " +  '"' + msc + '"') else ""} \
      ~{if defined(mmsc) then ("--mmsc " +  '"' + mmsc + '"') else ""} \
      ~{if defined(use_tree) then ("--usetree " +  '"' + use_tree + '"') else ""} \
      ~{if defined(build) then ("--build " +  '"' + build + '"') else ""} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""}
  >>>
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the application. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1."
    seq: "Name of multi-fasta input file. Valid filetypes are: .frn, .fna, .ffn, .fasta, .faa, and .fa."
    alphabet: "The used sequence alphabet. One of protein, dna, rna, and iupac. Default: protein."
    outfile: "Name of the output file. Valid filetypes are: .msf, .frn, .fna, .ffn, .fasta, .faa, and .fa. Default: out.fasta."
    pairwise_alignment: "Pairwise alignment method. Default: unbanded for usual alignments (< 50 sequences), banded for deep alignments (>= 50 sequences) One of unbanded and banded."
    band_width: "Band width. This option automatically select banded pairwise alignment (see pa for details) In range [2..inf]. Default: 60."
    gop: "gap open penalty Default: -13."
    gex: "gap extension penalty Default: -1."
    matrix: "score matrix Default: Blosum62."
    msc: "match score Default: 5."
    mmsc: "mismatch penalty Default: -4."
    use_tree: "Name of the file containing the Newick Guide Tree."
    build: "Method to build the tree. Following methods are provided: Neighbor-Joining (nj), UPGMA single linkage (min), UPGMA complete linkage (max), UPGMA average linkage (avg), UPGMA weighted average linkage (wavg). Neighbor-Joining creates an unrooted tree, which we root at the last joined pair. One of nj, min, max, avg, and wavg. Default: nj."
    in_file: "Name of the alignment file <FASTA FILE> Valid filetypes are: .frn, .fna, .ffn, .fasta, .faa, and .fa."
  }
}