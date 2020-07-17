version 1.0

task Yaml2gff.1.4.pl {
  input {
    String? filter_status
    String yamltwogffdotpl
    String scipio_dot_yaml
    String scipio_dot_gff
  }
  command <<<
    yaml2gff.1.4.pl \
      ~{yamltwogffdotpl} \
      ~{scipio_dot_yaml} \
      ~{scipio_dot_gff} \
      ~{if defined(filter_status) then ("--filterstatus " +  '"' + filter_status + '"') else ""}
  >>>
  parameter_meta {
    filter_status: "filter out alignments with given status, e.g. 'incomplete'                                                                                                                                        "
    yamltwogffdotpl: ""
    scipio_dot_yaml: ""
    scipio_dot_gff: ""
  }
}