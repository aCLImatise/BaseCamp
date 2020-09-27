version 1.0

task SeqanTcoffee {
  input {
    Boolean? version_check
    File? seq
    String? alphabet
    File? outfile
    String? method
    File? libraries
    Int? pairwise_alignment
    Int? band_width
    Int? gop
    Int? gex
    Int? matrix
    Int? msc
    Int? mmsc
    File? use_tree
    Int? build
    File? in_file
  }
  command <<<
    seqan_tcoffee \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{if defined(seq) then ("--seq " +  '"' + seq + '"') else ""} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(libraries) then ("--libraries " +  '"' + libraries + '"') else ""} \
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
    version_check: "Turn this option off to disable version update notifications of the\\napplication. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\\nDefault: 1."
    seq: "Name of multi-fasta input file. Valid filetypes are: .frn, .fna,\\n.ffn, .fasta, .faa, and .fa."
    alphabet: "The used sequence alphabet. One of protein, dna, rna, and iupac.\\nDefault: protein."
    outfile: "Name of the output file. Valid filetypes are: .msf, .frn, .fna,\\n.ffn, .fasta, .faa, and .fa. Default: out.fasta."
    method: "of STRING's\\nDefines the generation method for matches. To select multiple\\ngeneration methods recall this option with different arguments. One\\nof global, local, overlap, and lcs. Default: global and local."
    libraries: "of INPUT_FILE's\\nName of match file. To select multiple files recall this option with\\ndifferent arguments. Valid filetypes are: .mums, .lib, .blast, and\\n.aln."
    pairwise_alignment: "Pairwise alignment method. Default: unbanded for usual alignments (<\\n50 sequences), banded for deep alignments (>= 50 sequences) One of\\nunbanded and banded."
    band_width: "Band width. This option automatically select banded pairwise\\nalignment (see pa for details) In range [2..inf]. Default: 60."
    gop: "gap open penalty Default: -13."
    gex: "gap extension penalty Default: -1."
    matrix: "score matrix Default: Blosum62."
    msc: "match score Default: 5."
    mmsc: "mismatch penalty Default: -4."
    use_tree: "Name of the file containing the Newick Guide Tree."
    build: "Method to build the tree. Following methods are provided:\\nNeighbor-Joining (nj), UPGMA single linkage (min), UPGMA complete\\nlinkage (max), UPGMA average linkage (avg), UPGMA weighted average\\nlinkage (wavg). Neighbor-Joining creates an unrooted tree, which we\\nroot at the last joined pair. One of nj, min, max, avg, and wavg.\\nDefault: nj."
    in_file: "Name of the alignment file <FASTA FILE> Valid filetypes are: .frn,\\n.fna, .ffn, .fasta, .faa, and .fa."
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}