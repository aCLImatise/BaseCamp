class: CommandLineTool
id: superfocus.cwl
inputs:
- id: query
  doc: Path to FAST(A/Q) file or directory with these files.
  type: string
  inputBinding:
    prefix: --query
- id: output_directory
  doc: Path to output files
  type: string
  inputBinding:
    prefix: --output_directory
- id: output_prefix
  doc: 'Output prefix (Default: output).'
  type: string
  inputBinding:
    prefix: --output_prefix
- id: aligner
  doc: aligner choice (rapsearch, diamond, or blast; default rapsearch).
  type: string
  inputBinding:
    prefix: --aligner
- id: minimum_identity
  doc: minimum identity (default 60 perc).
  type: long
  inputBinding:
    prefix: --minimum_identity
- id: minimum_alignment
  doc: 'minimum alignment (amino acids) (default: 15).'
  type: long
  inputBinding:
    prefix: --minimum_alignment
- id: threads
  doc: 'Number Threads used in the k-mer counting (Default: 4).'
  type: string
  inputBinding:
    prefix: --threads
- id: evalue
  doc: e-value (default 0.00001).
  type: string
  inputBinding:
    prefix: --evalue
- id: database
  doc: database (DB_90, DB_95, DB_98, or DB_100; default DB_90)
  type: string
  inputBinding:
    prefix: --database
- id: amino_acid
  doc: amino acid input; 0 nucleotides; 1 amino acids (default 0).
  type: string
  inputBinding:
    prefix: --amino_acid
- id: fast
  doc: 'runs RAPSearch2 or DIAMOND on fast mode - 0 (False) / 1 (True) (default: 1).'
  type: string
  inputBinding:
    prefix: --fast
- id: normalise_output
  doc: "normalises each query counts based on number of hits; 0 doesn't normalize;\
    \ 1 normalizes (default: 1)."
  type: string
  inputBinding:
    prefix: --normalise_output
- id: focus
  doc: 'runs FOCUS; 1 does run; 0 does not run: default 0.'
  type: string
  inputBinding:
    prefix: --focus
- id: alternate_directory
  doc: Alternate directory for your databases.
  type: string
  inputBinding:
    prefix: --alternate_directory
- id: delete_alignments
  doc: Delete alignments
  type: boolean
  inputBinding:
    prefix: --delete_alignments
- id: log
  doc: 'Path to log file (Default: STDOUT).'
  type: string
  inputBinding:
    prefix: --log
outputs: []
cwlVersion: v1.1
baseCommand:
- superfocus
