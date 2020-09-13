version 1.0

task Rblist {
  input {
    Boolean? input_ligand_sd
    File? output_sd_file
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
      ~{if (input_ligand_sd) then "-i" else ""} \
      ~{if (output_sd_file) then "-o" else ""} \
      ~{if (ap) then "-ap" else ""} \
      ~{if (an) then "-an" else ""} \
      ~{if (all_h) then "-allH" else ""} \
      ~{if (tr) then "-tr" else ""} \
      ~{if (verbose_listing_ligand) then "-l" else ""}
  >>>
  parameter_meta {
    input_ligand_sd: "<InputSDFile> - input ligand SD file"
    output_sd_file: "<OutputSDFile> - output SD file with descriptors (default=no output)"
    ap: "- protonate all neutral amines, guanidines, imidazoles (default=disabled)"
    an: "- deprotonate all carboxylic, sulphur and phosphorous acid groups (default=disabled)"
    all_h: "- read all hydrogens present (default=polar hydrogens only)"
    tr: "- rotate all 2ndry amides to trans (default=leave alone)"
    verbose_listing_ligand: "- verbose listing of ligand atoms and rotable bonds (default = compact table format)"
    inputs_d_file: ""
    outputs_d_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_sd_file = "${in_output_sd_file}"
  }
}