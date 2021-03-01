class: CommandLineTool
id: elector.cwl
inputs:
- id: in_threads
  doc: '[THREADS]    Number of threads'
  type: boolean?
  inputBinding:
    prefix: -threads
- id: in_corrected
  doc: "[CORRECTED]\nFasta file with corrected reads (each read sequence on\none line)"
  type: boolean?
  inputBinding:
    prefix: -corrected
- id: in_split
  doc: Corrected reads are split
  type: boolean?
  inputBinding:
    prefix: -split
- id: in_uncorrected
  doc: "[UNCORRECTED]\nPrefix of the reads simulation files"
  type: boolean?
  inputBinding:
    prefix: -uncorrected
- id: in_perfect
  doc: "[PERFECT]    Fasta file with reference read sequences (each read\nsequence\
    \ on one line)"
  type: boolean?
  inputBinding:
    prefix: -perfect
- id: in_fasta_file_reference_genome
  doc: "[REFERENCE]\nFasta file with reference genome sequences (each\nsequence on\
    \ one line)"
  type: boolean?
  inputBinding:
    prefix: -reference
- id: in_simulator
  doc: "[SIMULATOR]\nTool used for the simulation of the long reads (either\nnanosim,\
    \ simlord, or real). Value real should be used\nif assessing real data."
  type: boolean?
  inputBinding:
    prefix: -simulator
- id: in_correct_or
  doc: "[SOFT]     Corrector used (lowercase, in this list: canu,\ncolormap, consent,\
    \ daccord, ectools, flas, fmlrc,\nhalc, hercules, hg-color, jabba, lsc, lordec,\
    \ lorma,\nmecat, nas, nanocorr, pbdagcon, proovread). If no\ncorrector name is\
    \ provided, make sure the read's\nheaders are correctly formatted (i.e. they correspond\n\
    to those of uncorrected and reference files)"
  type: boolean?
  inputBinding:
    prefix: -corrector
- id: in_dazz_db
  doc: "[DAZZDB]      Reads database used for the correction, if the reads\nwere corrected\
    \ with Daccord or PBDagCon"
  type: boolean?
  inputBinding:
    prefix: -dazzDb
- id: in_output
  doc: "[OUTPUTDIRPATH]\nName for output directory"
  type: Directory?
  inputBinding:
    prefix: -output
- id: in_remap
  doc: Perform remapping of the corrected reads to the
  type: boolean?
  inputBinding:
    prefix: -remap
- id: in_minsize
  doc: "[MINSIZE]    Do not assess reads/fragments chose length is <=\nMINSIZE % of\
    \ the original read"
  type: boolean?
  inputBinding:
    prefix: -minsize
- id: in_no_plot
  doc: Do not output plots and PDF report with R/LaTeX
  type: boolean?
  inputBinding:
    prefix: -noplot
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
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/elector:1.0.4--py36hf0b53f7_1
cwlVersion: v1.1
baseCommand:
- elector
