version 1.0

task Qfilt {
  input {
    String? qual_fasta_qual
    File? fastq_file
    File? direct_retained_fragments
    Int? minimum_perbase_quality
    Int? minimum_retained_fragment
    Int? mode_bitmask_integer
    Boolean? when_encountering_split
    Boolean? tolerate_low_qscore
    Boolean? tolerate_low_nucleotides
    String? rather_splitting_truncating_replace
    String? rather_splitting_truncating_remove
    String? supplied_only_reads
    Int? prefix_supplied_tolerates
    String? output_fasta_fastq
    Boolean? output_run_diagnostics
    Boolean? v
  }
  command <<<
    qfilt \
      ~{if defined(qual_fasta_qual) then ("-F " +  '"' + qual_fasta_qual + '"') else ""} \
      ~{if defined(fastq_file) then ("-Q " +  '"' + fastq_file + '"') else ""} \
      ~{if defined(direct_retained_fragments) then ("-o " +  '"' + direct_retained_fragments + '"') else ""} \
      ~{if defined(minimum_perbase_quality) then ("-q " +  '"' + minimum_perbase_quality + '"') else ""} \
      ~{if defined(minimum_retained_fragment) then ("-l " +  '"' + minimum_retained_fragment + '"') else ""} \
      ~{if defined(mode_bitmask_integer) then ("-m " +  '"' + mode_bitmask_integer + '"') else ""} \
      ~{if (when_encountering_split) then "-s" else ""} \
      ~{if (tolerate_low_qscore) then "-p" else ""} \
      ~{if (tolerate_low_nucleotides) then "-a" else ""} \
      ~{if defined(rather_splitting_truncating_replace) then ("-P " +  '"' + rather_splitting_truncating_replace + '"') else ""} \
      ~{if defined(rather_splitting_truncating_remove) then ("-R " +  '"' + rather_splitting_truncating_remove + '"') else ""} \
      ~{if defined(supplied_only_reads) then ("-T " +  '"' + supplied_only_reads + '"') else ""} \
      ~{if defined(prefix_supplied_tolerates) then ("-t " +  '"' + prefix_supplied_tolerates + '"') else ""} \
      ~{if defined(output_fasta_fastq) then ("-f " +  '"' + output_fasta_fastq + '"') else ""} \
      ~{if (output_run_diagnostics) then "-j" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    qual_fasta_qual: "QUAL            FASTA and QUAL files"
    fastq_file: "FASTQ file"
    direct_retained_fragments: "direct retained fragments to a file named OUTPUT (default=stdout)"
    minimum_perbase_quality: "minimum per-base quality score below which a read will be split\\nor truncated (default=20)"
    minimum_retained_fragment: "minimum retained fragment LENGTH (default=50)"
    mode_bitmask_integer: "MODE is a 3-bitmask (an integer in [0-7], default=0):\\nif the lowest bit is set, it is like passing -s;\\nif the middle bit is set, it is like passing -p;\\nand if the highest bit is set, it is like passing -a"
    when_encountering_split: "when encountering a low q-score, split instead of truncate"
    tolerate_low_qscore: "tolerate low q-score homopolymeric regions"
    tolerate_low_nucleotides: "tolerate low q-score ambiguous nucleotides"
    rather_splitting_truncating_replace: "rather than splitting or truncating, replace low quality bases with CHAR\\nthis option OVERRIDES all -m mode options"
    rather_splitting_truncating_remove: "rather than splitting or truncating, remove reads which\\ncontain more than COUNT low quality bases\\nthis option only works in COMBINATION with the -P (punch) option"
    supplied_only_reads: "if supplied, only reads with this PREFIX are retained,\\nand the PREFIX is stripped from each contributing read"
    prefix_supplied_tolerates: "if PREFIX is supplied, prefix matching tolerates at most\\nMISMATCH mismatches (default=0)"
    output_fasta_fastq: "output in FASTA or FASTQ format (default=FASTA)"
    output_run_diagnostics: "output run diagnostics to stderr as JSON (default is to write ASCII text)"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_direct_retained_fragments = "${in_direct_retained_fragments}"
  }
}