version 1.0

task SimkaMerge {
  input {
    Boolean? nb_cores
    Boolean? verbose
    Boolean? version
    Boolean? km_er_size
    Boolean? in
    Boolean? out_tmp_sim_ka
    Boolean? partition_id
    Boolean? max_memory
    Boolean? km_er_shannon_index
    Boolean? simple_dist
    Boolean? complex_dist
  }
  command <<<
    simkaMerge \
      ~{if (nb_cores) then "-nb-cores" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (version) then "-version" else ""} \
      ~{if (km_er_size) then "-kmer-size" else ""} \
      ~{if (in) then "-in" else ""} \
      ~{if (out_tmp_sim_ka) then "-out-tmp-simka" else ""} \
      ~{if (partition_id) then "-partition-id" else ""} \
      ~{if (max_memory) then "-max-memory" else ""} \
      ~{if (km_er_shannon_index) then "-kmer-shannon-index" else ""} \
      ~{if (simple_dist) then "-simple-dist" else ""} \
      ~{if (complex_dist) then "-complex-dist" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/simka:1.5.3--he513fc3_0"
  }
  parameter_meta {
    nb_cores: "(1 arg) :    number of cores  [default '0']"
    verbose: "(1 arg) :    verbosity level  [default '1']"
    version: "(0 arg) :    version"
    km_er_size: "(1 arg) :    kmer size"
    in: "(1 arg) :    input filename"
    out_tmp_sim_ka: "(1 arg) :    tmp output"
    partition_id: "(1 arg) :    bank name"
    max_memory: "(1 arg) :    bank name"
    km_er_shannon_index: "(1 arg) :    bank name"
    simple_dist: "(0 arg) :    compute simple distances"
    complex_dist: "(0 arg) :    compute complex distances"
  }
  output {
    File out_stdout = stdout()
  }
}