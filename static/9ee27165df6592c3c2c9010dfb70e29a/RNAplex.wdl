version 1.0

task RNAplex {
  input {
    Boolean? detailed_help
    File? target
    String? accessibility_dir
    Boolean? binary
    File? param_file
    Int? temp
    Int? interaction_length
    Int? extension_cost
    Boolean? probe_mode
    Float? probe_concentration
    String? na_concentration
    Int? mg_concentration
    Float? k_concentration
    Float? tris_concentration
    Int? fast_folding
    Float? scale_accessibility
    Boolean? constraint
    Boolean? alignment_mode
    Boolean? convert_to_bin
    Int? duplex_distance
    Int? energy_threshold
    String? produce_ps
    String program
    String alignments
    String rna_plex
    String interaction
  }
  command <<<
    RNAplex \
      ~{program} \
      ~{alignments} \
      ~{rna_plex} \
      ~{interaction} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(accessibility_dir) then ("--accessibility-dir " +  '"' + accessibility_dir + '"') else ""} \
      ~{if (binary) then "--binary" else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if defined(interaction_length) then ("--interaction-length " +  '"' + interaction_length + '"') else ""} \
      ~{if defined(extension_cost) then ("--extension-cost " +  '"' + extension_cost + '"') else ""} \
      ~{if (probe_mode) then "--probe-mode" else ""} \
      ~{if defined(probe_concentration) then ("--probe-concentration " +  '"' + probe_concentration + '"') else ""} \
      ~{if defined(na_concentration) then ("--na-concentration " +  '"' + na_concentration + '"') else ""} \
      ~{if defined(mg_concentration) then ("--mg-concentration " +  '"' + mg_concentration + '"') else ""} \
      ~{if defined(k_concentration) then ("--k-concentration " +  '"' + k_concentration + '"') else ""} \
      ~{if defined(tris_concentration) then ("--tris-concentration " +  '"' + tris_concentration + '"') else ""} \
      ~{if defined(fast_folding) then ("--fast-folding " +  '"' + fast_folding + '"') else ""} \
      ~{if defined(scale_accessibility) then ("--scale-accessibility " +  '"' + scale_accessibility + '"') else ""} \
      ~{if (constraint) then "--constraint" else ""} \
      ~{if (alignment_mode) then "--alignment-mode" else ""} \
      ~{if (convert_to_bin) then "--convert-to-bin" else ""} \
      ~{if defined(duplex_distance) then ("--duplex-distance " +  '"' + duplex_distance + '"') else ""} \
      ~{if defined(energy_threshold) then ("--energy-threshold " +  '"' + energy_threshold + '"') else ""} \
      ~{if defined(produce_ps) then ("--produce-ps " +  '"' + produce_ps + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    target: "File containing the target sequence."
    accessibility_dir: "Location of the accessibility profiles."
    binary: "Allow the reading and parsing of memory dumped\\nopening energy file\\n(default=off)"
    param_file: "Read energy parameters from paramfile, instead\\nof using the default parameter set."
    temp: "Rescale energy parameters to a temperature T.\\nDefault is 37C."
    interaction_length: "Maximal length of an interaction\\n(default=`40')"
    extension_cost: "Cost to add to each nucleotide in a duplex\\n(default=`0')"
    probe_mode: "Compute Tm for probes  (default=off)"
    probe_concentration: "Set the probe concentration for the Tm\\ncomputation\\n(default=`1.0')"
    na_concentration: "Set the Na+ concentration for the Tm"
    mg_concentration: "Set the Mg2+ concentration for the Tm"
    k_concentration: "Set the K+ concentration for the Tm computation\\n(default=`1.0')"
    tris_concentration: "Set the tris+ concentration for the Tm\\ncomputation\\n(default=`1.0')"
    fast_folding: "Speedup of the target search\\n(default=`0')"
    scale_accessibility: "Rescale all opening energy by a factor V\\n(default=`1.0')"
    constraint: "Calculate structures subject to constraints.\\n(default=off)"
    alignment_mode: "Tells RNAplex to compute interactions based on"
    convert_to_bin: "If set, RNAplex will convert all opening energy\\nfile in a directory set by the -a option into\\nbinary opening energy files\\n(default=off)"
    duplex_distance: "Distance between target 3' ends of two\\nconsecutive duplexes\\n(default=`0')"
    energy_threshold: "Minimal energy for a duplex to be returned\\n(default=`-100000')"
    produce_ps: "Draw an alignment annotated interaction from"
    program: "-q, --query=STRING            File containing the query sequence."
    alignments: "(default=off)"
    rna_plex: "-L, --WindowLength=INT        Tells how large the region around the target "
    interaction: "(default=`1')"
  }
  output {
    File out_stdout = stdout()
  }
}