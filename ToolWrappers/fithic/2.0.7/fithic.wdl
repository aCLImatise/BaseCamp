version 1.0

task Fithic {
  input {
    File? interactions
    File? fragments
    String? outdir
    Int? resolution
    File? biases
    Int? passes
    Int? no_of_bins
    Int? mapp_ability_th_res
    File? lib
    Int? upper_bound
    Int? lower_bound
    Boolean? visual
    String? contact_type
    Float? bias_lower_bound
    Int? bias_upper_bound
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
      ~{if (visual) then "--visual" else ""} \
      ~{if defined(contact_type) then ("--contactType " +  '"' + contact_type + '"') else ""} \
      ~{if defined(bias_lower_bound) then ("--biasLowerBound " +  '"' + bias_lower_bound + '"') else ""} \
      ~{if defined(bias_upper_bound) then ("--biasUpperBound " +  '"' + bias_upper_bound + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    interactions: "REQUIRED: interactions between fragment pairs are read\\nfrom INTERSFILE"
    fragments: "REQUIRED: midpoints (or start indices) of the\\nfragments are read from FRAGSFILE"
    outdir: "REQUIRED: where the output files will be written"
    resolution: "REQUIRED: If the files are fixed size, please supply\\nthe resolution of the dataset here; otherwise, please\\nuse a value of 0 if the data is not fixed size."
    biases: "RECOMMENDED: biases calculated by ICE or KR norm for\\neach locus are read from BIASFILE"
    passes: "OPTIONAL: number of spline passes to run Default is 1"
    no_of_bins: "OPTIONAL: number of equal-occupancy (count) bins.\\nDefault is 100"
    mapp_ability_th_res: "OPTIONAL: minimum number of hits per locus that has to\\nexist to call it mappable. DEFAULT is 1."
    lib: "OPTIONAL: Name of the library that is analyzed to be\\nused for name of file prefixes . DEFAULT is fithic"
    upper_bound: "OPTIONAL: upper bound on the intra-chromosomal\\ndistance range (unit: base pairs). DEFAULT no limit.\\nSTRONGLY suggested to have a limit for large genomes,\\nsuch as human/mouse. ex. '1000000, 5000000, etc.'"
    lower_bound: "OPTIONAL: lower bound on the intra-chromosomal\\ndistance range (unit: base pairs). DEFAULT no limit.\\nSuggested limit is 2x the resolution of the input\\nfiles"
    visual: "OPTIONAL: use this flag for generating plots. DEFAULT\\nis False."
    contact_type: "OPTIONAL: use this flag to determine which chromosomal\\nregions to study (intraOnly, interOnly, All) DEFAULT\\nis intraOnly"
    bias_lower_bound: "OPTIONAL: this flag is used to determine the lower\\nbound of bias values to discard. DEFAULT is 0.5"
    bias_upper_bound: "OPTIONAL: this flag is used to determine the upper\\nbound of bias values to discard. DEFAULT is 2"
  }
  output {
    File out_stdout = stdout()
  }
}