version 1.0

task SimkaMinUpdatepy {
  input {
    Boolean? in
    Boolean? in_to_update
    Boolean? bin
    Boolean? nb_cores
    Boolean? max_memory
    Boolean? filter
    Boolean? max_reads
    Boolean? min_read_size
    Boolean? min_shannon_index
  }
  command <<<
    simkaMin_update_py \
      ~{if (in) then "-in" else ""} \
      ~{if (in_to_update) then "-in-to-update" else ""} \
      ~{if (bin) then "-bin" else ""} \
      ~{if (nb_cores) then "-nb-cores" else ""} \
      ~{if (max_memory) then "-max-memory" else ""} \
      ~{if (filter) then "-filter" else ""} \
      ~{if (max_reads) then "-max-reads" else ""} \
      ~{if (min_read_size) then "-min-read-size" else ""} \
      ~{if (min_shannon_index) then "-min-shannon-index" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/simka:1.5.3--he513fc3_0"
  }
  parameter_meta {
    in: "(1 arg) :    input file of datasets (datasets to add to existing simka results"
    in_to_update: "(1 arg) :    path to existing simka results to update (existing results will be overwritten)"
    bin: "(1 arg) :    path to simkaMinCore program (to be specified if not in PATH, or not in standard installation directory <simkaDir>/build/bin/simkaMinCore)"
    nb_cores: "(1 arg) :    number of cores [Default: 0]"
    max_memory: "(1 arg) :    max memory (MB) [Default: 8000]"
    filter: "(0 arg) :    filter out k-mer seen one time (potentially erroneous)"
    max_reads: "(1 arg) :    maximum number of reads per sample to process [Default: 0]"
    min_read_size: "(1 arg) :    minimal size a read should have to be kept [Default: 0]"
    min_shannon_index: "(1 arg) :    minimal Shannon index a read should have to be kept. Float in [0,2] [Default: 0]"
  }
  output {
    File out_stdout = stdout()
  }
}