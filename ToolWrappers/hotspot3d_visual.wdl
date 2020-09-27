version 1.0

task Hotspot3dVisual {
  input {
    Boolean? clusters_file
    Boolean? pdb
    Boolean? pairwise_file
    Boolean? mu_sites_file
    Boolean? sites_file
    Boolean? drug_pairs_file
    File? output_file
    Boolean? pymol
    Directory? output_dir
    Boolean? pdb_dir
    Boolean? bg_color
    Boolean? mut_color
    Boolean? mut_style
    Boolean? site_color
    Boolean? site_style
    Boolean? compound_color
    Boolean? compound_style
    File? script_only
    Boolean? clusters_file_type
  }
  command <<<
    hotspot3d visual \
      ~{if (clusters_file) then "--clusters-file" else ""} \
      ~{if (pdb) then "--pdb" else ""} \
      ~{if (pairwise_file) then "--pairwise-file" else ""} \
      ~{if (mu_sites_file) then "--musites-file" else ""} \
      ~{if (sites_file) then "--sites-file" else ""} \
      ~{if (drug_pairs_file) then "--drug-pairs-file" else ""} \
      ~{if (output_file) then "--output-file" else ""} \
      ~{if (pymol) then "--pymol" else ""} \
      ~{if (output_dir) then "--output-dir" else ""} \
      ~{if (pdb_dir) then "--pdb-dir" else ""} \
      ~{if (bg_color) then "--bg-color" else ""} \
      ~{if (mut_color) then "--mut-color" else ""} \
      ~{if (mut_style) then "--mut-style" else ""} \
      ~{if (site_color) then "--site-color" else ""} \
      ~{if (site_style) then "--site-style" else ""} \
      ~{if (compound_color) then "--compound-color" else ""} \
      ~{if (compound_style) then "--compound-style" else ""} \
      ~{if (script_only) then "--script-only" else ""} \
      ~{if (clusters_file_type) then "--clusters-file-type" else ""}
  >>>
  parameter_meta {
    clusters_file: "Clusters file"
    pdb: "PDB ID on which to view clusters\\nAT LEAST ONE"
    pairwise_file: "A .pairwise file"
    mu_sites_file: "A .musites file"
    sites_file: "A .sites file"
    drug_pairs_file: "A .drug*clean file (either target or nontarget)\\nOPTIONAL"
    output_file: "Output filename for single PyMol script, default: hotspot3d.visual.pml"
    pymol: "PyMoL program location, default: /usr/bin/pymol"
    output_dir: "Output directory for multiple PyMol scripts, current working directory"
    pdb_dir: "PDB file directory, default: current working directory"
    bg_color: "background color, default: white"
    mut_color: "mutation color, default: red"
    mut_style: "mutation style, default: spheres"
    site_color: "site color, default: blue"
    site_style: "site style, default: sticks"
    compound_color: "compound color, default: util.cbag"
    compound_style: "compound style, default: sticks if compound-color, util.cbag otherwise"
    script_only: "If included (on), pymol is not run with new <output-file> when finished, default: off"
    clusters_file_type: "which clustering module created your clusters-file? network or density, default: network"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    Directory out_output_dir = "${in_output_dir}"
    File out_script_only = "${in_script_only}"
  }
}