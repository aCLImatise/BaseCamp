version 1.0

task Simka {
  input {
    Boolean? in
    Directory? out
    Directory? out_tmp
    Boolean? keep_tmp
    Boolean? data_info
    Boolean? verbose
    Boolean? version
    Boolean? simple_dist
    Boolean? complex_dist
    Boolean? km_er_size
    Boolean? abundance_min
    Boolean? abundance_max
    Boolean? km_er_shannon_index
    Boolean? max_reads
    Boolean? min_read_size
    Boolean? min_shannon_index
    Boolean? nb_cores
    Boolean? max_memory
    Boolean? max_count
    Boolean? max_merge
    Boolean? count_cmd
    Boolean? merge_cmd
    Boolean? count_file
    Boolean? merge_file
  }
  command <<<
    simka \
      ~{if (in) then "-in" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (out_tmp) then "-out-tmp" else ""} \
      ~{if (keep_tmp) then "-keep-tmp" else ""} \
      ~{if (data_info) then "-data-info" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (simple_dist) then "-simple-dist" else ""} \
      ~{if (complex_dist) then "-complex-dist" else ""} \
      ~{if (km_er_size) then "-kmer-size" else ""} \
      ~{if (abundance_min) then "-abundance-min" else ""} \
      ~{if (abundance_max) then "-abundance-max" else ""} \
      ~{if (km_er_shannon_index) then "-kmer-shannon-index" else ""} \
      ~{if (max_reads) then "-max-reads" else ""} \
      ~{if (min_read_size) then "-min-read-size" else ""} \
      ~{if (min_shannon_index) then "-min-shannon-index" else ""} \
      ~{if (nb_cores) then "-nb-cores" else ""} \
      ~{if (max_memory) then "-max-memory" else ""} \
      ~{if (max_count) then "-max-count" else ""} \
      ~{if (max_merge) then "-max-merge" else ""} \
      ~{if (count_cmd) then "-count-cmd" else ""} \
      ~{if (merge_cmd) then "-merge-cmd" else ""} \
      ~{if (count_file) then "-count-file" else ""} \
      ~{if (merge_file) then "-merge-file" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/simka:1.5.3--he513fc3_0"
  }
  parameter_meta {
    in: "(1 arg) :    input file of samples. One sample per line: id1: filename1..."
    out: "(1 arg) :    output directory for result files (distance matrices)  [default './simka_results']"
    out_tmp: "(1 arg) :    output directory for temporary files"
    keep_tmp: "(0 arg) :    keep temporary files"
    data_info: "(0 arg) :    compute (and display) information before running Simka, such as the number of reads per dataset"
    verbose: "(1 arg) :    verbosity level  [default '1']"
    version: "(0 arg) :    version"
    simple_dist: "(0 arg) :    compute all simple distances (Chord, Hellinger...)"
    complex_dist: "(0 arg) :    compute all complex distances (Jensen-Shannon...)"
    km_er_size: "(1 arg) :    size of a kmer  [default '21']"
    abundance_min: "(1 arg) :    min abundance a kmer need to be considered  [default '2']"
    abundance_max: "(1 arg) :    max abundance a kmer can have to be considered  [default '999999999']"
    km_er_shannon_index: "(1 arg) :    minimal Shannon index a kmer should have to be kept. Float in [0,2]  [default '0']"
    max_reads: "(1 arg) :    maximum number of reads per sample to process. Can be -1: use all reads. Can be 0: estimate it  [default '-1']"
    min_read_size: "(1 arg) :    minimal size a read should have to be kept  [default '0']"
    min_shannon_index: "(1 arg) :    minimal Shannon index a read should have to be kept. Float in [0,2]  [default '0']"
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    max_memory: "(1 arg) :    max memory (MB)  [default '5000']"
    max_count: "(1 arg) :    maximum number of simultaneous counting jobs (a higher value improve execution time but increase temporary disk usage)  [default '']"
    max_merge: "(1 arg) :    maximum number of simultaneous merging jobs (1 job = 1 core)  [default '']"
    count_cmd: "(1 arg) :    command to submit counting job  [default '']"
    merge_cmd: "(1 arg) :    command to submit merging job  [default '']"
    count_file: "(1 arg) :    filename to the couting job template  [default '']"
    merge_file: "(1 arg) :    filename to the merging job template  [default '']"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
    Directory out_out_tmp = "${in_out_tmp}"
  }
}