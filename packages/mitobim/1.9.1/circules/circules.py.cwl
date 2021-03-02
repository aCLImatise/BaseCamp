class: CommandLineTool
id: circules.py.cwl
inputs:
- id: in_fast_a
  doc: fasta file containing the sequence to be evaluate.
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_km_er
  doc: "kmer size. single number (default = 31) or range (e.g.\n31-35)."
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_km_er_step
  doc: kmer step size (default = 2).
  type: long?
  inputBinding:
    prefix: --kmer_step
- id: in_prefix
  doc: prefix for output files (default = 'circular').
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_intint__intintcoordinates
  doc: "<INT,INT>, --extract_by_coordinates <INT,INT>\nCoordinates for clipping of\
    \ sequence in format\n'startpos,endpos'. Clipped sequence will be written to\n\
    file 'prefix.circular.fasta'."
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_extract_by_length
  doc: "expected length (in bp) of circular molecule. If a\ncandidate of length expected\
    \ (+-length tolerance if\nspecified) is found, sequence will be clipped and\n\
    written to file 'prefix.circular.fasta'."
  type: long?
  inputBinding:
    prefix: --extract_by_length
- id: in_length_tolerance_percent
  doc: "percent length tolerance (e.g. 0.1, for 10 %).\nCandidate fragments must have\
    \ a length of 'expected\nlength +/- t * expected length'. Default = 0."
  type: double?
  inputBinding:
    prefix: --length_tolerance_percent
- id: in_length_tolerance_absolute
  doc: "absolute length tolerance (e.g. 1000). Candidate\nfragments must have a length\
    \ of 'expected length +/-\ntolerance'. Default = 0."
  type: long?
  inputBinding:
    prefix: --length_tolerance_absolute
- id: in_new_start_roll
  doc: "'roll' a putative ciruclar sequence to a specified new\nstart point. Sequence\
    \ will be written to file\n'prefix.roll.{n}.fasta'."
  type: long?
  inputBinding:
    prefix: --newstart_roll
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mitobim:1.9.1--0
cwlVersion: v1.1
baseCommand:
- circules.py
