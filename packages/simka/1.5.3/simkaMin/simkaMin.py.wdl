version 1.0

task SimkaMinpy {
  input {
    Boolean? in
    Directory? out
    Boolean? seed
    Boolean? bin
    Boolean? nb_cores
    Boolean? max_memory
    Boolean? km_er_size
    Boolean? nb_km_ers
    Boolean? filter
    Boolean? max_reads
    Boolean? min_read_size
    Boolean? min_shannon_index
  }
  command <<<
    simkaMin_py \
      ~{if (in) then "-in" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if (bin) then "-bin" else ""} \
      ~{if (nb_cores) then "-nb-cores" else ""} \
      ~{if (max_memory) then "-max-memory" else ""} \
      ~{if (km_er_size) then "-kmer-size" else ""} \
      ~{if (nb_km_ers) then "-nb-kmers" else ""} \
      ~{if (filter) then "-filter" else ""} \
      ~{if (max_reads) then "-max-reads" else ""} \
      ~{if (min_read_size) then "-min-read-size" else ""} \
      ~{if (min_shannon_index) then "-min-shannon-index" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/simka:1.5.3--he513fc3_0"
  }
  parameter_meta {
    in: "(1 arg) :    input file of datasets. One sample per line: id1: filename1..."
    out: "(1 arg) :    output directory for result files (distance matrices) [Default: ./simka_results]"
    seed: "(1 arg) :    seed used for random k-mer selection [Default: 100]"
    bin: "(1 arg) :    path to simkaMinCore program (to be specified if not in PATH, or not in standard installation directory <simkaDir>/build/bin/simkaMinCore)"
    nb_cores: "(1 arg) :    number of cores [Default: 0]"
    max_memory: "(1 arg) :    max memory (MB) [Default: 8000]"
    km_er_size: "(1 arg) :    size of a kmer [Default: 21]"
    nb_km_ers: "(1 arg) :    number of kmers used to compute distances [Default: 1000000]"
    filter: "(0 arg) :    filter out k-mer seen one time (potentially erroneous)"
    max_reads: "(1 arg) :    maximum number of reads per sample to process [Default: 0]"
    min_read_size: "(1 arg) :    minimal size a read should have to be kept [Default: 0]"
    min_shannon_index: "(1 arg) :    minimal Shannon index a read should have to be kept. Float in [0,2] [Default: 0]"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}