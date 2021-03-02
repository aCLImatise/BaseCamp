version 1.0

task SeqkitConvert {
  input {
    Boolean? dry_run
    Boolean? force
    String? from
    Int? n_records
    Int? thresh_b_in_n_most_common
    Float? thresh_illumina_one_dot_five_frac
    String? to
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
    seqkit convert \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(from) then ("--from " +  '"' + from + '"') else ""} \
      ~{if defined(n_records) then ("--nrecords " +  '"' + n_records + '"') else ""} \
      ~{if defined(thresh_b_in_n_most_common) then ("--thresh-B-in-n-most-common " +  '"' + thresh_b_in_n_most_common + '"') else ""} \
      ~{if defined(thresh_illumina_one_dot_five_frac) then ("--thresh-illumina1.5-frac " +  '"' + thresh_illumina_one_dot_five_frac + '"') else ""} \
      ~{if defined(to) then ("--to " +  '"' + to + '"') else ""} \
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
    docker: "quay.io/biocontainers/seqkit:0.15.0--0"
  }
  parameter_meta {
    dry_run: "dry run"
    force: "for Illumina-1.8+ -> Sanger, truncate scores > 40 to 40"
    from: "source quality encoding. if not given, we'll guess it"
    n_records: "number of records for guessing quality encoding (default 1000)"
    thresh_b_in_n_most_common: "threshold of 'B' in top N most common quality for guessing Illumina 1.5. (default 4)"
    thresh_illumina_one_dot_five_frac: "threshold of faction of Illumina 1.5 in the leading N records (default 0.1)"
    to: "target quality encoding (default \\\"Sanger\\\")"
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