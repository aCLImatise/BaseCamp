version 1.0

task Coinfinder {
  input {
    File? path_genepresenceabsencecsv_output
    String? input_roar_y
    String? phylogeny
    String? associate
    String? dissociate
    Float? level
    String? bonferroni
    String? no_correction
    String? fraction
    String? greater
    String? less
    String? two_tailed
    Int? num_cores
    String? verbose
    String? filter
    Float? up_fil_threshold
    Float? fil_threshold
    String? query
    String? test
    String? all
    String? prefix_default_coincident
  }
  command <<<
    coinfinder \
      ~{if defined(path_genepresenceabsencecsv_output) then ("--input " +  '"' + path_genepresenceabsencecsv_output + '"') else ""} \
      ~{if defined(input_roar_y) then ("--inputroary " +  '"' + input_roar_y + '"') else ""} \
      ~{if defined(phylogeny) then ("--phylogeny " +  '"' + phylogeny + '"') else ""} \
      ~{if defined(associate) then ("--associate " +  '"' + associate + '"') else ""} \
      ~{if defined(dissociate) then ("--dissociate " +  '"' + dissociate + '"') else ""} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""} \
      ~{if defined(bonferroni) then ("--bonferroni " +  '"' + bonferroni + '"') else ""} \
      ~{if defined(no_correction) then ("--nocorrection " +  '"' + no_correction + '"') else ""} \
      ~{if defined(fraction) then ("--fraction " +  '"' + fraction + '"') else ""} \
      ~{if defined(greater) then ("--greater " +  '"' + greater + '"') else ""} \
      ~{if defined(less) then ("--less " +  '"' + less + '"') else ""} \
      ~{if defined(two_tailed) then ("--twotailed " +  '"' + two_tailed + '"') else ""} \
      ~{if defined(num_cores) then ("--num_cores " +  '"' + num_cores + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(up_fil_threshold) then ("--upfilthreshold " +  '"' + up_fil_threshold + '"') else ""} \
      ~{if defined(fil_threshold) then ("--filthreshold " +  '"' + fil_threshold + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(test) then ("--test " +  '"' + test + '"') else ""} \
      ~{if defined(all) then ("--all " +  '"' + all + '"') else ""} \
      ~{if defined(prefix_default_coincident) then ("--output " +  '"' + prefix_default_coincident + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_genepresenceabsencecsv_output: "The path to the gene_presence_absence.csv output from Roary"
    input_roar_y: "Set if -i is in the gene_presence_absence.csv format from Roary"
    phylogeny: "Phylogeny of Betas in Newick format (required)"
    associate: "Overlap; identify groups that tend to associate/co-occur (default)."
    dissociate: "Separation; identify groups that tend to dissociate/avoid."
    level: "Specify the significnace level cutoff (default: 0.05)"
    bonferroni: "Bonferroni correction multiple correction (recommended & default)"
    no_correction: "No correction, use value as-is"
    fraction: "(Connectivity analysis only) Use fraction rather than p-value"
    greater: "Greater (recommended & default)"
    less: "Less"
    two_tailed: "Two-tailed"
    num_cores: "The number of cores to use (default: 2)"
    verbose: "Verbose output."
    filter: "Permit filtering of saturated and low-abundance data."
    up_fil_threshold: "filter threshold for high-abundance data filtering (default: 1.0 i.e. any alpha in >=100/% of betas."
    fil_threshold: "Threshold for low-abundance data filtering (default: 0.05 i.e. any alpha in <=5% of betas."
    query: "Query a specific gene."
    test: "Runs the test cases and exits."
    all: "Outputs all results, regardless of significance."
    prefix_default_coincident: "The prefix of all output files (default: coincident)."
  }
  output {
    File out_stdout = stdout()
    File out_path_genepresenceabsencecsv_output = "${in_path_genepresenceabsencecsv_output}"
  }
}