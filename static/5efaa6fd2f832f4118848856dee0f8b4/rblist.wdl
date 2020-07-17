version 1.0

task Rblist {
  input {
    Boolean? inputsdfile_input_ligand
    Boolean? output_sd_file
    Boolean? ap
    Boolean? an
    Boolean? all_h
    Boolean? tr
    Boolean? verbose_listing_ligand
    String inputs_d_file
    String? outputs_d_file
  }
  command <<<
    rblist \
      ~{inputs_d_file} \
      ~{outputs_d_file} \
      ~{true="-i" false="" inputsdfile_input_ligand} \
      ~{true="-o" false="" output_sd_file} \
      ~{true="-ap" false="" ap} \
      ~{true="-an" false="" an} \
      ~{true="-allH" false="" all_h} \
      ~{true="-tr" false="" tr} \
      ~{true="-l" false="" verbose_listing_ligand}
  >>>
  parameter_meta {
    inputsdfile_input_ligand: "<InputSDFile> - input ligand SD file"
    output_sd_file: "<OutputSDFile> - output SD file with descriptors (default=no output)"
    ap: "- protonate all neutral amines, guanidines, imidazoles (default=disabled)"
    an: "- deprotonate all carboxylic, sulphur and phosphorous acid groups (default=disabled)"
    all_h: "- read all hydrogens present (default=polar hydrogens only)"
    tr: "- rotate all 2ndry amides to trans (default=leave alone)"
    verbose_listing_ligand: "- verbose listing of ligand atoms and rotable bonds (default = compact table format)"
    inputs_d_file: ""
    outputs_d_file: ""
  }
}