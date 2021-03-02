class: CommandLineTool
id: superfocus.cwl
inputs:
- id: in_query
  doc: Path to FAST(A/Q) file or directory with these files.
  type: File?
  inputBinding:
    prefix: --query
- id: in_output_directory
  doc: Path to output files
  type: Directory?
  inputBinding:
    prefix: --output_directory
- id: in_output_prefix
  doc: 'Output prefix (Default: output).'
  type: string?
  inputBinding:
    prefix: --output_prefix
- id: in_aligner
  doc: "aligner choice (rapsearch, diamond, or blast; default\nrapsearch)."
  type: string?
  inputBinding:
    prefix: --aligner
- id: in_minimum_identity
  doc: minimum identity (default 60 perc).
  type: long?
  inputBinding:
    prefix: --minimum_identity
- id: in_minimum_alignment
  doc: 'minimum alignment (amino acids) (default: 15).'
  type: long?
  inputBinding:
    prefix: --minimum_alignment
- id: in_threads
  doc: "Number Threads used in the k-mer counting (Default:\n4)."
  type: long?
  inputBinding:
    prefix: --threads
- id: in_evalue
  doc: e-value (default 0.00001).
  type: double?
  inputBinding:
    prefix: --evalue
- id: in_database
  doc: "database (DB_90, DB_95, DB_98, or DB_100; default\nDB_90)"
  type: long?
  inputBinding:
    prefix: --database
- id: in_amino_acid
  doc: "amino acid input; 0 nucleotides; 1 amino acids\n(default 0)."
  type: long?
  inputBinding:
    prefix: --amino_acid
- id: in_fast
  doc: "runs RAPSearch2 or DIAMOND on fast mode - 0 (False) /\n1 (True) (default:\
    \ 1)."
  type: long?
  inputBinding:
    prefix: --fast
- id: in_normalise_output
  doc: "normalises each query counts based on number of hits;\n0 doesn't normalize;\
    \ 1 normalizes (default: 1)."
  type: long?
  inputBinding:
    prefix: --normalise_output
- id: in_focus
  doc: 'runs FOCUS; 1 does run; 0 does not run: default 0.'
  type: long?
  inputBinding:
    prefix: --focus
- id: in_alternate_directory
  doc: Alternate directory for your databases.
  type: Directory?
  inputBinding:
    prefix: --alternate_directory
- id: in_delete_alignments
  doc: Delete alignments
  type: boolean?
  inputBinding:
    prefix: --delete_alignments
- id: in_log
  doc: 'Path to log file (Default: STDOUT).'
  type: File?
  inputBinding:
    prefix: --log
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Path to output files
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- superfocus
