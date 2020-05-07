class: CommandLineTool
id: anvi_script_process_genbank_metadata.cwl
inputs:
- id: metadata
  doc: This is the file you get from the program `ncbi- genome-download` when you
    use the parameter `--metadata-table`.
  type: string
  inputBinding:
    prefix: --metadata
- id: output_dir
  doc: Directory path for output files
  type: string
  inputBinding:
    prefix: --output-dir
- id: output_fast_a_txt
  doc: This is not a FASTA file, but a TAB-delimited file with all the file names
    and paths processed by this program. This output can directly go into the anvi'o
    snakemake workflows because magic.
  type: string
  inputBinding:
    prefix: --output-fasta-txt
- id: exclude_gene_calls_from_fast_a_txt
  doc: This flag will exclude the external gene calls and functions from the fasta.txt
    file. Files for external gene calls and functions according to the information
    stored in GenBank file, but they will simply not be included in your fasta.txt
    file. By doing so you will *gurantee* that when you use this file from within
    a workflow, anvi'o wil use its default gene caller to identify genes.
  type: boolean
  inputBinding:
    prefix: --exclude-gene-calls-from-fasta-txt
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-script-process-genbank-metadata
