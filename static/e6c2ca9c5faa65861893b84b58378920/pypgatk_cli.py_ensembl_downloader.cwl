class: CommandLineTool
id: pypgatk_cli.py_ensembl_downloader.cwl
inputs:
- id: in_config_file
  doc: "Configuration file for the ensembl data\ndownloader pipeline"
  type: File
  inputBinding:
    prefix: --config_file
- id: in_output_directory
  doc: Output directory for the peptide databases
  type: Directory
  inputBinding:
    prefix: --output_directory
- id: in_folder_prefix_release
  doc: Output folder prefix to download the data
  type: Directory
  inputBinding:
    prefix: --folder_prefix_release
- id: in_taxonomy
  doc: "Taxonomy identifiers (comma separated list\ncan be given) that will be use\
    \ to download\nthe data from Ensembl"
  type: string
  inputBinding:
    prefix: --taxonomy
- id: in_list_taxonomies
  doc: "Print the list of all the taxonomies in\nENSEMBL (https://www.ensembl.org)"
  type: boolean
  inputBinding:
    prefix: --list_taxonomies
- id: in_skip_gtf
  doc: Skip the gtf file during the download
  type: boolean
  inputBinding:
    prefix: --skip_gtf
- id: in_skip_protein
  doc: Skip the protein fasta file during download
  type: boolean
  inputBinding:
    prefix: --skip_protein
- id: in_skip_cds
  doc: Skip the CDS file download
  type: boolean
  inputBinding:
    prefix: --skip_cds
- id: in_skip_cdna
  doc: Skip the cDNA file download
  type: boolean
  inputBinding:
    prefix: --skip_cdna
- id: in_skip_ncrna
  doc: Skip the ncRNA file download
  type: boolean
  inputBinding:
    prefix: --skip_ncrna
- id: in_skip_vcf
  doc: Skip the VCF variant file
  type: boolean
  inputBinding:
    prefix: --skip_vcf
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Output directory for the peptide databases
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
- id: out_folder_prefix_release
  doc: Output folder prefix to download the data
  type: Directory
  outputBinding:
    glob: $(inputs.in_folder_prefix_release)
cwlVersion: v1.1
baseCommand:
- pypgatk_cli.py
- ensembl-downloader
