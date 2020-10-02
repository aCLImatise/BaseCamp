class: CommandLineTool
id: elector.cwl
inputs:
- id: in_threads
  doc: '[THREADS]    Number of threads'
  type: boolean
  inputBinding:
    prefix: -threads
- id: in_corrected
  doc: "[CORRECTED]\nFasta file with corrected reads (each read sequence on\none line)"
  type: boolean
  inputBinding:
    prefix: -corrected
- id: in_split
  doc: Corrected reads are split
  type: boolean
  inputBinding:
    prefix: -split
- id: in_uncorrected
  doc: "[UNCORRECTED]\nPrefix of the reads simulation files"
  type: boolean
  inputBinding:
    prefix: -uncorrected
- id: in_perfect
  doc: "[PERFECT]    Fasta file with reference read sequences (each read\nsequence\
    \ on one line)"
  type: boolean
  inputBinding:
    prefix: -perfect
- id: in_fasta_file_reference_genome
  doc: "[REFERENCE]\nFasta file with reference genome sequences (each\nsequence on\
    \ one line)"
  type: boolean
  inputBinding:
    prefix: -reference
- id: in_simulator
  doc: "[SIMULATOR]\nTool used for the simulation of the long reads (either\nnanosim\
    \ or simlord)"
  type: boolean
  inputBinding:
    prefix: -simulator
- id: in_correct_or
  doc: "[SOFT]     Corrector used (lowercase, in this list: lorma, mecat,\npbdagcon,\
    \ daccord). If no corrector name is provided,\nmake sure the read's headers are\
    \ correctly formatted\n(i.e. they correspond to those of uncorrected and\nreference\
    \ files)"
  type: boolean
  inputBinding:
    prefix: -corrector
- id: in_dazz_db
  doc: "[DAZZDB]      Reads database used for the correction, if the reads\nwere corrected\
    \ with Daccord or PBDagCon"
  type: boolean
  inputBinding:
    prefix: -dazzDb
- id: in_output
  doc: "[OUTPUTDIRPATH]\nName for output directory"
  type: Directory
  inputBinding:
    prefix: -output
- id: in_remap
  doc: Perform remapping of the corrected reads to the
  type: boolean
  inputBinding:
    prefix: -remap
- id: in_minsize
  doc: "[MINSIZE]    Do not assess reads/fragments chose length is <=\nMINSIZE % of\
    \ the original read\n"
  type: boolean
  inputBinding:
    prefix: -minsize
- id: in_assemble_perform_assembly
  doc: -assemble             Perform assembly of the corrected reads
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "[OUTPUTDIRPATH]\nName for output directory"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- elector
