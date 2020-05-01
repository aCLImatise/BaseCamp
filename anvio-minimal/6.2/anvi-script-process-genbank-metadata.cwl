#!/usr/bin/env cwl-runner

baseCommand:
- anvi-script-process-genbank-metadata
class: CommandLineTool
cwlVersion: v1.0
id: anvi-script-process-genbank-metadata
inputs:
- doc: This is the file you get from the program `ncbi- genome-download` when you
    use the parameter `--metadata-table`.
  id: metadata
  inputBinding:
    prefix: --metadata
  type: string
- doc: Directory path for output files
  id: output_dir
  inputBinding:
    prefix: --output-dir
  type: string
- doc: This is not a FASTA file, but a TAB-delimited file with all the file names
    and paths processed by this program. This output can directly go into the anvi'o
    snakemake workflows because magic.
  id: output_fast_a_txt
  inputBinding:
    prefix: --output-fasta-txt
  type: string
- doc: This flag will exclude the external gene calls and functions from the fasta.txt
    file. Files for external gene calls and functions according to the information
    stored in GenBank file, but they will simply not be included in your fasta.txt
    file. By doing so you will *gurantee* that when you use this file from within
    a workflow, anvi'o wil use its default gene caller to identify genes.
  id: exclude_gene_calls_from_fast_a_txt
  inputBinding:
    prefix: --exclude-gene-calls-from-fasta-txt
  type: boolean
