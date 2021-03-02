version 1.0

task Dsk {
  input {
    Boolean? nb_cores
    Boolean? verbose
    Boolean? version
    Boolean? arg_reads_file
    Boolean? km_er_size
    Boolean? abundance_min
    Boolean? abundance_max
    Boolean? abundance_min_threshold
    Boolean? histo_max
    Boolean? solidity_kind
    Boolean? solidity_custom
    Boolean? max_memory
    Boolean? max_disk
    File? solid_km_ers_out
    File? out
    Directory? out_dir
    Directory? out_tmp
    Boolean? out_compress
    Boolean? storage_type
    Boolean? histo_two_d
    Boolean? histo
    Boolean? minimizer_type
    Boolean? minimizer_size
    Boolean? repartition_type
  }
  command <<<
    dsk \
      ~{if (nb_cores) then "-nb-cores" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (arg_reads_file) then "-file" else ""} \
      ~{if (km_er_size) then "-kmer-size" else ""} \
      ~{if (abundance_min) then "-abundance-min" else ""} \
      ~{if (abundance_max) then "-abundance-max" else ""} \
      ~{if (abundance_min_threshold) then "-abundance-min-threshold" else ""} \
      ~{if (histo_max) then "-histo-max" else ""} \
      ~{if (solidity_kind) then "-solidity-kind" else ""} \
      ~{if (solidity_custom) then "-solidity-custom" else ""} \
      ~{if (max_memory) then "-max-memory" else ""} \
      ~{if (max_disk) then "-max-disk" else ""} \
      ~{if (solid_km_ers_out) then "-solid-kmers-out" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (out_dir) then "-out-dir" else ""} \
      ~{if (out_tmp) then "-out-tmp" else ""} \
      ~{if (out_compress) then "-out-compress" else ""} \
      ~{if (storage_type) then "-storage-type" else ""} \
      ~{if (histo_two_d) then "-histo2D" else ""} \
      ~{if (histo) then "-histo" else ""} \
      ~{if (minimizer_type) then "-minimizer-type" else ""} \
      ~{if (minimizer_size) then "-minimizer-size" else ""} \
      ~{if (repartition_type) then "-repartition-type" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
    version: "(0 arg) :    version"
    arg_reads_file: "(1 arg) :    reads file"
    km_er_size: "(1 arg) :    size of a kmer  [default '31']"
    abundance_min: "(1 arg) :    min abundance threshold for solid kmers  [default '2']"
    abundance_max: "(1 arg) :    max abundance threshold for solid kmers  [default '2147483647']"
    abundance_min_threshold: "(1 arg) :    min abundance hard threshold (only used when min abundance is \\\"auto\\\")  [default '2']"
    histo_max: "(1 arg) :    max number of values in kmers histogram  [default '10000']"
    solidity_kind: "(1 arg) :    way to compute counts of several files (sum, min, max, one, all, custom)  [default 'sum']"
    solidity_custom: "(1 arg) :    when solidity-kind is custom, specifies list of files where kmer must be present  [default '']"
    max_memory: "(1 arg) :    max memory (in MBytes)  [default '5000']"
    max_disk: "(1 arg) :    max disk   (in MBytes)  [default '0']"
    solid_km_ers_out: "(1 arg) :    output file for solid kmers (only when constructing a graph)  [default '']"
    out: "(1 arg) :    output file  [default '']"
    out_dir: "(1 arg) :    output directory  [default '.']"
    out_tmp: "(1 arg) :    output directory for temporary files  [default '.']"
    out_compress: "(1 arg) :    h5 compression level (0:none, 9:best)  [default '0']"
    storage_type: "(1 arg) :    storage type of kmer counts ('hdf5' or 'file')  [default 'hdf5']"
    histo_two_d: "(1 arg) :    compute the 2D histogram (with first file = genome, remaining files = reads)  [default '0']"
    histo: "(1 arg) :    output the kmer abundance histogram  [default '0']"
    minimizer_type: "(1 arg) :    minimizer type (0=lexi, 1=freq)  [default '0']"
    minimizer_size: "(1 arg) :    size of a minimizer  [default '10']"
    repartition_type: "(1 arg) :    minimizer repartition (0=unordered, 1=ordered)  [default '0']"
  }
  output {
    File out_stdout = stdout()
    File out_solid_km_ers_out = "${in_solid_km_ers_out}"
    File out_out = "${in_out}"
    Directory out_out_dir = "${in_out_dir}"
    Directory out_out_tmp = "${in_out_tmp}"
  }
}