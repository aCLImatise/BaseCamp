version 1.0

task Bloocoo {
  input {
    Boolean? nb_cores
    Boolean? verbose
    Boolean? arg_reads_file
    Boolean? km_er_size
    Boolean? abundance_min
    Boolean? abundance_max
    Boolean? abundance_min_threshold
    Boolean? histo_max
    Boolean? solidity_kind
    Boolean? max_memory
    Boolean? max_disk
    File? solid_km_ers_out
    File? out
    Directory? out_dir
    Directory? out_tmp
    Boolean? out_compress
    Boolean? minimizer_type
    Boolean? minimizer_size
    Boolean? repartition_type
    Boolean? high_recall
    Boolean? high_precision
    Boolean? slow
    Boolean? ion
    Boolean? err_tab
    Boolean? max_trim
    Boolean? from_h_five
    Boolean? count_only
  }
  command <<<
    Bloocoo \
      ~{if (nb_cores) then "-nb-cores" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (arg_reads_file) then "-file" else ""} \
      ~{if (km_er_size) then "-kmer-size" else ""} \
      ~{if (abundance_min) then "-abundance-min" else ""} \
      ~{if (abundance_max) then "-abundance-max" else ""} \
      ~{if (abundance_min_threshold) then "-abundance-min-threshold" else ""} \
      ~{if (histo_max) then "-histo-max" else ""} \
      ~{if (solidity_kind) then "-solidity-kind" else ""} \
      ~{if (max_memory) then "-max-memory" else ""} \
      ~{if (max_disk) then "-max-disk" else ""} \
      ~{if (solid_km_ers_out) then "-solid-kmers-out" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (out_dir) then "-out-dir" else ""} \
      ~{if (out_tmp) then "-out-tmp" else ""} \
      ~{if (out_compress) then "-out-compress" else ""} \
      ~{if (minimizer_type) then "-minimizer-type" else ""} \
      ~{if (minimizer_size) then "-minimizer-size" else ""} \
      ~{if (repartition_type) then "-repartition-type" else ""} \
      ~{if (high_recall) then "-high-recall" else ""} \
      ~{if (high_precision) then "-high-precision" else ""} \
      ~{if (slow) then "-slow" else ""} \
      ~{if (ion) then "-ion" else ""} \
      ~{if (err_tab) then "-err-tab" else ""} \
      ~{if (max_trim) then "-max-trim" else ""} \
      ~{if (from_h_five) then "-from-h5" else ""} \
      ~{if (count_only) then "-count-only" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
    arg_reads_file: "(1 arg) :    reads file"
    km_er_size: "(1 arg) :    size of a kmer  [default '31']"
    abundance_min: "(1 arg) :    min abundance threshold for solid kmers  [default '3']"
    abundance_max: "(1 arg) :    max abundance threshold for solid kmers  [default '2147483647']"
    abundance_min_threshold: "(1 arg) :    min abundance hard threshold (only used when min abundance is \\\"auto\\\")  [default '3']"
    histo_max: "(1 arg) :    max number of values in kmers histogram  [default '10000']"
    solidity_kind: "(1 arg) :    way to compute counts of several files (sum, min, max, one, all)  [default 'sum']"
    max_memory: "(1 arg) :    max memory (in MBytes)  [default '5000']"
    max_disk: "(1 arg) :    max disk   (in MBytes)  [default '0']"
    solid_km_ers_out: "(1 arg) :    output file for solid kmers  [default '']"
    out: "(1 arg) :    output file  [default '']"
    out_dir: "(1 arg) :    output directory  [default '.']"
    out_tmp: "(1 arg) :    output directory for temporary files  [default '.']"
    out_compress: "(1 arg) :    output compression level (0:none, 9:best)  [default '0']"
    minimizer_type: "(1 arg) :    minimizer type (0=lexi, 1=freq)  [default '0']"
    minimizer_size: "(1 arg) :    size of a minimizer  [default '8']"
    repartition_type: "(1 arg) :    minimizer repartition (0=unordered, 1=ordered)  [default '0']"
    high_recall: "(0 arg) :    correct a lot but can introduce more mistakes"
    high_precision: "(0 arg) :    correct safely, correct less but introduce less mistakes"
    slow: "(0 arg) :    slower but better correction"
    ion: "(0 arg) :    ion correction mode"
    err_tab: "(0 arg) :    generate error tabs"
    max_trim: "(1 arg) :    max number of bases that can be trimmed per read  [default '']"
    from_h_five: "(0 arg) :    do not re-compute kmer counts, suppose h5 file already computed (with previous run with -count-only)"
    count_only: "(0 arg) :    do not correct, only count kmers"
  }
  output {
    File out_stdout = stdout()
    File out_solid_km_ers_out = "${in_solid_km_ers_out}"
    File out_out = "${in_out}"
    Directory out_out_dir = "${in_out_dir}"
    Directory out_out_tmp = "${in_out_tmp}"
  }
}