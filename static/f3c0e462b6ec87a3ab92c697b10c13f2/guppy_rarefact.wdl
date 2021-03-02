version 1.0

task GuppyRarefact {
  input {
    Boolean? pp
    Boolean? specify_filename_write
    Boolean? out_dir
    Boolean? prefix
    Boolean? csv
    Boolean? variance
    Boolean? weight_as_count
    Boolean? highest_value_k
    Boolean? help
    String rare_fact
    String place_file
  }
  command <<<
    guppy rarefact \
      ~{rare_fact} \
      ~{place_file} \
      ~{if (pp) then "--pp" else ""} \
      ~{if (specify_filename_write) then "-o" else ""} \
      ~{if (out_dir) then "--out-dir" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (variance) then "--variance" else ""} \
      ~{if (weight_as_count) then "--weight-as-count" else ""} \
      ~{if (highest_value_k) then "-k" else ""} \
      ~{if (help) then "--help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pp: "Use posterior probability for the weight."
    specify_filename_write: "Specify the filename to write to."
    out_dir: "Specify the directory to write files to."
    prefix: "Specify a string to be prepended to filenames."
    csv: "Output the results as csv instead of a padded matrix."
    variance: "Calculate variance of phylogenetic entropy."
    weight_as_count: "Interpret (integer) weights on pqueries as counts."
    highest_value_k: "The highest value of k to calculate."
    help: "Display this list of options"
    rare_fact: ""
    place_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}