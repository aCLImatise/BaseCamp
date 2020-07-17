version 1.0

task SeqkitSeq {
  input {
    Boolean? color
    Boolean? complement
    Boolean? dna_two_rna
    String? gap_letters
    Boolean? lower_case
    Int? max_len
    Float? max_qual
    Int? min_len
    Float? min_qual
    Boolean? name
    Boolean? only_id
    Boolean? qual
    Int? qual_ascii_base
    Boolean? remove_gaps
    Boolean? reverse
    Boolean? rna_two_dna
    Boolean? seq
    Boolean? upper_case
    Boolean? validate_seq
    Int? validate_seq_length
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
    seqkit seq \
      ~{flags} \
      ~{true="--color" false="" color} \
      ~{true="--complement" false="" complement} \
      ~{true="--dna2rna" false="" dna_two_rna} \
      ~{if defined(gap_letters) then ("--gap-letters " +  '"' + gap_letters + '"') else ""} \
      ~{true="--lower-case" false="" lower_case} \
      ~{if defined(max_len) then ("--max-len " +  '"' + max_len + '"') else ""} \
      ~{if defined(max_qual) then ("--max-qual " +  '"' + max_qual + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(min_qual) then ("--min-qual " +  '"' + min_qual + '"') else ""} \
      ~{true="--name" false="" name} \
      ~{true="--only-id" false="" only_id} \
      ~{true="--qual" false="" qual} \
      ~{if defined(qual_ascii_base) then ("--qual-ascii-base " +  '"' + qual_ascii_base + '"') else ""} \
      ~{true="--remove-gaps" false="" remove_gaps} \
      ~{true="--reverse" false="" reverse} \
      ~{true="--rna2dna" false="" rna_two_dna} \
      ~{true="--seq" false="" seq} \
      ~{true="--upper-case" false="" upper_case} \
      ~{true="--validate-seq" false="" validate_seq} \
      ~{if defined(validate_seq_length) then ("--validate-seq-length " +  '"' + validate_seq_length + '"') else ""} \
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
    color: "colorize sequences - to be piped into \"less -R\""
    complement: "complement sequence, flag '-v' is recommended to switch on"
    dna_two_rna: "DNA to RNA"
    gap_letters: "gap letters (default \"- \t.\")"
    lower_case: "print sequences in lower case"
    max_len: "only print sequences shorter than the maximum length (-1 for no limit) (default -1)"
    max_qual: "only print sequences with average quality less than this limit (-1 for no limit) (default -1)"
    min_len: "only print sequences longer than the minimum length (-1 for no limit) (default -1)"
    min_qual: "only print sequences with average quality qreater or equal than this limit (-1 for no limit) (default -1)"
    name: "only print names"
    only_id: "print ID instead of full head"
    qual: "only print qualities"
    qual_ascii_base: "ASCII BASE, 33 for Phred+33 (default 33)"
    remove_gaps: "remove gaps"
    reverse: "reverse sequence"
    rna_two_dna: "RNA to DNA"
    seq: "only print sequences"
    upper_case: "print sequences in upper case"
    validate_seq: "validate bases according to the alphabet"
    validate_seq_length: "length of sequence to validate (0 for whole seq) (default 10000)"
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