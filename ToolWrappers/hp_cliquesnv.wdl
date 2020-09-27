version 1.0

task HpCliquesnv {
  input {
    Int? fq_one
    Int? fq_two
    File? f_qu
    File? ref_fa
    Directory? outdir
    File? jar_dir
    Int? o_two_two_min
    Int? o_two_two_min_freq
    Boolean? print_log
    String? merging
    Int? fast_a_format
    String? output_start
    String? output_end
    Boolean? quiet
    File? log_file
    Boolean? debug
    Int? n_cpu
    Boolean? keep_tmp
  }
  command <<<
    hp_cliquesnv \
      ~{if defined(fq_one) then ("--fq1 " +  '"' + fq_one + '"') else ""} \
      ~{if defined(fq_two) then ("--fq2 " +  '"' + fq_two + '"') else ""} \
      ~{if defined(f_qu) then ("--fqU " +  '"' + f_qu + '"') else ""} \
      ~{if defined(ref_fa) then ("--ref_fa " +  '"' + ref_fa + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(jar_dir) then ("--jardir " +  '"' + jar_dir + '"') else ""} \
      ~{if defined(o_two_two_min) then ("--O22min " +  '"' + o_two_two_min + '"') else ""} \
      ~{if defined(o_two_two_min_freq) then ("--O22minfreq " +  '"' + o_two_two_min_freq + '"') else ""} \
      ~{if (print_log) then "--printlog" else ""} \
      ~{if defined(merging) then ("--merging " +  '"' + merging + '"') else ""} \
      ~{if defined(fast_a_format) then ("--fasta_format " +  '"' + fast_a_format + '"') else ""} \
      ~{if defined(output_start) then ("--outputstart " +  '"' + output_start + '"') else ""} \
      ~{if defined(output_end) then ("--outputend " +  '"' + output_end + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(n_cpu) then ("--ncpu " +  '"' + n_cpu + '"') else ""} \
      ~{if (keep_tmp) then "--keep_tmp" else ""}
  >>>
  parameter_meta {
    fq_one: "Fastq file with read 1"
    fq_two: "Fastq file with read 2"
    f_qu: "Fastq file with unpaired reads"
    ref_fa: "Reference FASTA file"
    outdir: "Output directory (default: .)"
    jar_dir: "Path to clique-snv.jar (existing) (Default: current\\ndirectory) (default: .)"
    o_two_two_min: "minimum threshold for O22 value"
    o_two_two_min_freq: "minimum threshold for O22 frequency relative to read\\ncoverage"
    print_log: "Print log data to console (default: False)"
    merging: "Cliques merging algorithm: accurate or fast"
    fast_a_format: "Fasta defline format: short or extended, add number at\\nend to adjust precision of frequency (default:\\nextended4)"
    output_start: "Output start position"
    output_end: "Output end position"
    quiet: "Do not write output to console (silence stdout and\\nstderr) (default: False)"
    log_file: "Name for log file (output)"
    debug: "Print commands but do not run (default: False)"
    n_cpu: "Number of CPU to use (default: 1)"
    keep_tmp: "Do not delete temporary directory (default: False)"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
    File out_log_file = "${in_log_file}"
  }
}