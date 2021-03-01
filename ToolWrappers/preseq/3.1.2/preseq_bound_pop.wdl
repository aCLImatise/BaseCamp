version 1.0

task PreseqBoundPop {
  input {
    File? species_richness_output
    Boolean? max_num_points
    Boolean? tolerance
    Boolean? bootstraps
    Boolean? c_level
    Boolean? verbose
    Boolean? pe
    Boolean? hist
    Boolean? bam
    Boolean? seg_len
    Boolean? quick
    Boolean? seed
    Boolean? about
    String histogram
  }
  command <<<
    preseq bound_pop \
      ~{histogram} \
      ~{if (species_richness_output) then "-output" else ""} \
      ~{if (max_num_points) then "-max_num_points" else ""} \
      ~{if (tolerance) then "-tolerance" else ""} \
      ~{if (bootstraps) then "-bootstraps" else ""} \
      ~{if (c_level) then "-clevel" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (pe) then "-pe" else ""} \
      ~{if (hist) then "-hist" else ""} \
      ~{if (bam) then "-bam" else ""} \
      ~{if (seg_len) then "-seg_len" else ""} \
      ~{if (quick) then "-quick" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/preseq:3.1.2--hfb6f838_0"
  }
  parameter_meta {
    species_richness_output: "species richness output file (default: stdout)"
    max_num_points: "maximum number of points in quadrature estimates\\n[10]"
    tolerance: "numerical tolerance [0.000000]"
    bootstraps: "number of bootstraps [500]"
    c_level: "level for confidence intervals [0.950000]"
    verbose: "print more information"
    pe: "input is paired end read file"
    hist: "input is a text file containing the observed"
    bam: "input is in BAM format"
    seg_len: "maximum segment length when merging paired end\\nbam reads [5000]"
    quick: "quick mode, estimate without bootstrapping"
    seed: "seed for random number generator [408]"
    about: "print about message"
    histogram: "-V, -vals            input is a text file containing only the "
  }
  output {
    File out_stdout = stdout()
    File out_species_richness_output = "${in_species_richness_output}"
  }
}