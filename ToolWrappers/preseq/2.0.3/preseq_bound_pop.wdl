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
    Boolean? vals
    Boolean? bam
    Boolean? seg_len
    Boolean? quick
    Boolean? seed
    Boolean? about
    String bound_pop
    File sorted_bed_file
  }
  command <<<
    preseq bound_pop \
      ~{bound_pop} \
      ~{sorted_bed_file} \
      ~{if (species_richness_output) then "-output" else ""} \
      ~{if (max_num_points) then "-max_num_points" else ""} \
      ~{if (tolerance) then "-tolerance" else ""} \
      ~{if (bootstraps) then "-bootstraps" else ""} \
      ~{if (c_level) then "-clevel" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (pe) then "-pe" else ""} \
      ~{if (hist) then "-hist" else ""} \
      ~{if (vals) then "-vals" else ""} \
      ~{if (bam) then "-bam" else ""} \
      ~{if (seg_len) then "-seg_len" else ""} \
      ~{if (quick) then "-quick" else ""} \
      ~{if (seed) then "-seed" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    species_richness_output: "species richness output file (default: stdout)"
    max_num_points: "maximum number of points in quadrature estimates\\n(default: 10)"
    tolerance: "numerical tolerance (default: 1e-20)"
    bootstraps: "number of bootstraps (default: 500)"
    c_level: "level for confidence intervals (default: 0.95)"
    verbose: "print more information"
    pe: "input is paired end read file"
    hist: "input is a text file containing the observed histogram"
    vals: "input is a text file containing only the observed\\nduplicate counts"
    bam: "input is in BAM format"
    seg_len: "maximum segment length when merging paired end bam reads\\n(default: 5000)"
    quick: "quick mode, estimate without bootstrapping"
    seed: "seed for random number generator"
    about: "print about message"
    bound_pop: ""
    sorted_bed_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_species_richness_output = "${in_species_richness_output}"
  }
}