version 1.0

task ErneMap {
  input {
    String? reference
    String? query_one
    String? query_two
    String? bamsam_output_file
    Boolean? fast
    Boolean? sensitive
    Boolean? ultra_sensitive
    String? contamination_reference
    Boolean? sam
    Boolean? force_illumina
    Boolean? force_standard
    String? threads
    Boolean? auto_errors
    String? errors_rate
    String? errors_per_base
    String? errors
    String? delta
    Boolean? no_indels
    String? indels_max
    String? fragment_size_min
    String? fragment_size_max
    String? sample
    Boolean? no_auto_trim
    String? min_phred_value_mott
    String? min_mean_phred_quality
    String? min_size
    Boolean? gap
    String? ref_insertion_max_gap
    String? ref_deletion_max_gap
    Boolean? print_all
    String? print_at_most
    String? seed_errors
    String? mismatch_inserted_seed
    Boolean? disable_quality_strategy
    Boolean? ignore_quality
    String? cl
  }
  command <<<
    erne-map \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(query_one) then ("--query1 " +  '"' + query_one + '"') else ""} \
      ~{if defined(query_two) then ("--query2 " +  '"' + query_two + '"') else ""} \
      ~{if defined(bamsam_output_file) then ("--output " +  '"' + bamsam_output_file + '"') else ""} \
      ~{true="--fast" false="" fast} \
      ~{true="--sensitive" false="" sensitive} \
      ~{true="--ultra-sensitive" false="" ultra_sensitive} \
      ~{if defined(contamination_reference) then ("--contamination-reference " +  '"' + contamination_reference + '"') else ""} \
      ~{true="--sam" false="" sam} \
      ~{true="--force-illumina" false="" force_illumina} \
      ~{true="--force-standard" false="" force_standard} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--auto-errors" false="" auto_errors} \
      ~{if defined(errors_rate) then ("--errors-rate " +  '"' + errors_rate + '"') else ""} \
      ~{if defined(errors_per_base) then ("--errors-per-base " +  '"' + errors_per_base + '"') else ""} \
      ~{if defined(errors) then ("--errors " +  '"' + errors + '"') else ""} \
      ~{if defined(delta) then ("--delta " +  '"' + delta + '"') else ""} \
      ~{true="--no-indels" false="" no_indels} \
      ~{if defined(indels_max) then ("--indels-max " +  '"' + indels_max + '"') else ""} \
      ~{if defined(fragment_size_min) then ("--fragment-size-min " +  '"' + fragment_size_min + '"') else ""} \
      ~{if defined(fragment_size_max) then ("--fragment-size-max " +  '"' + fragment_size_max + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{true="--no-auto-trim" false="" no_auto_trim} \
      ~{if defined(min_phred_value_mott) then ("--min-phred-value-mott " +  '"' + min_phred_value_mott + '"') else ""} \
      ~{if defined(min_mean_phred_quality) then ("--min-mean-phred-quality " +  '"' + min_mean_phred_quality + '"') else ""} \
      ~{if defined(min_size) then ("--min-size " +  '"' + min_size + '"') else ""} \
      ~{true="--gap" false="" gap} \
      ~{if defined(ref_insertion_max_gap) then ("--ref-insertion-max-gap " +  '"' + ref_insertion_max_gap + '"') else ""} \
      ~{if defined(ref_deletion_max_gap) then ("--ref-deletion-max-gap " +  '"' + ref_deletion_max_gap + '"') else ""} \
      ~{true="--print-all" false="" print_all} \
      ~{if defined(print_at_most) then ("--print-at-most " +  '"' + print_at_most + '"') else ""} \
      ~{if defined(seed_errors) then ("--seed-errors " +  '"' + seed_errors + '"') else ""} \
      ~{if defined(mismatch_inserted_seed) then ("--q " +  '"' + mismatch_inserted_seed + '"') else ""} \
      ~{true="--disable-quality-strategy" false="" disable_quality_strategy} \
      ~{true="--ignore-quality" false="" ignore_quality} \
      ~{if defined(cl) then ("--cl " +  '"' + cl + '"') else ""}
  >>>
  parameter_meta {
    reference: "reference file to use (in our format and with  .ebh extension) [REQUIRED]"
    query_one: "query1 file (can be compressed with gzip or  bzip2, or a pipe) [REQUIRED]"
    query_two: "optional query2 file (can be compressed with  gzip or bzip2, or a pipe)"
    bamsam_output_file: "BAM/SAM output file (default: SAM format)  [REQUIRED]"
    fast: "PRESET 1: Use base qualities to improve speed.  Only slightly less sensitive (and much faster)  than --sensitive. This is the default.  Equivalent to --q 15 --cl 500"
    sensitive: "PRESET 2: High sensitivity and low speed.  Equivalent to --q 0 --cl 500"
    ultra_sensitive: "PRESET 3: Maximum sensitivity, but really low  speed. Equivalent to --ignore-quality --cl 0."
    contamination_reference: "reference file to use for contamination check  (in ERNE format)"
    sam: "output file in SAM format instead of BAM format"
    force_illumina: "force ILLUMINA 1.3+ FASTQ format (default:  auto-detect)"
    force_standard: "force standard SANGER FASTQ format (default:  auto-detect)"
    threads: "maximum number of allowed threads (default 1)"
    auto_errors: "obsolete (legacy option)"
    errors_rate: "change automatically error rate (default 15,  must be >= 5)"
    errors_per_base: "alternative to errors-rate: number of errors  per base in the range [0,0.2[ (equal to  1/errors-rate)"
    errors: "errors allowed (>= 0, default: auto-errors)"
    delta: "DELTA value (default 0)"
    no_indels: "disable indels in read alignment. Default:  disabled."
    indels_max: "max base pairs indels value (default: 10)"
    fragment_size_min: "minimum fragment size for proper pair (default: none, if --fragment-size-max is defined, it is  optional and default is 0)"
    fragment_size_max: "maximum fragment size for proper pair (default: none, required if --fragment-size-min is  defined)"
    sample: "sample name"
    no_auto_trim: "disable automatic trim"
    min_phred_value_mott: "minimum value used by Mott-like trimming  (default 20)"
    min_mean_phred_quality: "minimum mean value to accept a (trimmed)  sequence (default 20)"
    min_size: "min length for a sequence (default 25)"
    gap: "Efficiently search 1 gap (see  --ref-insertion-max-gap and  --ref-deletion-max-gap)"
    ref_insertion_max_gap: "maximum value for an insertion in the reference (default: 100)"
    ref_deletion_max_gap: "maximum value for a deletion in the reference  (default: 20)"
    print_all: "print all possible alignments, see manual for  output syntax [only for single-end reads]"
    print_at_most: "print at most the number of specified  alignments, see manual for output syntax [only  for single-end reads]"
    seed_errors: "Maximum number of errors allowed in the seed.  Default: 2."
    mismatch_inserted_seed: "Mismatch are inserted in the seed only in  positions where base quality < q. Default: 15.  With value 0 quality values are ignored."
    disable_quality_strategy: "Disable quality-aware strategy if a read is not found, then search again. Default: disabled  (quality-aware strategy always on)"
    ignore_quality: "Ignore quality values during search (equivalent to --q 0). Default: disabled."
    cl: "Search the hash collision lists up to this  depth (value 0 means no limit). Default: 50.  Only for dB-hash (.ebh reference files)."
  }
}