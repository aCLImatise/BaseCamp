version 1.0

task Ernefilter {
  input {
    File? contamination_reference
    Int? query_one
    Int? query_two
    String? output_prefix
    Boolean? fast
    Boolean? sensitive
    Boolean? ultra_sensitive
    Boolean? no_indels
    Boolean? gzip
    Boolean? bzip_two
    Int? threads
    Boolean? force_illumina
    Boolean? force_standard
    Boolean? auto_errors
    Int? errors_rate
    Int? errors
    Boolean? no_auto_trim
    Int? min_phred_value_mott
    Int? min_mean_phred_quality
    Int? min_size
    Boolean? preserve_encoding
    Int? mismatch_inserted_inpositions
    Boolean? disable_quality_strategy
    Boolean? ignore_quality
    Int? cl
    String disabled_dot
  }
  command <<<
    erne_filter \
      ~{disabled_dot} \
      ~{if defined(contamination_reference) then ("--contamination-reference " +  '"' + contamination_reference + '"') else ""} \
      ~{if defined(query_one) then ("--query1 " +  '"' + query_one + '"') else ""} \
      ~{if defined(query_two) then ("--query2 " +  '"' + query_two + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if (fast) then "--fast" else ""} \
      ~{if (sensitive) then "--sensitive" else ""} \
      ~{if (ultra_sensitive) then "--ultra-sensitive" else ""} \
      ~{if (no_indels) then "--no-indels" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (bzip_two) then "--bzip2" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (force_illumina) then "--force-illumina" else ""} \
      ~{if (force_standard) then "--force-standard" else ""} \
      ~{if (auto_errors) then "--auto-errors" else ""} \
      ~{if defined(errors_rate) then ("--errors-rate " +  '"' + errors_rate + '"') else ""} \
      ~{if defined(errors) then ("--errors " +  '"' + errors + '"') else ""} \
      ~{if (no_auto_trim) then "--no-auto-trim" else ""} \
      ~{if defined(min_phred_value_mott) then ("--min-phred-value-mott " +  '"' + min_phred_value_mott + '"') else ""} \
      ~{if defined(min_mean_phred_quality) then ("--min-mean-phred-quality " +  '"' + min_mean_phred_quality + '"') else ""} \
      ~{if defined(min_size) then ("--min-size " +  '"' + min_size + '"') else ""} \
      ~{if (preserve_encoding) then "--preserve-encoding" else ""} \
      ~{if defined(mismatch_inserted_inpositions) then ("--q " +  '"' + mismatch_inserted_inpositions + '"') else ""} \
      ~{if (disable_quality_strategy) then "--disable-quality-strategy" else ""} \
      ~{if (ignore_quality) then "--ignore-quality" else ""} \
      ~{if defined(cl) then ("--cl " +  '"' + cl + '"') else ""}
  >>>
  parameter_meta {
    contamination_reference: "reference file to use (in our format and with\\n.ebh extension)"
    query_one: "query1 file (can be compressed with gzip or\\nbzip2, or a pipe) [REQUIRED]"
    query_two: "optional query2 file (can be compressed with\\ngzip or bzip2, or a pipe)"
    output_prefix: "output prefix [REQUIRED]"
    fast: "PRESET 1: Use base qualities to improve speed.\\nOnly slightly less sensitive (and much faster)\\nthan --sensitive. This is the default.\\nEquivalent to --q 15 --cl 500"
    sensitive: "PRESET 2: High sensitivity and low speed.\\nEquivalent to --q 15 --cl 500\\n--disable-quality-strategy. This is\\napproximately 5 times slower than --fast."
    ultra_sensitive: "PRESET 3: Maximum sensitivity, but really low\\nspeed. Equivalent to --ignore-quality --cl 0."
    no_indels: "disable indels in read alignment. Default:"
    gzip: "compress output with gzip (.gz suffix will be\\nadded to the output files"
    bzip_two: "compress output with bzip2 (.bz2 suffix will be\\nadded to the output files"
    threads: "maximum number of allowed threads (default 1)"
    force_illumina: "force ILLUMINA 1.3+ FASTQ format (default:\\nauto-detect)"
    force_standard: "force standard SANGER FASTQ format (default:\\nauto-detect)"
    auto_errors: "obsolete (legacy options)"
    errors_rate: "set error rate (default 15)"
    errors: "fixed number of errors allowed, disable"
    no_auto_trim: "disable automatic trimming"
    min_phred_value_mott: "minimum value used by Mott-like trimming\\n(default 20)"
    min_mean_phred_quality: "minimum mean value to accept a (trimmed)\\nsequence (default 20)"
    min_size: "minimum sequence length after trimming (default\\n25)"
    preserve_encoding: "preserve input encoding"
    mismatch_inserted_inpositions: "Mismatch are inserted in the seed only in\\npositions where base quality < q. Default: 15.\\nWith value 0 quality values are ignored."
    disable_quality_strategy: "Disable quality-aware strategy if a read is not\\nfound, then search again. Default: disabled\\n(quality-aware strategy always on)"
    ignore_quality: "Ignore quality values during search (equivalent\\nto --q 0). Default: disabled."
    cl: "Search the hash collision lists up to this\\ndepth (value 0 means no limit). Default: 50.\\nOnly for dB-hash (.ebh reference files).\\n"
    disabled_dot: "--indels-max arg              max base pairs indels value (default: 10)"
  }
  output {
    File out_stdout = stdout()
  }
}