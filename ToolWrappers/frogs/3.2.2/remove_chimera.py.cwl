class: CommandLineTool
id: remove_chimera.py.cwl
inputs:
- id: in_nb_cpus
  doc: 'The maximum number of CPUs used. [Default: 1]'
  type: long?
  inputBinding:
    prefix: --nb-cpus
- id: in_debug
  doc: Keep temporary files to debug program.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_input_fast_a
  doc: 'The cluster sequences (format: FASTA).'
  type: string?
  inputBinding:
    prefix: --input-fasta
- id: in_input_biom
  doc: "The abundance file for clusters by sample (format:\nBIOM)."
  type: File?
  inputBinding:
    prefix: --input-biom
- id: in_input_count
  doc: 'The counts file for clusters by sample (format: TSV).'
  type: File?
  inputBinding:
    prefix: --input-count
- id: in_non_chimera
  doc: "sequences file without chimera (format: FASTA).\n[Default: remove_chimera.fasta]"
  type: File?
  inputBinding:
    prefix: --non-chimera
- id: in_out_abundance
  doc: "Abundance file without chimera (format: BIOM or TSV).\n[Default: remove_chimera_abundance.biom\
    \ or\nremove_chimera_abundance.tsv]"
  type: File?
  inputBinding:
    prefix: --out-abundance
- id: in_summary
  doc: "The HTML file containing the graphs. [Default:\nremove_chimera.html]"
  type: File?
  inputBinding:
    prefix: --summary
- id: in_log_file
  doc: "This output file will contain several informations on\nexecuted commands.\n"
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log_file
  doc: "This output file will contain several informations on\nexecuted commands.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/frogs:3.2.2--py37_0
cwlVersion: v1.1
baseCommand:
- remove_chimera.py
