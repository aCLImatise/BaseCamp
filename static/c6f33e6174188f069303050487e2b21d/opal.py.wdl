version 1.0

task Opalpy {
  input {
    File? gold_standard_file
    Directory? output_dir
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
    opal_py \
      ~{profiles_files} \
      ~{if defined(gold_standard_file) then ("--gold_standard_file " +  '"' + gold_standard_file + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if (no_normalization) then "--no_normalization" else ""} \
      ~{if (plot_abundances) then "--plot_abundances" else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(time) then ("--time " +  '"' + time + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(desc) then ("--desc " +  '"' + desc + '"') else ""} \
      ~{if defined(ranks) then ("--ranks " +  '"' + ranks + '"') else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gold_standard_file: "Gold standard file"
    output_dir: "Directory to write the results to"
    no_normalization: "Do not normalize samples"
    plot_abundances: "Plot abundances in the gold standard (can take some\\nminutes)"
    labels: "Comma-separated profiles names"
    time: "Comma-separated runtimes in hours"
    memory: "Comma-separated memory usages in gigabytes"
    desc: "Description for HTML page"
    ranks: "Highest and lowest taxonomic ranks to consider in\\nperformance rankings, comma-separated. Valid ranks:\\nsuperkingdom, phylum, class, order, family, genus,\\nspecies, strain (default:superkingdom,species)"
    silent: "Silent mode"
    profiles_files: "Files of profiles"
  }
  output {
    File out_stdout = stdout()
  }
}