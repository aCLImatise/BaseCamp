version 1.0

task SeqkitTranslate {
  input {
    Boolean? allow_unknown_codon
    Boolean? clean
    String? frame
    Boolean? in_it_codon_as_m
    Int? list_transl_table
    Int? list_transl_table_with_amb_codons
    Int? transl_table
    Boolean? trim
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
    seqkit translate \
      ~{flags} \
      ~{true="--allow-unknown-codon" false="" allow_unknown_codon} \
      ~{true="--clean" false="" clean} \
      ~{if defined(frame) then ("--frame " +  '"' + frame + '"') else ""} \
      ~{true="--init-codon-as-M" false="" in_it_codon_as_m} \
      ~{if defined(list_transl_table) then ("--list-transl-table " +  '"' + list_transl_table + '"') else ""} \
      ~{if defined(list_transl_table_with_amb_codons) then ("--list-transl-table-with-amb-codons " +  '"' + list_transl_table_with_amb_codons + '"') else ""} \
      ~{if defined(transl_table) then ("--transl-table " +  '"' + transl_table + '"') else ""} \
      ~{true="--trim" false="" trim} \
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
    allow_unknown_codon: "translate unknown code to 'X'. And you may not use flag --trim which removes 'X'"
    clean: "change all STOP codon positions from the '*' character to 'X' (an unknown residue)"
    frame: "frame(s) to translate, available value: 1, 2, 3, -1, -2, -3, and 6 for all six frames (default [1])"
    in_it_codon_as_m: "translate initial codon at beginning to 'M'"
    list_transl_table: "show details of translate table N, 0 for all (default -1)"
    list_transl_table_with_amb_codons: "show details of translate table N (including ambigugous codons), 0 for all.  (default -1)"
    transl_table: "translate table/genetic code, type 'seqkit translate --help' for more details (default 1)"
    trim: "remove all 'X' and '*' characters from the right end of the translation"
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