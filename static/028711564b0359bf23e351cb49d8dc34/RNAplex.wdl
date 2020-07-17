version 1.0

task RNAplex {
  input {
    Boolean? detailed_help
    String? query
    String? target
    String? accessibility_dir
    Boolean? binary
    String? param_file
    String? temp
    Int? interaction_length
    Int? extension_cost
    Boolean? probe_mode
    String? probe_concentration
    String? na_concentration
    String? mg_concentration
    String? k_concentration
    String? tris_concentration
    Int? fast_folding
    String? scale_accessibility
    Boolean? constraint
    Boolean? alignment_mode
    Boolean? convert_to_bin
    Int? duplex_distance
    String? energy_threshold
    String? produce_ps
    Int? window_length
  }
  command <<<
    RNAplex \
      ~{true="--detailed-help" false="" detailed_help} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(accessibility_dir) then ("--accessibility-dir " +  '"' + accessibility_dir + '"') else ""} \
      ~{true="--binary" false="" binary} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if defined(interaction_length) then ("--interaction-length " +  '"' + interaction_length + '"') else ""} \
      ~{if defined(extension_cost) then ("--extension-cost " +  '"' + extension_cost + '"') else ""} \
      ~{true="--probe-mode" false="" probe_mode} \
      ~{if defined(probe_concentration) then ("--probe-concentration " +  '"' + probe_concentration + '"') else ""} \
      ~{if defined(na_concentration) then ("--na-concentration " +  '"' + na_concentration + '"') else ""} \
      ~{if defined(mg_concentration) then ("--mg-concentration " +  '"' + mg_concentration + '"') else ""} \
      ~{if defined(k_concentration) then ("--k-concentration " +  '"' + k_concentration + '"') else ""} \
      ~{if defined(tris_concentration) then ("--tris-concentration " +  '"' + tris_concentration + '"') else ""} \
      ~{if defined(fast_folding) then ("--fast-folding " +  '"' + fast_folding + '"') else ""} \
      ~{if defined(scale_accessibility) then ("--scale-accessibility " +  '"' + scale_accessibility + '"') else ""} \
      ~{true="--constraint" false="" constraint} \
      ~{true="--alignment-mode" false="" alignment_mode} \
      ~{true="--convert-to-bin" false="" convert_to_bin} \
      ~{if defined(duplex_distance) then ("--duplex-distance " +  '"' + duplex_distance + '"') else ""} \
      ~{if defined(energy_threshold) then ("--energy-threshold " +  '"' + energy_threshold + '"') else ""} \
      ~{if defined(produce_ps) then ("--produce-ps " +  '"' + produce_ps + '"') else ""} \
      ~{if defined(window_length) then ("--WindowLength " +  '"' + window_length + '"') else ""}
  >>>
  parameter_meta {
    detailed_help: "Print help, including all details and hidden  options, and exit"
    query: "File containing the query sequence."
    target: "File containing the target sequence."
    accessibility_dir: "Location of the accessibility profiles."
    binary: "Allow the reading and parsing of memory dumped  opening energy file (default=off)"
    param_file: "Read energy parameters from paramfile, instead  of using the default parameter set."
    temp: "Rescale energy parameters to a temperature T.  Default is 37C."
    interaction_length: "Maximal length of an interaction (default=`40')"
    extension_cost: "Cost to add to each nucleotide in a duplex (default=`0')"
    probe_mode: "Compute Tm for probes  (default=off)"
    probe_concentration: "Set the probe concentration for the Tm  computation (default=`1.0')"
    na_concentration: "Set the Na+ concentration for the Tm  computation (default=`1.0')"
    mg_concentration: "Set the Mg2+ concentration for the Tm  computation (default=`1.0')"
    k_concentration: "Set the K+ concentration for the Tm computation (default=`1.0')"
    tris_concentration: "Set the tris+ concentration for the Tm  computation (default=`1.0')"
    fast_folding: "Speedup of the target search (default=`0')"
    scale_accessibility: "Rescale all opening energy by a factor V (default=`1.0')"
    constraint: "Calculate structures subject to constraints. (default=off)"
    alignment_mode: "Tells RNAplex to compute interactions based on  alignments (default=off)"
    convert_to_bin: "If set, RNAplex will convert all opening energy  file in a directory set by the -a option into  binary opening energy files (default=off)"
    duplex_distance: "Distance between target 3' ends of two  consecutive duplexes (default=`0')"
    energy_threshold: "Minimal energy for a duplex to be returned (default=`-100000')"
    produce_ps: "Draw an alignment annotated interaction from  RNAplex"
    window_length: "Tells how large the region around the target  site should be for redrawing the alignment  interaction (default=`1')"
  }
}