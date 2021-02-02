version 1.0

task SeqkitSplit {
  input {
    Boolean? n__c
    Boolean? one_two
    Boolean? by_id
    Int? by_part
    Int? by_region
    Int? by_size
    Boolean? dry_run
    Directory? force
    Boolean? keep_temp
    Directory? out_dir
    Boolean? two_pass
    Int? alphabet_guess_seq_length
    Boolean? id_ncbi
    String? id_regexp
    File? in_file_list
    Int? line_width
    File? out_file
    Boolean? quiet
    String? seq_type
    Int? threads
    String seq
  }
  command <<<
    seqkit split \
      ~{seq} \
      ~{if (n__c) then "-1" else ""} \
      ~{if (one_two) then "-12" else ""} \
      ~{if (by_id) then "--by-id" else ""} \
      ~{if defined(by_part) then ("--by-part " +  '"' + by_part + '"') else ""} \
      ~{if defined(by_region) then ("--by-region " +  '"' + by_region + '"') else ""} \
      ~{if defined(by_size) then ("--by-size " +  '"' + by_size + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (keep_temp) then "--keep-temp" else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if (two_pass) then "--two-pass" else ""} \
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
    n__c: ":-1                      n\\n2:-2      C G T N a c g t\\n1:-1    A C G T N a c g t n\\n1:12    A C G T N a c g t n"
    one_two: ":-1    A C G T N a c g t n"
    by_id: "split squences according to sequence ID"
    by_part: "split sequences into N parts"
    by_region: "split squences according to subsequence of given region. e.g 1:12 for first 12 bases, -12:-1 for last 12 bases. type \\\"seqkit split -h\\\" for more examples"
    by_size: "split sequences into multi parts with N sequences"
    dry_run: "dry run, just print message and no files will be created."
    force: "overwrite output directory"
    keep_temp: "keep tempory FASTA and .fai file when using 2-pass mode"
    out_dir: "output directory (default value is $infile.split)"
    two_pass: "two-pass mode read files twice to lower memory usage. (only for FASTA format)"
    alphabet_guess_seq_length: "length of sequence prefix of the first FASTA record based on which seqkit guesses the sequence type (0 for whole seq) (default 10000)"
    id_ncbi: "FASTA head is NCBI-style, e.g. >gi|110645304|ref|NC_002516.2| Pseud..."
    id_regexp: "regular expression for parsing ID (default \\\"^(\\\\S+)\\\\s?\\\")"
    in_file_list: "file of input files list (one file per line), if given, they are appended to files from cli arguments"
    line_width: "line width when outputing FASTA format (0 for no wrap) (default 60)"
    out_file: "out file (\\\"-\\\" for stdout, suffix .gz for gzipped out) (default \\\"-\\\")"
    quiet: "be quiet and do not show extra information"
    seq_type: "sequence type (dna|rna|protein|unlimit|auto) (for auto, it automatically detect by the first sequence) (default \\\"auto\\\")"
    threads: "number of CPUs. (default value: 1 for single-CPU PC, 2 for others. can also set with environment variable SEQKIT_THREADS) (default 2)"
    seq: "A C G T N a c g t n"
  }
  output {
    File out_stdout = stdout()
    Directory out_force = "${in_force}"
    Directory out_out_dir = "${in_out_dir}"
    File out_out_file = "${in_out_file}"
  }
}