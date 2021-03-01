version 1.0

task Valetpy {
  input {
    File? assembly_fast_a
    String? assembly_names
    File? reads
    Int? fastq_filenames_thefirst
    Int? fastq_filenames_thesecond
    File? coverage_file
    File? config_file
    Directory? output_dir
    Int? window_size
    Boolean? fast_a
    Boolean? fast_q
    Int? threads
    Int? mini_ns
    Int? max_ins
    String? orientation
    String? mu
    String? sigma
    Int? max_alignments
    String? email
    Int? min_coverage
    String? coverage_multiplier
    Int? min_suspicious
    Int? suspicious_flank_size
    Int? min_contig_length
    String? ignore_ends
    String? breakpoint_bin
    File? orf_file
    Int? km_er
  }
  command <<<
    valet_py \
      ~{if defined(assembly_fast_a) then ("--assembly-fasta " +  '"' + assembly_fast_a + '"') else ""} \
      ~{if defined(assembly_names) then ("--assembly-names " +  '"' + assembly_names + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(fastq_filenames_thefirst) then ("--1 " +  '"' + fastq_filenames_thefirst + '"') else ""} \
      ~{if defined(fastq_filenames_thesecond) then ("--2 " +  '"' + fastq_filenames_thesecond + '"') else ""} \
      ~{if defined(coverage_file) then ("--coverage-file " +  '"' + coverage_file + '"') else ""} \
      ~{if defined(config_file) then ("--config-file " +  '"' + config_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(mini_ns) then ("--minins " +  '"' + mini_ns + '"') else ""} \
      ~{if defined(max_ins) then ("--maxins " +  '"' + max_ins + '"') else ""} \
      ~{if defined(orientation) then ("--orientation " +  '"' + orientation + '"') else ""} \
      ~{if defined(mu) then ("--mu " +  '"' + mu + '"') else ""} \
      ~{if defined(sigma) then ("--sigma " +  '"' + sigma + '"') else ""} \
      ~{if defined(max_alignments) then ("--max-alignments " +  '"' + max_alignments + '"') else ""} \
      ~{if defined(email) then ("--email " +  '"' + email + '"') else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(coverage_multiplier) then ("--coverage-multiplier " +  '"' + coverage_multiplier + '"') else ""} \
      ~{if defined(min_suspicious) then ("--min-suspicious " +  '"' + min_suspicious + '"') else ""} \
      ~{if defined(suspicious_flank_size) then ("--suspicious-flank-size " +  '"' + suspicious_flank_size + '"') else ""} \
      ~{if defined(min_contig_length) then ("--min-contig-length " +  '"' + min_contig_length + '"') else ""} \
      ~{if defined(ignore_ends) then ("--ignore-ends " +  '"' + ignore_ends + '"') else ""} \
      ~{if defined(breakpoint_bin) then ("--breakpoint-bin " +  '"' + breakpoint_bin + '"') else ""} \
      ~{if defined(orf_file) then ("--orf-file " +  '"' + orf_file + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    assembly_fast_a: "Candidate assembly files"
    assembly_names: "Names for the different assemblies."
    reads: "First Read File"
    fastq_filenames_thefirst: "Fastq filenames separated by commas that contain the\\nfirst mates."
    fastq_filenames_thesecond: "Fastq filenames separated by commas that contain the\\nsecond mates."
    coverage_file: "Assembly created per-contig coverage file"
    config_file: "Config file with preset parameters."
    output_dir: "Output directory"
    window_size: "Sliding window size when determining misassemblies."
    fast_a: "if set, input reads are fasta format (by default,\\nreads are FASTQ)."
    fast_q: "if set, input reads are fastq format."
    threads: "Number of threads"
    mini_ns: "Min insert sizes for mate pairs separated by commas."
    max_ins: "Max insert sizes for mate pairs separated by commas."
    orientation: "Orientation of the mates."
    mu: "average mate pair insert sizes."
    sigma: "standard deviation of mate pair insert sizes."
    max_alignments: "bowtie2 parameter to set the max number of alignments."
    email: "Email to notify when job completes"
    min_coverage: "Minimum average coverage to run misassembly detection."
    coverage_multiplier: "When binning by coverage, the new high = high + high *\\nmultiplier"
    min_suspicious: "Minimum number of overlapping flagged miassemblies to\\nmark region as suspicious."
    suspicious_flank_size: "Mark region as suspicious if multiple signatures occur\\nwithin this window size."
    min_contig_length: "Ignore contigs smaller than this length."
    ignore_ends: "Ignore flagged regions within b bps from the ends of\\nthe contigs."
    breakpoint_bin: "Bin sized used to find breakpoints."
    orf_file: "gff formatted file containing orfs"
    km_er: "kmer length used for abundance estimation"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}