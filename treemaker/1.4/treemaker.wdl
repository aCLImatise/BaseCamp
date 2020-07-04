version 1.0

task Treemaker {
  input {
    String? output_file
    String? mode
    Boolean? labels
    String inputfile
  }
  command <<<
    treemaker \
      ~{inputfile} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{true="--labels" false="" labels}
  >>>
  parameter_meta {
    output_file: "output file"
    mode: "output mode: nexus or newick"
    labels: "show node labels"
    inputfile: "inputfile"
  }
}