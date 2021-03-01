version 1.0

task SeqkitFish {
  input {
    Boolean? all
    Int? aln_params
    Boolean? invert
    Float? min_qual
    File? out_bam
    Boolean? pass
    Boolean? print_aln
    Boolean? print_desc
    String? query_fast_x
    String? query_sequences
    Int? ranges
    Boolean? stranded
    Boolean? validate_seq
    Int? validate_seq_length
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
    seqkit fish \
      ~{if (all) then "--all" else ""} \
      ~{if defined(aln_params) then ("--aln-params " +  '"' + aln_params + '"') else ""} \
      ~{if (invert) then "--invert" else ""} \
      ~{if defined(min_qual) then ("--min-qual " +  '"' + min_qual + '"') else ""} \
      ~{if defined(out_bam) then ("--out-bam " +  '"' + out_bam + '"') else ""} \
      ~{if (pass) then "--pass" else ""} \
      ~{if (print_aln) then "--print-aln" else ""} \
      ~{if (print_desc) then "--print-desc" else ""} \
      ~{if defined(query_fast_x) then ("--query-fastx " +  '"' + query_fast_x + '"') else ""} \
      ~{if defined(query_sequences) then ("--query-sequences " +  '"' + query_sequences + '"') else ""} \
      ~{if defined(ranges) then ("--ranges " +  '"' + ranges + '"') else ""} \
      ~{if (stranded) then "--stranded" else ""} \
      ~{if (validate_seq) then "--validate-seq" else ""} \
      ~{if defined(validate_seq_length) then ("--validate-seq-length " +  '"' + validate_seq_length + '"') else ""} \
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    all: "search all"
    aln_params: "alignment parameters in format \\\"<match>,<mismatch>,<gap_open>,<gap_extend>\\\" (default \\\"4,-4,-2,-1\\\")"
    invert: "print out references not matching with any query"
    min_qual: "minimum mapping quality (default 5)"
    out_bam: "save aligmnets to this BAM file (memory intensive)"
    pass: "pass through mode (write input to stdout)"
    print_aln: "print sequence alignments"
    print_desc: "print full sequence header"
    query_fast_x: "query fasta"
    query_sequences: "query sequences"
    ranges: "target ranges, for example: \\\":10,30:40,-20:\\\""
    stranded: "search + strand only"
    validate_seq: "validate bases according to the alphabet"
    validate_seq_length: "length of sequence to validate (0 for whole seq) (default 10000)"
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