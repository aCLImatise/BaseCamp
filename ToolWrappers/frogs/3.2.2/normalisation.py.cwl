class: CommandLineTool
id: normalisation.py.cwl
inputs:
- id: in_num_reads
  doc: Number of reads per sample after normalisation
  type: long?
  inputBinding:
    prefix: --num-reads
- id: in_debug
  doc: Keep temporary files to debug program.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_input_biom
  doc: 'Abundances file to normalise (format: BIOM).'
  type: File?
  inputBinding:
    prefix: --input-biom
- id: in_input_fast_a
  doc: 'Sequences file to normalise (format: FASTA).'
  type: File?
  inputBinding:
    prefix: --input-fasta
- id: in_output_biom
  doc: "Normalised abundances (format: BIOM). [Default:\nnormalisation_abundance.biom]"
  type: string?
  inputBinding:
    prefix: --output-biom
- id: in_output_fast_a
  doc: "Normalised sequences (format: FASTA). [Default:\nnormalisation.fasta]"
  type: string?
  inputBinding:
    prefix: --output-fasta
- id: in_summary_file
  doc: "The HTML file containing the graphs. [Default:\nnormalisation.html]"
  type: File?
  inputBinding:
    prefix: --summary-file
- id: in_log_file
  doc: "The list of commands executed.\n"
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/frogs:3.2.2--py37_0
cwlVersion: v1.1
baseCommand:
- normalisation.py
