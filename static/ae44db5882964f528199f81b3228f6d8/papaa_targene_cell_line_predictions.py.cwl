class: CommandLineTool
id: papaa_targene_cell_line_predictions.py.cwl
inputs:
- id: in_tar_genes
  doc: string of the genes to extract or gene list file
  type: File?
  inputBinding:
    prefix: --targenes
- id: in_path_genes
  doc: pathway gene list file
  type: File?
  inputBinding:
    prefix: --path_genes
- id: in_classifier_summary
  doc: location of classifier_summary file
  type: File?
  inputBinding:
    prefix: --classifier_summary
- id: in_cc_le_rnase_q
  doc: path for ccle_rnaseq data file
  type: File?
  inputBinding:
    prefix: --ccle_rnaseq
- id: in_cc_le_mut
  doc: path for ccle mutational data file
  type: File?
  inputBinding:
    prefix: --ccle_mut
- id: in_cc_le_maf
  doc: path for ccle variant data file
  type: File?
  inputBinding:
    prefix: --ccle_maf
- id: in_g_dsc_rnase_q
  doc: path for gdsc_rnaseq data file
  type: File?
  inputBinding:
    prefix: --gdsc_rnaseq
- id: in_g_dsc_mut
  doc: path for gdsc/ccle common mutational data file
  type: File?
  inputBinding:
    prefix: --gdsc_mut
- id: in_gds_cone_phar
  doc: path for GDSC1 pharmacological data file
  type: long?
  inputBinding:
    prefix: --gdsc1_phar
- id: in_g_dsc_two_phar
  doc: "path for GDSC2 pharmacological data file\n"
  type: long?
  inputBinding:
    prefix: --gdsc2_phar
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/papaa:0.1.9--0
cwlVersion: v1.1
baseCommand:
- papaa_targene_cell_line_predictions.py
