class: CommandLineTool
id: hotspot3d_visual.cwl
inputs:
- id: in_clusters_file
  doc: Clusters file
  type: boolean
  inputBinding:
    prefix: --clusters-file
- id: in_pdb
  doc: "PDB ID on which to view clusters\nAT LEAST ONE"
  type: boolean
  inputBinding:
    prefix: --pdb
- id: in_pairwise_file
  doc: A .pairwise file
  type: boolean
  inputBinding:
    prefix: --pairwise-file
- id: in_mu_sites_file
  doc: A .musites file
  type: boolean
  inputBinding:
    prefix: --musites-file
- id: in_sites_file
  doc: A .sites file
  type: boolean
  inputBinding:
    prefix: --sites-file
- id: in_drug_pairs_file
  doc: "A .drug*clean file (either target or nontarget)\nOPTIONAL"
  type: boolean
  inputBinding:
    prefix: --drug-pairs-file
- id: in_output_file
  doc: 'Output filename for single PyMol script, default: hotspot3d.visual.pml'
  type: File
  inputBinding:
    prefix: --output-file
- id: in_pymol
  doc: 'PyMoL program location, default: /usr/bin/pymol'
  type: boolean
  inputBinding:
    prefix: --pymol
- id: in_output_dir
  doc: Output directory for multiple PyMol scripts, current working directory
  type: Directory
  inputBinding:
    prefix: --output-dir
- id: in_pdb_dir
  doc: 'PDB file directory, default: current working directory'
  type: boolean
  inputBinding:
    prefix: --pdb-dir
- id: in_bg_color
  doc: 'background color, default: white'
  type: boolean
  inputBinding:
    prefix: --bg-color
- id: in_mut_color
  doc: 'mutation color, default: red'
  type: boolean
  inputBinding:
    prefix: --mut-color
- id: in_mut_style
  doc: 'mutation style, default: spheres'
  type: boolean
  inputBinding:
    prefix: --mut-style
- id: in_site_color
  doc: 'site color, default: blue'
  type: boolean
  inputBinding:
    prefix: --site-color
- id: in_site_style
  doc: 'site style, default: sticks'
  type: boolean
  inputBinding:
    prefix: --site-style
- id: in_compound_color
  doc: 'compound color, default: util.cbag'
  type: boolean
  inputBinding:
    prefix: --compound-color
- id: in_compound_style
  doc: 'compound style, default: sticks if compound-color, util.cbag otherwise'
  type: boolean
  inputBinding:
    prefix: --compound-style
- id: in_script_only
  doc: 'If included (on), pymol is not run with new <output-file> when finished, default:
    off'
  type: File
  inputBinding:
    prefix: --script-only
- id: in_clusters_file_type
  doc: 'which clustering module created your clusters-file? network or density, default:
    network'
  type: boolean
  inputBinding:
    prefix: --clusters-file-type
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: 'Output filename for single PyMol script, default: hotspot3d.visual.pml'
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_output_dir
  doc: Output directory for multiple PyMol scripts, current working directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_script_only
  doc: 'If included (on), pymol is not run with new <output-file> when finished, default:
    off'
  type: File
  outputBinding:
    glob: $(inputs.in_script_only)
cwlVersion: v1.1
baseCommand:
- hotspot3d
- visual
