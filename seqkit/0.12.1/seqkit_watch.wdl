version 1.0

task SeqkitWatch {
  input {
    Int? bins
    Int? delay
    Boolean? dump
    String? fields
    String? img
    Boolean? list_fields
    Boolean? log
    Boolean? pass
    Int? print_freq
    Int? qual_ascii_base
    Boolean? quiet_mode
    Boolean? reset
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
    seqkit watch \
      ~{flags} \
      ~{if defined(bins) then ("--bins " +  '"' + bins + '"') else ""} \
      ~{if defined(delay) then ("--delay " +  '"' + delay + '"') else ""} \
      ~{true="--dump" false="" dump} \
      ~{if defined(fields) then ("--fields " +  '"' + fields + '"') else ""} \
      ~{if defined(img) then ("--img " +  '"' + img + '"') else ""} \
      ~{true="--list-fields" false="" list_fields} \
      ~{true="--log" false="" log} \
      ~{true="--pass" false="" pass} \
      ~{if defined(print_freq) then ("--print-freq " +  '"' + print_freq + '"') else ""} \
      ~{if defined(qual_ascii_base) then ("--qual-ascii-base " +  '"' + qual_ascii_base + '"') else ""} \
      ~{true="--quiet-mode" false="" quiet_mode} \
      ~{true="--reset" false="" reset} \
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
    bins: "number of histogram bins (default -1)"
    delay: "sleep this many seconds after online plotting (default 1)"
    dump: "print histogram data to stderr instead of plotting"
    fields: "target fields (default \"ReadLen\")"
    img: "save histogram to this PDF/image file"
    list_fields: "print out a list of available fields"
    log: "log10(x+1) transform numeric values"
    pass: "pass through mode (write input to stdout)"
    print_freq: "print/report after this many records (-1 for print after EOF) (default -1)"
    qual_ascii_base: "ASCII BASE, 33 for Phred+33 (default 33)"
    quiet_mode: "supress all plotting to stderr"
    reset: "reset histogram after every report"
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