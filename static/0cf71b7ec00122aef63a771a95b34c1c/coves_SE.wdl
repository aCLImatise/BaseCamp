version 1.0

task CovesSE {
  input {
    Boolean? show_pairs_watsoncrick
    String? set_expected_default
    Boolean? mountain_representation_structural
    Boolean? secondary_structure_string
    Boolean? options
    String coves
    String cm_file
    String seq_file
  }
  command <<<
    coves-SE \
      ~{coves} \
      ~{cm_file} \
      ~{seq_file} \
      ~{true="-a" false="" show_pairs_watsoncrick} \
      ~{if defined(set_expected_default) then ("-g " +  '"' + set_expected_default + '"') else ""} \
      ~{true="-m" false="" mountain_representation_structural} \
      ~{true="-s" false="" secondary_structure_string} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    show_pairs_watsoncrick: ": show all pairs, not just Watson-Crick"
    set_expected_default: ": set expected background GC composition (default 0.5)"
    mountain_representation_structural: ": mountain representation of structural alignment"
    secondary_structure_string: ": secondary structure string representation of  structural alignment"
    options: ""
    coves: ""
    cm_file: ""
    seq_file: ""
  }
}