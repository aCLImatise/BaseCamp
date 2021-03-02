version 1.0

task SeqkitStats {
  input {
    Boolean? all
    Boolean? basename
    Float? fq_encoding
    String? gap_letters
    Boolean? skip_err
    String? stdin_label
    Boolean? tabular
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
    seqkit stats \
      ~{if (all) then "--all" else ""} \
      ~{if (basename) then "--basename" else ""} \
      ~{if defined(fq_encoding) then ("--fq-encoding " +  '"' + fq_encoding + '"') else ""} \
      ~{if defined(gap_letters) then ("--gap-letters " +  '"' + gap_letters + '"') else ""} \
      ~{if (skip_err) then "--skip-err" else ""} \
      ~{if defined(stdin_label) then ("--stdin-label " +  '"' + stdin_label + '"') else ""} \
      ~{if (tabular) then "--tabular" else ""} \
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
    all: "all statistics, including quartiles of seq length, sum_gap, N50"
    basename: "only output basename of files"
    fq_encoding: "fastq quality encoding. available values: 'sanger', 'solexa', 'illumina-1.3+', 'illumina-1.5+', 'illumina-1.8+'. (default \\\"sanger\\\")"
    gap_letters: "gap letters (default \\\"- .\\\")"
    skip_err: "skip error, only show warning message"
    stdin_label: "label for replacing default \\\"-\\\" for stdin (default \\\"-\\\")"
    tabular: "output in machine-friendly tabular format"
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