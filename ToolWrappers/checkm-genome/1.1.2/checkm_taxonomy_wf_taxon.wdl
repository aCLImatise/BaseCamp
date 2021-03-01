version 1.0

task CheckmTaxonomyWfTaxon {
  input {
    Boolean? individual_markers
    Boolean? g
    Boolean? nt
    Boolean? ali
    String check_m
    String taxonomy_wf
  }
  command <<<
    checkm taxonomy_wf taxon \
      ~{check_m} \
      ~{taxonomy_wf} \
      ~{if (individual_markers) then "--individual_markers" else ""} \
      ~{if (g) then "-g" else ""} \
      ~{if (nt) then "--nt" else ""} \
      ~{if (ali) then "--ali" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    individual_markers: ""
    g: ""
    nt: ""
    ali: ""
    check_m: ""
    taxonomy_wf: ""
  }
  output {
    File out_stdout = stdout()
  }
}