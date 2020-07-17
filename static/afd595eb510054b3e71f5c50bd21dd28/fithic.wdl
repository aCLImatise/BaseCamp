version 1.0

task Fithic {
  input {
    Int? interactions
    String? fragments
    String? outdir
    String? resolution
    String? biases
    String? passes
    String? no_of_bins
    String? mapp_ability_th_res
    String? lib
    String? upper_bound
    String? lower_bound
    Boolean? visual
    String? contact_type
    String? bias_lower_bound
    String? bias_upper_bound
  }
  command <<<
    fithic \
      ~{if defined(interactions) then ("--interactions " +  '"' + interactions + '"') else ""} \
      ~{if defined(fragments) then ("--fragments " +  '"' + fragments + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(resolution) then ("--resolution " +  '"' + resolution + '"') else ""} \
      ~{if defined(biases) then ("--biases " +  '"' + biases + '"') else ""} \
      ~{if defined(passes) then ("--passes " +  '"' + passes + '"') else ""} \
      ~{if defined(no_of_bins) then ("--noOfBins " +  '"' + no_of_bins + '"') else ""} \
      ~{if defined(mapp_ability_th_res) then ("--mappabilityThres " +  '"' + mapp_ability_th_res + '"') else ""} \
      ~{if defined(lib) then ("--lib " +  '"' + lib + '"') else ""} \
      ~{if defined(upper_bound) then ("--upperbound " +  '"' + upper_bound + '"') else ""} \
      ~{if defined(lower_bound) then ("--lowerbound " +  '"' + lower_bound + '"') else ""} \
      ~{true="--visual" false="" visual} \
      ~{if defined(contact_type) then ("--contactType " +  '"' + contact_type + '"') else ""} \
      ~{if defined(bias_lower_bound) then ("--biasLowerBound " +  '"' + bias_lower_bound + '"') else ""} \
      ~{if defined(bias_upper_bound) then ("--biasUpperBound " +  '"' + bias_upper_bound + '"') else ""}
  >>>
  parameter_meta {
    interactions: "REQUIRED: interactions between fragment pairs are read from INTERSFILE"
    fragments: "REQUIRED: midpoints (or start indices) of the fragments are read from FRAGSFILE"
    outdir: "REQUIRED: where the output files will be written"
    resolution: "REQUIRED: If the files are fixed size, please supply the resolution of the dataset here; otherwise, please use a value of 0 if the data is not fixed size."
    biases: "RECOMMENDED: biases calculated by ICE or KR norm for each locus are read from BIASFILE"
    passes: "OPTIONAL: number of spline passes to run Default is 1"
    no_of_bins: "OPTIONAL: number of equal-occupancy (count) bins. Default is 100"
    mapp_ability_th_res: "OPTIONAL: minimum number of hits per locus that has to exist to call it mappable. DEFAULT is 1."
    lib: "OPTIONAL: Name of the library that is analyzed to be used for name of file prefixes . DEFAULT is fithic"
    upper_bound: "OPTIONAL: upper bound on the intra-chromosomal distance range (unit: base pairs). DEFAULT no limit. STRONGLY suggested to have a limit for large genomes, such as human/mouse. ex. '1000000, 5000000, etc.'"
    lower_bound: "OPTIONAL: lower bound on the intra-chromosomal distance range (unit: base pairs). DEFAULT no limit. Suggested limit is 2x the resolution of the input files"
    visual: "OPTIONAL: use this flag for generating plots. DEFAULT is False."
    contact_type: "OPTIONAL: use this flag to determine which chromosomal regions to study (intraOnly, interOnly, All) DEFAULT is intraOnly"
    bias_lower_bound: "OPTIONAL: this flag is used to determine the lower bound of bias values to discard. DEFAULT is 0.5"
    bias_upper_bound: "OPTIONAL: this flag is used to determine the upper bound of bias values to discard. DEFAULT is 2"
  }
}