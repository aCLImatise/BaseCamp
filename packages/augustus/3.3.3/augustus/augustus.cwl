class: CommandLineTool
id: augustus.cwl
inputs:
- id: in_max_tracks
  doc: For a description of these parameters see section 4 of README.TXT.
  type: long
  inputBinding:
    prefix: --maxtracks
- id: in_protein_profile
  doc: "When this option is used the prediction will consider the protein profile\
    \ provided as parameter.\nThe protein profile extension is described in section\
    \ 7 of README.TXT."
  type: File
  inputBinding:
    prefix: --proteinprofile
- id: in_progress
  doc: show a progressmeter
  type: string
  inputBinding:
    prefix: --progress
- id: in_gff_three
  doc: output in gff3 format
  type: long
  inputBinding:
    prefix: --gff3
- id: in_prediction_start
  doc: A and B define the range of the sequence for which predictions should be found.
  type: string
  inputBinding:
    prefix: --predictionStart
- id: in_utr
  doc: predict the untranslated regions in addition to the coding sequence. This currently
    works only for a subset of species.
  type: string
  inputBinding:
    prefix: --UTR
- id: in_no_in_frames_top
  doc: 'Do not report transcripts with in-frame stop codons. Otherwise, intron-spanning
    stop codons could occur. Default: false'
  type: string
  inputBinding:
    prefix: --noInFrameStop
- id: in_no_prediction
  doc: If true and input is in genbank format, no prediction is made. Useful for getting
    the annotated protein sequences.
  type: string
  inputBinding:
    prefix: --noprediction
- id: in_unique_geneid
  doc: 'If true, output gene identifyers like this: seqname.gN'
  type: string
  inputBinding:
    prefix: --uniqueGeneId
- id: in_species
  doc: ''
  type: string
  inputBinding:
    prefix: --species
- id: in_partial
  doc: ': allow prediction of incomplete genes at the sequence boundaries (default)'
  type: string
  inputBinding:
    position: 0
- id: in_intron_less
  doc: ': only predict single-exon genes like in prokaryotes and some eukaryotes'
  type: string
  inputBinding:
    position: 1
- id: in_complete
  doc: ': only predict complete genes'
  type: string
  inputBinding:
    position: 2
- id: in_at_least_one
  doc: ': predict at least one complete gene'
  type: string
  inputBinding:
    position: 3
- id: in_exactly_one
  doc: ': predict exactly one complete gene'
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- augustus
