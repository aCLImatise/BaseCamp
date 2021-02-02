version 1.0

task SeqkitFx2tab {
  input {
    Boolean? alphabet
    Boolean? avg_qual
    String? base_content
    Boolean? case_sensitive
    Boolean? gc
    Boolean? gc_skew
    Boolean? header_line
    Boolean? length
    Boolean? name
    Boolean? only_id
    Int? qual_ascii_base
    Boolean? seq_hash
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
    seqkit fx2tab \
      ~{if (alphabet) then "--alphabet" else ""} \
      ~{if (avg_qual) then "--avg-qual" else ""} \
      ~{if defined(base_content) then ("--base-content " +  '"' + base_content + '"') else ""} \
      ~{if (case_sensitive) then "--case-sensitive" else ""} \
      ~{if (gc) then "--gc" else ""} \
      ~{if (gc_skew) then "--gc-skew" else ""} \
      ~{if (header_line) then "--header-line" else ""} \
      ~{if (length) then "--length" else ""} \
      ~{if (name) then "--name" else ""} \
      ~{if (only_id) then "--only-id" else ""} \
      ~{if defined(qual_ascii_base) then ("--qual-ascii-base " +  '"' + qual_ascii_base + '"') else ""} \
      ~{if (seq_hash) then "--seq-hash" else ""} \
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
    alphabet: "print alphabet letters"
    avg_qual: "print average quality of a read"
    base_content: "print base content. (case ignored, multiple values supported) e.g. -B AT -B N"
    case_sensitive: "calculate case sensitive base content"
    gc: "print GC content"
    gc_skew: "print GC-Skew"
    header_line: "print header line"
    length: "print sequence length"
    name: "only print names (no sequences and qualities)"
    only_id: "print ID instead of full head"
    qual_ascii_base: "ASCII BASE, 33 for Phred+33 (default 33)"
    seq_hash: "print hash of sequence (case sensitive)"
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