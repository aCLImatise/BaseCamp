version 1.0

task SimkaMinCoreSketch {
  input {
    Boolean? in
    File? out
    Boolean? seed
    Boolean? verbose
    Boolean? km_er_size
    Boolean? nb_km_ers
    Boolean? filter
    Boolean? max_reads
    Boolean? min_read_size
    Boolean? min_shannon_index
    Boolean? nb_cores
    Boolean? max_memory
  }
  command <<<
    simkaMinCore sketch \
      ~{if (in) then "-in" else ""} \
      ~{if (out) then "-out" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (km_er_size) then "-kmer-size" else ""} \
      ~{if (nb_km_ers) then "-nb-kmers" else ""} \
      ~{if (filter) then "-filter" else ""} \
      ~{if (max_reads) then "-max-reads" else ""} \
      ~{if (min_read_size) then "-min-read-size" else ""} \
      ~{if (min_shannon_index) then "-min-shannon-index" else ""} \
      ~{if (nb_cores) then "-nb-cores" else ""} \
      ~{if (max_memory) then "-max-memory" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "(1 arg) :    input filename | TODO SPECIF"
    out: "(1 arg) :    output filename for kmer spectrum  [default './simkaMin_kmers.bin']"
    seed: "(1 arg) :    seed used for random k-mer selection  [default '100']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
    km_er_size: "(1 arg) :    size of a kmer  [default '21']"
    nb_km_ers: "(1 arg) :    number of kmers used to compute distances  [default '100000']"
    filter: "(0 arg) :    filter out k-mer seen one time (potentially erroneous)"
    max_reads: "(1 arg) :    maximum number of reads to process. Set to 0 to use all reads  [default '0']"
    min_read_size: "(1 arg) :    minimal size a read should have to be kept  [default '0']"
    min_shannon_index: "(1 arg) :    minimal Shannon index a read should have to be kept. Float in [0,2]  [default '0']"
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    max_memory: "(1 arg) :    max memory (MB). Only used if -filter is enabled  [default '8000']"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}