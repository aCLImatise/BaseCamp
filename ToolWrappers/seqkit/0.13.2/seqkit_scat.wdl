version 1.0

task SeqkitScat {
  input {
    Boolean? allow_gaps
    Int? delta
    Int? drop_time
    Boolean? find_only
    String? format
    Boolean? gz_only
    String? in_format
    String? out_format
    Int? qual_ascii_base
    String? regexp
    String? time_limit
    Int? wait_pid
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
    seqkit scat \
      ~{if (allow_gaps) then "--allow-gaps" else ""} \
      ~{if defined(delta) then ("--delta " +  '"' + delta + '"') else ""} \
      ~{if defined(drop_time) then ("--drop-time " +  '"' + drop_time + '"') else ""} \
      ~{if (find_only) then "--find-only" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (gz_only) then "--gz-only" else ""} \
      ~{if defined(in_format) then ("--in-format " +  '"' + in_format + '"') else ""} \
      ~{if defined(out_format) then ("--out-format " +  '"' + out_format + '"') else ""} \
      ~{if defined(qual_ascii_base) then ("--qual-ascii-base " +  '"' + qual_ascii_base + '"') else ""} \
      ~{if defined(regexp) then ("--regexp " +  '"' + regexp + '"') else ""} \
      ~{if defined(time_limit) then ("--time-limit " +  '"' + time_limit + '"') else ""} \
      ~{if defined(wait_pid) then ("--wait-pid " +  '"' + wait_pid + '"') else ""} \
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
    allow_gaps: "allow gap character (-) in sequences"
    delta: "minimum size increase in kilobytes to trigger parsing (default 5)"
    drop_time: "Notification drop interval (default \\\"500ms\\\")"
    find_only: "concatenate exisiting files and quit"
    format: "input and output format: fastq or fasta (fastq) (default \\\"fastq\\\")"
    gz_only: "only look for gzipped files (.gz suffix)"
    in_format: "input format: fastq or fasta (fastq)"
    out_format: "output format: fastq or fasta"
    qual_ascii_base: "ASCII BASE, 33 for Phred+33 (default 33)"
    regexp: "regexp for watched files, by default guessed from the input format"
    time_limit: "quit after inactive for this time period"
    wait_pid: "after process with this PID exited (default -1)"
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