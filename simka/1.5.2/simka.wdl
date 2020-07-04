version 1.0

task Simka {
  input {
    Boolean? in
    Boolean? out
    Boolean? out_tmp
    Boolean? keep_tmp
    Boolean? data_info
    Boolean? verbose
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
      ~{true="-in" false="" in} \
      ~{true="-out" false="" out} \
      ~{true="-out-tmp" false="" out_tmp} \
      ~{true="-keep-tmp" false="" keep_tmp} \
      ~{true="-data-info" false="" data_info} \
      ~{true="-verbose" false="" verbose} \
      ~{true="-simple-dist" false="" simple_dist} \
      ~{true="-complex-dist" false="" complex_dist} \
      ~{true="-kmer-size" false="" km_er_size} \
      ~{true="-abundance-min" false="" abundance_min} \
      ~{true="-abundance-max" false="" abundance_max} \
      ~{true="-kmer-shannon-index" false="" km_er_shannon_index} \
      ~{true="-max-reads" false="" max_reads} \
      ~{true="-min-read-size" false="" min_read_size} \
      ~{true="-min-shannon-index" false="" min_shannon_index} \
      ~{true="-nb-cores" false="" nb_cores} \
      ~{true="-max-memory" false="" max_memory} \
      ~{true="-max-count" false="" max_count} \
      ~{true="-max-merge" false="" max_merge} \
      ~{true="-count-cmd" false="" count_cmd} \
      ~{true="-merge-cmd" false="" merge_cmd} \
      ~{true="-count-file" false="" count_file} \
      ~{true="-merge-file" false="" merge_file}
  >>>
  parameter_meta {
    in: "(1 arg) :    input file of samples. One sample per line: id1: filename1..."
    out: "(1 arg) :    output directory for result files (distance matrices)  [default './simka_results']"
    out_tmp: "(1 arg) :    output directory for temporary files"
    keep_tmp: "(0 arg) :    keep temporary files"
    data_info: "(0 arg) :    compute (and display) information before running Simka, such as the number of reads per dataset"
    verbose: "(1 arg) :    verbosity level  [default '1']"
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
}