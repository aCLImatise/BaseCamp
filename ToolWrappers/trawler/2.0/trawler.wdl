version 1.0

task Trawler {
  input {
    Boolean? sample
    Boolean? background
    Boolean? occurrence
    Boolean? m_length
    Boolean? wildcard
    Boolean? strand
    Boolean? overlap
    Boolean? motif_number
    Boolean? nb_of_cluster
    Directory? directory
    Boolean? dir_id
    Boolean? xtra_len
    Boolean? alignments
    Boolean? ref_species
    Boolean? clustering
    Boolean? web
    String var_if
    String optional
    String refer
    String to
    String using
    String var_21
    String fast_a
    String readme_dot_txt
    String for
    String formatted
    String files
    String var_input
    String more
    String information
    String on
    String var_31
    String format
  }
  command <<<
    trawler \
      ~{var_if} \
      ~{optional} \
      ~{refer} \
      ~{to} \
      ~{using} \
      ~{var_21} \
      ~{fast_a} \
      ~{readme_dot_txt} \
      ~{for} \
      ~{formatted} \
      ~{files} \
      ~{var_input} \
      ~{more} \
      ~{information} \
      ~{on} \
      ~{var_31} \
      ~{format} \
      ~{if (sample) then "-sample" else ""} \
      ~{if (background) then "-background" else ""} \
      ~{if (occurrence) then "-occurrence" else ""} \
      ~{if (m_length) then "-mlength" else ""} \
      ~{if (wildcard) then "-wildcard" else ""} \
      ~{if (strand) then "-strand" else ""} \
      ~{if (overlap) then "-overlap" else ""} \
      ~{if (motif_number) then "-motif_number" else ""} \
      ~{if (nb_of_cluster) then "-nb_of_cluster" else ""} \
      ~{if (directory) then "-directory" else ""} \
      ~{if (dir_id) then "-dir_id" else ""} \
      ~{if (xtra_len) then "-xtralen" else ""} \
      ~{if (alignments) then "-alignments" else ""} \
      ~{if (ref_species) then "-ref_species" else ""} \
      ~{if (clustering) then "-clustering" else ""} \
      ~{if (web) then "-web" else ""}
  >>>
  parameter_meta {
    sample: "(FASTA format) better to be repeat-masked."
    background: "(FASTA format)"
    occurrence: "(optional) minimum occurrence in the sample sequences. [DEFAULT = 10]"
    m_length: "(optional) minimum motif length. [DEFAULT = 6]"
    wildcard: "(optional) number of wild card in motifs. [DEFAULT = 2]"
    strand: "(optional) single or double [DEFAULT = double]"
    overlap: "(optional) in percentage. [DEFAULT = 70]"
    motif_number: "(optional) total number of motifs to be clustered. [DEFAULT = 200]"
    nb_of_cluster: "(optional) fixed number of cluster. if this option is set to an integer (1 and above), the k-mean clustering algorithm with fixed k will be used instead of the strongly connected component (SCC). [DEFAULT = NULL]"
    directory: "(optional) output directory. [DEFAULT = \\\"TRAWLER_HOME/myResults\\\"]"
    dir_id: "(optional) gives an id to the results directory. [DEFAULT = NULL]"
    xtra_len: "(optional) add bases around the motifs for the logo. [DEFAULT = 0]"
    alignments: "(optional) file containing the list of files containing the aligned sequences (see README file for more info) [DEFAULT = NULL]"
    ref_species: "(optional) name of the reference species [DEFAULT = NULL]"
    clustering: "(optional) if 1 the program clusters the instances, if 0 no clustering. [DEFAULT = 1]"
    web: "(optional) if 1 the output will be a web page with all the information [DEFAULT = 1]"
    var_if: ""
    optional: ""
    refer: ""
    to: ""
    using: ""
    var_21: ""
    fast_a: ""
    readme_dot_txt: ""
    for: ""
    formatted: ""
    files: ""
    var_input: ""
    more: ""
    information: ""
    on: ""
    var_31: ""
    format: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_directory = "${in_directory}"
  }
}