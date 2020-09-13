version 1.0

task Roary2fripanpy {
  input {
    File? specify_roary_output
    String prefix
  }
  command <<<
    roary2fripan_py \
      ~{prefix} \
      ~{if defined(specify_roary_output) then ("--input " +  '"' + specify_roary_output + '"') else ""}
  >>>
  parameter_meta {
    specify_roary_output: "Specify Roary output (default = \\\"gene_presence_absence.csv\\\")"
    prefix: "Specify output prefix"
  }
  output {
    File out_stdout = stdout()
  }
}