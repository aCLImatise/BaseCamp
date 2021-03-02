version 1.0

task SamCompareWFeaturepy {
  input {
    Int? length
    File? fast_q
    File? sama
    File? samb
    File? feature
    File? counts
    File? totals
    Boolean? no_fq_ids
    File? log
    Boolean? debug
  }
  command <<<
    sam_compare_w_feature_py \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if defined(sama) then ("--sama " +  '"' + sama + '"') else ""} \
      ~{if defined(samb) then ("--samb " +  '"' + samb + '"') else ""} \
      ~{if defined(feature) then ("--feature " +  '"' + feature + '"') else ""} \
      ~{if defined(counts) then ("--counts " +  '"' + counts + '"') else ""} \
      ~{if defined(totals) then ("--totals " +  '"' + totals + '"') else ""} \
      ~{if (no_fq_ids) then "--nofqids" else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bayesase:21.1.13.1--py_0"
  }
  parameter_meta {
    length: "Read length"
    fast_q: "Source FastQ data file name"
    sama: "First SAM file (A)"
    samb: "Second SAM file (B)"
    feature: "Fusion file name, TSV or BED"
    counts: "Output file name for the counts - CSV file. Defaults\\nto counts_username_date_time_rand.csv. To output to\\nconsole, set to -o stdout"
    totals: "Output file name for the totals - text file. Defaults\\nto totals_username_date_time_randint.txt. To output to\\nconsole, set to -t stdout"
    no_fq_ids: "Do not check SAM reads QNAME against the fastq\\nsequence ids. Saves time if already known to be good.\\nMust still set -q op ion."
    log: "Log file name. Defaults to\\nsamcompare_username_date_time_rand.log. To output to\\nconsole, set to -g stdout. There is normally no stdout\\nunless specifically requested via options."
    debug: "Debugging mode (verbose). Includes elapsed time\\ndisplay for performance tracking."
  }
  output {
    File out_stdout = stdout()
    File out_counts = "${in_counts}"
    File out_totals = "${in_totals}"
    File out_log = "${in_log}"
  }
}