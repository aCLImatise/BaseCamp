class: CommandLineTool
id: itsx.py.cwl
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
- id: in_region
  doc: 'Which fungal ITS region is targeted: either ITS1 or'
  type: string?
  inputBinding:
    prefix: --region
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
- id: in_out_fast_a
  doc: "sequences file out from ITSx (format: FASTA).\n[Default: itsx.fasta]"
  type: File?
  inputBinding:
    prefix: --out-fasta
- id: in_out_abundance
  doc: "Abundance file without chimera (format: BIOM ).\n[Default: itsx_abundance.biom]"
  type: File?
  inputBinding:
    prefix: --out-abundance
- id: in_out_removed
  doc: "sequences file removed (format: FASTA). [Default:\nitsx_removed.fasta]"
  type: File?
  inputBinding:
    prefix: --out-removed
- id: in_summary
  doc: "The HTML file containing the graphs. [Default:\nitsx.html]"
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
- id: in_its_two
  doc: --check-its-only      Check only if sequences seem to be an ITS
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_fast_a
  doc: "sequences file out from ITSx (format: FASTA).\n[Default: itsx.fasta]"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_fast_a)
- id: out_log_file
  doc: "This output file will contain several informations on\nexecuted commands.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/frogs:3.2.0--py37_0
cwlVersion: v1.1
baseCommand:
- itsx.py
