version 1.0

task Qfilt {
  input {
    String? qual_fasta_files
    String? fastq_file
    String? direct_retained_fragments
    String? minimum_perbase_quality
    Int? minimum_retained_fragment
    String? mode_bitmask_integer
    Boolean? when_encountering_split
    Boolean? tolerate_low_regions
    Boolean? tolerate_low_nucleotides
    String? rather_splitting_truncating_bases
    String? rather_splitting_truncating_remove
    String? supplied_only_reads
    String? prefix_supplied_tolerates
    String? output_fasta_format
    Boolean? output_run_diagnostics
    Boolean? v
  }
  command <<<
    qfilt \
      ~{if defined(qual_fasta_files) then ("-F " +  '"' + qual_fasta_files + '"') else ""} \
      ~{if defined(fastq_file) then ("-Q " +  '"' + fastq_file + '"') else ""} \
      ~{if defined(direct_retained_fragments) then ("-o " +  '"' + direct_retained_fragments + '"') else ""} \
      ~{if defined(minimum_perbase_quality) then ("-q " +  '"' + minimum_perbase_quality + '"') else ""} \
      ~{if defined(minimum_retained_fragment) then ("-l " +  '"' + minimum_retained_fragment + '"') else ""} \
      ~{if defined(mode_bitmask_integer) then ("-m " +  '"' + mode_bitmask_integer + '"') else ""} \
      ~{true="-s" false="" when_encountering_split} \
      ~{true="-p" false="" tolerate_low_regions} \
      ~{true="-a" false="" tolerate_low_nucleotides} \
      ~{if defined(rather_splitting_truncating_bases) then ("-P " +  '"' + rather_splitting_truncating_bases + '"') else ""} \
      ~{if defined(rather_splitting_truncating_remove) then ("-R " +  '"' + rather_splitting_truncating_remove + '"') else ""} \
      ~{if defined(supplied_only_reads) then ("-T " +  '"' + supplied_only_reads + '"') else ""} \
      ~{if defined(prefix_supplied_tolerates) then ("-t " +  '"' + prefix_supplied_tolerates + '"') else ""} \
      ~{if defined(output_fasta_format) then ("-f " +  '"' + output_fasta_format + '"') else ""} \
      ~{true="-j" false="" output_run_diagnostics} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    qual_fasta_files: "QUAL            FASTA and QUAL files"
    fastq_file: "FASTQ file"
    direct_retained_fragments: "direct retained fragments to a file named OUTPUT (default=stdout)"
    minimum_perbase_quality: "minimum per-base quality score below which a read will be split or truncated (default=20)"
    minimum_retained_fragment: "minimum retained fragment LENGTH (default=50)"
    mode_bitmask_integer: "MODE is a 3-bitmask (an integer in [0-7], default=0): if the lowest bit is set, it is like passing -s; if the middle bit is set, it is like passing -p; and if the highest bit is set, it is like passing -a"
    when_encountering_split: "when encountering a low q-score, split instead of truncate"
    tolerate_low_regions: "tolerate low q-score homopolymeric regions"
    tolerate_low_nucleotides: "tolerate low q-score ambiguous nucleotides"
    rather_splitting_truncating_bases: "rather than splitting or truncating, replace low quality bases with CHAR this option OVERRIDES all -m mode options"
    rather_splitting_truncating_remove: "rather than splitting or truncating, remove reads which  contain more than COUNT low quality bases this option only works in COMBINATION with the -P (punch) option"
    supplied_only_reads: "if supplied, only reads with this PREFIX are retained, and the PREFIX is stripped from each contributing read"
    prefix_supplied_tolerates: "if PREFIX is supplied, prefix matching tolerates at most MISMATCH mismatches (default=0)"
    output_fasta_format: "output in FASTA or FASTQ format (default=FASTA)"
    output_run_diagnostics: "output run diagnostics to stderr as JSON (default is to write ASCII text)"
    v: ""
  }
}