class: CommandLineTool
id: fastafunk_strip.cwl
inputs:
- id: in_verbose
  doc: Run with high verbosity (debug level logging)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_log_file
  doc: "Log file to use (otherwise uses stdout, or stderr if\nout-fasta to stdout)"
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_in_fast_a
  doc: "[<filename> ...]\nOne or more FASTA files of sequences (else reads from\n\
    stdin)"
  type: File?
  inputBinding:
    prefix: --in-fasta
- id: in_gap
  doc: Remove gaps from sequences (Default:False)
  type: boolean?
  inputBinding:
    prefix: --gap
- id: in_ambiguity
  doc: "Remove ambiguous sites from sequences (\"N\")\n(Default:False)"
  type: boolean?
  inputBinding:
    prefix: --ambiguity
- id: in_missing
  doc: "Remove missing sites from sequences (\"?\")\n(Default:False)"
  type: boolean?
  inputBinding:
    prefix: --missing
- id: in_keep_alignment
  doc: "Remove gaps shared by all sequences at the same site\n(Default:False)"
  type: boolean?
  inputBinding:
    prefix: --keep-alignment
- id: in_front
  doc: "Remove only from the front of the sequence\n(Default:False)"
  type: boolean?
  inputBinding:
    prefix: --front
- id: in_back
  doc: "Remove only from the back of the sequence\n(Default:False)"
  type: boolean?
  inputBinding:
    prefix: --back
- id: in_out_fast_a
  doc: "A FASTA file (else writes to stdout)\n"
  type: File?
  inputBinding:
    prefix: --out-fasta
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log_file
  doc: "Log file to use (otherwise uses stdout, or stderr if\nout-fasta to stdout)"
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fastafunk:0.0.9--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- fastafunk
- strip
