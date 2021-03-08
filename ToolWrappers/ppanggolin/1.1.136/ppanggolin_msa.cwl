class: CommandLineTool
id: ppanggolin_msa.cwl
inputs:
- id: in_pan_genome
  doc: 'The pangenome .h5 file (default: None)'
  type: File?
  inputBinding:
    prefix: --pangenome
- id: in_output
  doc: "Output directory where the file(s) will be written\n(default: None)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_soft_core
  doc: "Soft core threshold to use if 'softcore' partition is\nchosen (default: 0.95)"
  type: double?
  inputBinding:
    prefix: --soft_core
- id: in_partition
  doc: "compute Multiple Sequence Alignement of the gene\nfamilies in the given partition\
    \ (default: core)"
  type: string?
  inputBinding:
    prefix: --partition
- id: in_source
  doc: "indicates whether to use protein or dna sequences to\ncompute the msa (default:\
    \ protein)"
  type: string?
  inputBinding:
    prefix: --source
- id: in_phylo
  doc: "Writes a whole genome msa file for additional\nphylogenetic analysis (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --phylo
- id: in_use_gene_id
  doc: "Use gene identifiers rather than organism names for\nsequences in the family\
    \ MSA (organism names are used\nby default) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --use_gene_id
- id: in_tmpdir
  doc: 'directory for storing temporary files (default: /tmp)'
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_verbose
  doc: "Indicate verbose level (0 for warning and errors only,\n1 for info, 2 for\
    \ debug) (default: 1)"
  type: string?
  inputBinding:
    prefix: --verbose
- id: in_log
  doc: 'log output file (default: stdout)'
  type: File?
  inputBinding:
    prefix: --log
- id: in_disable_prog_bar
  doc: 'disables the progress bars (default: False)'
  type: boolean?
  inputBinding:
    prefix: --disable_prog_bar
- id: in_cpu
  doc: 'Number of available cpus (default: 1)'
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_force
  doc: "Force writing in output directory and in pangenome\noutput file. (default:\
    \ False)\n"
  type: File?
  inputBinding:
    prefix: --force
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output directory where the file(s) will be written\n(default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_log
  doc: 'log output file (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_log)
- id: out_force
  doc: "Force writing in output directory and in pangenome\noutput file. (default:\
    \ False)\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_force)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ppanggolin:1.1.136--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- ppanggolin
- msa
