version 1.0

task ErneFilter {
  input {
    String? contamination_reference
    String? query_one
    String? query_two
    String? output_prefix
    Boolean? fast
    Boolean? sensitive
    Boolean? ultra_sensitive
    Boolean? no_indels
    String? indels_max
    Boolean? gzip
    Boolean? bzip_two
    String? threads
    Boolean? force_illumina
    Boolean? force_standard
    Boolean? auto_errors
    String? errors_rate
    String? errors
    Boolean? no_auto_trim
    String? min_phred_value_mott
    String? min_mean_phred_quality
    String? min_size
    Boolean? preserve_encoding
    String? mismatch_inserted_seed
    Boolean? disable_quality_strategy
    Boolean? ignore_quality
    String? cl
  }
  command <<<
    erne-filter \
      ~{if defined(contamination_reference) then ("--contamination-reference " +  '"' + contamination_reference + '"') else ""} \
      ~{if defined(query_one) then ("--query1 " +  '"' + query_one + '"') else ""} \
      ~{if defined(query_two) then ("--query2 " +  '"' + query_two + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{true="--fast" false="" fast} \
      ~{true="--sensitive" false="" sensitive} \
      ~{true="--ultra-sensitive" false="" ultra_sensitive} \
      ~{true="--no-indels" false="" no_indels} \
      ~{if defined(indels_max) then ("--indels-max " +  '"' + indels_max + '"') else ""} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--bzip2" false="" bzip_two} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--force-illumina" false="" force_illumina} \
      ~{true="--force-standard" false="" force_standard} \
      ~{true="--auto-errors" false="" auto_errors} \
      ~{if defined(errors_rate) then ("--errors-rate " +  '"' + errors_rate + '"') else ""} \
      ~{if defined(errors) then ("--errors " +  '"' + errors + '"') else ""} \
      ~{true="--no-auto-trim" false="" no_auto_trim} \
      ~{if defined(min_phred_value_mott) then ("--min-phred-value-mott " +  '"' + min_phred_value_mott + '"') else ""} \
      ~{if defined(min_mean_phred_quality) then ("--min-mean-phred-quality " +  '"' + min_mean_phred_quality + '"') else ""} \
      ~{if defined(min_size) then ("--min-size " +  '"' + min_size + '"') else ""} \
      ~{true="--preserve-encoding" false="" preserve_encoding} \
      ~{if defined(mismatch_inserted_seed) then ("--q " +  '"' + mismatch_inserted_seed + '"') else ""} \
      ~{true="--disable-quality-strategy" false="" disable_quality_strategy} \
      ~{true="--ignore-quality" false="" ignore_quality} \
      ~{if defined(cl) then ("--cl " +  '"' + cl + '"') else ""}
  >>>
  parameter_meta {
    contamination_reference: "reference file to use (in our format and with  .ebh extension)"
    query_one: "query1 file (can be compressed with gzip or  bzip2, or a pipe) [REQUIRED]"
    query_two: "optional query2 file (can be compressed with  gzip or bzip2, or a pipe)"
    output_prefix: "output prefix [REQUIRED]"
    fast: "PRESET 1: Use base qualities to improve speed.  Only slightly less sensitive (and much faster)  than --sensitive. This is the default.  Equivalent to --q 15 --cl 500"
    sensitive: "PRESET 2: High sensitivity and low speed.  Equivalent to --q 15 --cl 500  --disable-quality-strategy. This is  approximately 5 times slower than --fast."
    ultra_sensitive: "PRESET 3: Maximum sensitivity, but really low  speed. Equivalent to --ignore-quality --cl 0."
    no_indels: "disable indels in read alignment. Default:  disabled."
    indels_max: "max base pairs indels value (default: 10)"
    gzip: "compress output with gzip (.gz suffix will be  added to the output files"
    bzip_two: "compress output with bzip2 (.bz2 suffix will be added to the output files"
    threads: "maximum number of allowed threads (default 1)"
    force_illumina: "force ILLUMINA 1.3+ FASTQ format (default:  auto-detect)"
    force_standard: "force standard SANGER FASTQ format (default:  auto-detect)"
    auto_errors: "obsolete (legacy options)"
    errors_rate: "set error rate (default 15)"
    errors: "fixed number of errors allowed, disable  --errors-rate (>= 0)"
    no_auto_trim: "disable automatic trimming"
    min_phred_value_mott: "minimum value used by Mott-like trimming  (default 20)"
    min_mean_phred_quality: "minimum mean value to accept a (trimmed)  sequence (default 20)"
    min_size: "minimum sequence length after trimming (default 25)"
    preserve_encoding: "preserve input encoding"
    mismatch_inserted_seed: "Mismatch are inserted in the seed only in  positions where base quality < q. Default: 15.  With value 0 quality values are ignored."
    disable_quality_strategy: "Disable quality-aware strategy if a read is not found, then search again. Default: disabled  (quality-aware strategy always on)"
    ignore_quality: "Ignore quality values during search (equivalent to --q 0). Default: disabled."
    cl: "Search the hash collision lists up to this  depth (value 0 means no limit). Default: 50.  Only for dB-hash (.ebh reference files)."
  }
}