version 1.0

task Treemaker {
  input {
    File? output_file
    String? mode
    Boolean? labels
    String inputfile
  }
  command <<<
    treemaker \
      ~{inputfile} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if (labels) then "--labels" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file: "output file"
    mode: "output mode: nexus or newick"
    labels: "show node labels"
    inputfile: "inputfile"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}