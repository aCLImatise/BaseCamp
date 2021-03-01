version 1.0

task Ernemap {
  input {
    File? reference
    Int? query_one
    Int? query_two
    File? bamsam_output_file
    Boolean? fast
    Boolean? sensitive
    Boolean? ultra_sensitive
    File? contamination_reference
    File? sam
    Boolean? force_illumina
    Boolean? force_standard
    Int? threads
    Boolean? auto_errors
    Int? errors_rate
    Int? errors_per_base
    Int? errors
    Int? delta
    Boolean? no_indels
    Int? fragment_size_min
    Int? fragment_size_max
    String? sample
    Boolean? no_auto_trim
    Int? min_phred_value_mott
    Int? min_mean_phred_quality
    Int? min_size
    Boolean? gap
    Int? ref_insertion_max_gap
    Int? ref_deletion_max_gap
    Boolean? print_all
    Int? print_at_most
    Int? seed_errors
    Int? mismatch_inserted_inpositions
    Boolean? disable_quality_strategy
    Boolean? ignore_quality
    Int? cl
    String disabled_dot
  }
  command <<<
    erne_map \
      ~{disabled_dot} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(query_one) then ("--query1 " +  '"' + query_one + '"') else ""} \
      ~{if defined(query_two) then ("--query2 " +  '"' + query_two + '"') else ""} \
      ~{if defined(bamsam_output_file) then ("--output " +  '"' + bamsam_output_file + '"') else ""} \
      ~{if (fast) then "--fast" else ""} \
      ~{if (sensitive) then "--sensitive" else ""} \
      ~{if (ultra_sensitive) then "--ultra-sensitive" else ""} \
      ~{if defined(contamination_reference) then ("--contamination-reference " +  '"' + contamination_reference + '"') else ""} \
      ~{if (sam) then "--sam" else ""} \
      ~{if (force_illumina) then "--force-illumina" else ""} \
      ~{if (force_standard) then "--force-standard" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (auto_errors) then "--auto-errors" else ""} \
      ~{if defined(errors_rate) then ("--errors-rate " +  '"' + errors_rate + '"') else ""} \
      ~{if defined(errors_per_base) then ("--errors-per-base " +  '"' + errors_per_base + '"') else ""} \
      ~{if defined(errors) then ("--errors " +  '"' + errors + '"') else ""} \
      ~{if defined(delta) then ("--delta " +  '"' + delta + '"') else ""} \
      ~{if (no_indels) then "--no-indels" else ""} \
      ~{if defined(fragment_size_min) then ("--fragment-size-min " +  '"' + fragment_size_min + '"') else ""} \
      ~{if defined(fragment_size_max) then ("--fragment-size-max " +  '"' + fragment_size_max + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if (no_auto_trim) then "--no-auto-trim" else ""} \
      ~{if defined(min_phred_value_mott) then ("--min-phred-value-mott " +  '"' + min_phred_value_mott + '"') else ""} \
      ~{if defined(min_mean_phred_quality) then ("--min-mean-phred-quality " +  '"' + min_mean_phred_quality + '"') else ""} \
      ~{if defined(min_size) then ("--min-size " +  '"' + min_size + '"') else ""} \
      ~{if (gap) then "--gap" else ""} \
      ~{if defined(ref_insertion_max_gap) then ("--ref-insertion-max-gap " +  '"' + ref_insertion_max_gap + '"') else ""} \
      ~{if defined(ref_deletion_max_gap) then ("--ref-deletion-max-gap " +  '"' + ref_deletion_max_gap + '"') else ""} \
      ~{if (print_all) then "--print-all" else ""} \
      ~{if defined(print_at_most) then ("--print-at-most " +  '"' + print_at_most + '"') else ""} \
      ~{if defined(seed_errors) then ("--seed-errors " +  '"' + seed_errors + '"') else ""} \
      ~{if defined(mismatch_inserted_inpositions) then ("--q " +  '"' + mismatch_inserted_inpositions + '"') else ""} \
      ~{if (disable_quality_strategy) then "--disable-quality-strategy" else ""} \
      ~{if (ignore_quality) then "--ignore-quality" else ""} \
      ~{if defined(cl) then ("--cl " +  '"' + cl + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference: "reference file to use (in our format and with\\n.ebh extension) [REQUIRED]"
    query_one: "query1 file (can be compressed with gzip or\\nbzip2, or a pipe) [REQUIRED]"
    query_two: "optional query2 file (can be compressed with\\ngzip or bzip2, or a pipe)"
    bamsam_output_file: "BAM/SAM output file (default: SAM format)\\n[REQUIRED]"
    fast: "PRESET 1: Use base qualities to improve speed.\\nOnly slightly less sensitive (and much faster)\\nthan --sensitive. This is the default.\\nEquivalent to --q 15 --cl 500"
    sensitive: "PRESET 2: High sensitivity and low speed.\\nEquivalent to --q 0 --cl 500"
    ultra_sensitive: "PRESET 3: Maximum sensitivity, but really low\\nspeed. Equivalent to --ignore-quality --cl 0."
    contamination_reference: "reference file to use for contamination check\\n(in ERNE format)"
    sam: "output file in SAM format instead of BAM format"
    force_illumina: "force ILLUMINA 1.3+ FASTQ format (default:\\nauto-detect)"
    force_standard: "force standard SANGER FASTQ format (default:\\nauto-detect)"
    threads: "maximum number of allowed threads (default 1)"
    auto_errors: "obsolete (legacy option)"
    errors_rate: "change automatically error rate (default 15,\\nmust be >= 5)"
    errors_per_base: "alternative to errors-rate: number of errors\\nper base in the range [0,0.2[ (equal to\\n1/errors-rate)"
    errors: "errors allowed (>= 0, default: auto-errors)"
    delta: "DELTA value (default 0)"
    no_indels: "disable indels in read alignment. Default:"
    fragment_size_min: "minimum fragment size for proper pair (default:\\nnone, if --fragment-size-max is defined, it is\\noptional and default is 0)"
    fragment_size_max: "maximum fragment size for proper pair (default:\\nnone, required if --fragment-size-min is\\ndefined)"
    sample: "sample name"
    no_auto_trim: "disable automatic trim"
    min_phred_value_mott: "minimum value used by Mott-like trimming\\n(default 20)"
    min_mean_phred_quality: "minimum mean value to accept a (trimmed)\\nsequence (default 20)"
    min_size: "min length for a sequence (default 25)"
    gap: "Efficiently search 1 gap (see"
    ref_insertion_max_gap: "maximum value for an insertion in the reference\\n(default: 100)"
    ref_deletion_max_gap: "maximum value for a deletion in the reference\\n(default: 20)"
    print_all: "print all possible alignments, see manual for\\noutput syntax [only for single-end reads]"
    print_at_most: "print at most the number of specified\\nalignments, see manual for output syntax [only\\nfor single-end reads]"
    seed_errors: "Maximum number of errors allowed in the seed.\\nDefault: 2."
    mismatch_inserted_inpositions: "Mismatch are inserted in the seed only in\\npositions where base quality < q. Default: 15.\\nWith value 0 quality values are ignored."
    disable_quality_strategy: "Disable quality-aware strategy if a read is not\\nfound, then search again. Default: disabled\\n(quality-aware strategy always on)"
    ignore_quality: "Ignore quality values during search (equivalent\\nto --q 0). Default: disabled."
    cl: "Search the hash collision lists up to this\\ndepth (value 0 means no limit). Default: 50.\\nOnly for dB-hash (.ebh reference files).\\n"
    disabled_dot: "--indels-max arg              max base pairs indels value (default: 10)"
  }
  output {
    File out_stdout = stdout()
    File out_bamsam_output_file = "${in_bamsam_output_file}"
    File out_sam = "${in_sam}"
  }
}