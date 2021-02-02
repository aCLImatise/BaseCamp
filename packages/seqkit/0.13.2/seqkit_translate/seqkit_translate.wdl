version 1.0

task SeqkitTranslate {
  input {
    Boolean? allow_unknown_codon
    Boolean? clean
    Int? frame
    Boolean? in_it_codon_as_m
    Int? list_transl_table
    Int? list_transl_table_with_amb_codons
    Int? transl_table
    Boolean? trim
    Int? alphabet_guess_seq_length
    Boolean? id_ncbi
    String? id_regexp
    File? in_file_list
    Int? line_width
    File? out_file
    Boolean? quiet
    String? seq_type
    Int? threads
  }
  command <<<
    seqkit translate \
      ~{if (allow_unknown_codon) then "--allow-unknown-codon" else ""} \
      ~{if (clean) then "--clean" else ""} \
      ~{if defined(frame) then ("--frame " +  '"' + frame + '"') else ""} \
      ~{if (in_it_codon_as_m) then "--init-codon-as-M" else ""} \
      ~{if defined(list_transl_table) then ("--list-transl-table " +  '"' + list_transl_table + '"') else ""} \
      ~{if defined(list_transl_table_with_amb_codons) then ("--list-transl-table-with-amb-codons " +  '"' + list_transl_table_with_amb_codons + '"') else ""} \
      ~{if defined(transl_table) then ("--transl-table " +  '"' + transl_table + '"') else ""} \
      ~{if (trim) then "--trim" else ""} \
      ~{if defined(alphabet_guess_seq_length) then ("--alphabet-guess-seq-length " +  '"' + alphabet_guess_seq_length + '"') else ""} \
      ~{if (id_ncbi) then "--id-ncbi" else ""} \
      ~{if defined(id_regexp) then ("--id-regexp " +  '"' + id_regexp + '"') else ""} \
      ~{if defined(in_file_list) then ("--infile-list " +  '"' + in_file_list + '"') else ""} \
      ~{if defined(line_width) then ("--line-width " +  '"' + line_width + '"') else ""} \
      ~{if defined(out_file) then ("--out-file " +  '"' + out_file + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
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
    id_regexp: "regular expression for parsing ID (default \\\"^(\\\\S+)\\\\s?\\\")"
    in_file_list: "file of input files list (one file per line), if given, they are appended to files from cli arguments"
    line_width: "line width when outputing FASTA format (0 for no wrap) (default 60)"
    out_file: "out file (\\\"-\\\" for stdout, suffix .gz for gzipped out) (default \\\"-\\\")"
    quiet: "be quiet and do not show extra information"
    seq_type: "sequence type (dna|rna|protein|unlimit|auto) (for auto, it automatically detect by the first sequence) (default \\\"auto\\\")"
    threads: "number of CPUs. (default value: 1 for single-CPU PC, 2 for others. can also set with environment variable SEQKIT_THREADS) (default 2)"
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}