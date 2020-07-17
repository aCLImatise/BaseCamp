version 1.0

task Trawler {
  input {
    Boolean? directory
    Boolean? dir_id
    Boolean? xtra_len
    Boolean? alignments
    Boolean? ref_species
    Boolean? clustering
    Boolean? web
    String var_if
    String using
    String bed
    String formatted
    String var_input
  }
  command <<<
    trawler \
      ~{var_if} \
      ~{using} \
      ~{bed} \
      ~{formatted} \
      ~{var_input} \
      ~{true="-directory" false="" directory} \
      ~{true="-dir_id" false="" dir_id} \
      ~{true="-xtralen" false="" xtra_len} \
      ~{true="-alignments" false="" alignments} \
      ~{true="-ref_species" false="" ref_species} \
      ~{true="-clustering" false="" clustering} \
      ~{true="-web" false="" web}
  >>>
  parameter_meta {
    directory: "(optional) output directory. [DEFAULT = \"TRAWLER_HOME/myResults\"]"
    dir_id: "(optional) gives an id to the results directory. [DEFAULT = NULL]"
    xtra_len: "(optional) add bases around the motifs for the logo. [DEFAULT = 0]"
    alignments: "(optional) file containing the list of files containing the aligned sequences (see README file for more info) [DEFAULT = NULL]"
    ref_species: "(optional) name of the reference species [DEFAULT = NULL]"
    clustering: "(optional) if 1 the program clusters the instances, if 0 no clustering. [DEFAULT = 1]"
    web: "(optional) if 1 the output will be a web page with all the information [DEFAULT = 1]"
    var_if: ""
    using: ""
    bed: ""
    formatted: ""
    var_input: ""
  }
}