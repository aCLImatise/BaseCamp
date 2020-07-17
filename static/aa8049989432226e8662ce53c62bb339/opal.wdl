version 1.0

task Opal.py {
  input {
    String? gold_standard_file
    String? output_dir
    Boolean? no_normalization
    Boolean? plot_abundances
    String? labels
    String? time
    String? memory
    String? desc
    String? ranks
    Boolean? silent
    String profiles_files
  }
  command <<<
    opal.py \
      ~{profiles_files} \
      ~{if defined(gold_standard_file) then ("--gold_standard_file " +  '"' + gold_standard_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{true="--no_normalization" false="" no_normalization} \
      ~{true="--plot_abundances" false="" plot_abundances} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(time) then ("--time " +  '"' + time + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(desc) then ("--desc " +  '"' + desc + '"') else ""} \
      ~{if defined(ranks) then ("--ranks " +  '"' + ranks + '"') else ""} \
      ~{true="--silent" false="" silent}
  >>>
  parameter_meta {
    gold_standard_file: "Gold standard file"
    output_dir: "Directory to write the results to"
    no_normalization: "Do not normalize samples"
    plot_abundances: "Plot abundances in the gold standard (can take some minutes)"
    labels: "Comma-separated profiles names"
    time: "Comma-separated runtimes in hours"
    memory: "Comma-separated memory usages in gigabytes"
    desc: "Description for HTML page"
    ranks: "Highest and lowest taxonomic ranks to consider in performance rankings, comma-separated. Valid ranks: superkingdom, phylum, class, order, family, genus, species, strain (default:superkingdom,species)"
    silent: "Silent mode"
    profiles_files: "Files of profiles"
  }
}