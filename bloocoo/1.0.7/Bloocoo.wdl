version 1.0

task Bloocoo {
  input {
    Boolean? nb_cores
    Boolean? verbose
    Boolean? file
    Boolean? km_er_size
    Boolean? abundance_min
    Boolean? abundance_max
    Boolean? abundance_min_threshold
    Boolean? histo_max
    Boolean? solidity_kind
    Boolean? max_memory
    Boolean? max_disk
    Boolean? solid_km_ers_out
    Boolean? out
    Boolean? out_dir
    Boolean? out_tmp
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
      ~{true="-nb-cores" false="" nb_cores} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-file" false="" file} \
      ~{true="-kmer-size" false="" km_er_size} \
      ~{true="-abundance-min" false="" abundance_min} \
      ~{true="-abundance-max" false="" abundance_max} \
      ~{true="-abundance-min-threshold" false="" abundance_min_threshold} \
      ~{true="-histo-max" false="" histo_max} \
      ~{true="-solidity-kind" false="" solidity_kind} \
      ~{true="-max-memory" false="" max_memory} \
      ~{true="-max-disk" false="" max_disk} \
      ~{true="-solid-kmers-out" false="" solid_km_ers_out} \
      ~{true="-out" false="" out} \
      ~{true="-out-dir" false="" out_dir} \
      ~{true="-out-tmp" false="" out_tmp} \
      ~{true="-out-compress" false="" out_compress} \
      ~{true="-minimizer-type" false="" minimizer_type} \
      ~{true="-minimizer-size" false="" minimizer_size} \
      ~{true="-repartition-type" false="" repartition_type} \
      ~{true="-high-recall" false="" high_recall} \
      ~{true="-high-precision" false="" high_precision} \
      ~{true="-slow" false="" slow} \
      ~{true="-ion" false="" ion} \
      ~{true="-err-tab" false="" err_tab} \
      ~{true="-max-trim" false="" max_trim} \
      ~{true="-from-h5" false="" from_h_five} \
      ~{true="-count-only" false="" count_only}
  >>>
  parameter_meta {
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
    file: "(1 arg) :    reads file"
    km_er_size: "(1 arg) :    size of a kmer  [default '31']"
    abundance_min: "(1 arg) :    min abundance threshold for solid kmers  [default '3']"
    abundance_max: "(1 arg) :    max abundance threshold for solid kmers  [default '2147483647']"
    abundance_min_threshold: "(1 arg) :    min abundance hard threshold (only used when min abundance is \"auto\")  [default '3']"
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
}