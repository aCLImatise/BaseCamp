class: CommandLineTool
id: anvi_script_process_genbank_metadata.cwl
inputs:
- id: in_metadata
  doc: "This is the file you get from the program `ncbi-\ngenome-download` when you\
    \ use the parameter\n`--metadata-table`."
  type: File?
  inputBinding:
    prefix: --metadata
- id: in_output_dir
  doc: Directory path for output files
  type: File?
  inputBinding:
    prefix: --output-dir
- id: in_output_fast_a_txt
  doc: "This is not a FASTA file, but a TAB-delimited file\nwith all the file names\
    \ and paths processed by this\nprogram. This output can directly go into the anvi'o\n\
    snakemake workflows because magic."
  type: File?
  inputBinding:
    prefix: --output-fasta-txt
- id: in_exclude_gene_calls_from_fast_a_txt
  doc: "This flag will exclude the external gene calls and\nfunctions from the fasta.txt\
    \ file. Files for external\ngene calls and functions according to the information\n\
    stored in GenBank file, but they will simply not be\nincluded in your fasta.txt\
    \ file. By doing so you will\n*gurantee* that when you use this file from within\
    \ a\nworkflow, anvi'o wil use its default gene caller to\nidentify genes.\n"
  type: boolean?
  inputBinding:
    prefix: --exclude-gene-calls-from-fasta-txt
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Directory path for output files
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_output_fast_a_txt
  doc: "This is not a FASTA file, but a TAB-delimited file\nwith all the file names\
    \ and paths processed by this\nprogram. This output can directly go into the anvi'o\n\
    snakemake workflows because magic."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fast_a_txt)
hints: []
cwlVersion: v1.1
baseCommand:
- anvi-script-process-genbank-metadata
