version 1.0

task SeqkitSubseq {
  input {
    Boolean? c_g_t
    String? bed
    String? chr
    Int? down_stream
    String? feature
    String? gtf
    String? gtf_tag
    Boolean? only_flank
    String? region
    Int? up_stream
    Int? alphabet_guess_seq_length
    Boolean? id_ncbi
    String? id_regexp
    String? in_file_list
    Int? line_width
    String? out_file
    Boolean? quiet
    String? seq_type
    Int? threads
    String? flags
  }
  command <<<
    seqkit subseq \
      ~{flags} \
      ~{true="-12" false="" c_g_t} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(chr) then ("--chr " +  '"' + chr + '"') else ""} \
      ~{if defined(down_stream) then ("--down-stream " +  '"' + down_stream + '"') else ""} \
      ~{if defined(feature) then ("--feature " +  '"' + feature + '"') else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""} \
      ~{if defined(gtf_tag) then ("--gtf-tag " +  '"' + gtf_tag + '"') else ""} \
      ~{true="--only-flank" false="" only_flank} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(up_stream) then ("--up-stream " +  '"' + up_stream + '"') else ""} \
      ~{if defined(alphabet_guess_seq_length) then ("--alphabet-guess-seq-length " +  '"' + alphabet_guess_seq_length + '"') else ""} \
      ~{true="--id-ncbi" false="" id_ncbi} \
      ~{if defined(id_regexp) then ("--id-regexp " +  '"' + id_regexp + '"') else ""} \
      ~{if defined(in_file_list) then ("--infile-list " +  '"' + in_file_list + '"') else ""} \
      ~{if defined(line_width) then ("--line-width " +  '"' + line_width + '"') else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(seq_type) then ("--seq-type " +  '"' + seq_type + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    c_g_t: ":-1    A C G T N a c g t n"
    bed: "by tab-delimited BED file"
    chr: "select limited sequence with sequence IDs when using --gtf or --bed (multiple value supported, case ignored)"
    down_stream: "down stream length"
    feature: "select limited feature types (multiple value supported, case ignored, only works with GTF)"
    gtf: "by GTF (version 2.2) file"
    gtf_tag: "output this tag as sequence comment (default \"gene_id\")"
    only_flank: "only return up/down stream sequence"
    region: "by region. e.g 1:12 for first 12 bases, -12:-1 for last 12 bases, 13:-1 for cutting first 12 bases. type \"seqkit subseq -h\" for more examples"
    up_stream: "up stream length"
    alphabet_guess_seq_length: "length of sequence prefix of the first FASTA record based on which seqkit guesses the sequence type (0 for whole seq) (default 10000)"
    id_ncbi: "FASTA head is NCBI-style, e.g. >gi|110645304|ref|NC_002516.2| Pseud..."
    id_regexp: "regular expression for parsing ID (default \"^(\\S+)\\s?\")"
    in_file_list: "file of input files list (one file per line), if given, they are appended to files from cli arguments"
    line_width: "line width when outputing FASTA format (0 for no wrap) (default 60)"
    out_file: "out file (\"-\" for stdout, suffix .gz for gzipped out) (default \"-\")"
    quiet: "be quiet and do not show extra information"
    seq_type: "sequence type (dna|rna|protein|unlimit|auto) (for auto, it automatically detect by the first sequence) (default \"auto\")"
    threads: "number of CPUs. (default value: 1 for single-CPU PC, 2 for others) (default 2)"
    flags: ""
  }
}