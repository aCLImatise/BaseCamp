class: CommandLineTool
id: rust_predict_profiles.bak.cwl
inputs:
- id: transcriptome
  doc: fasta file of transcripts, CDS start and end may be provided on description
    line using tab separation e.g. >NM_0001 10 5000, otherwise it searches for longest
    ORF
  type: string
  inputBinding:
    position: 0
- id: alignment
  doc: sorted bam file of alignments to transcriptome
  type: string
  inputBinding:
    position: 1
- id: offset
  doc: nucleotide offset to A-site
  type: string
  inputBinding:
    position: 2
- id: lengths
  doc: lengths of footprints included, for example 28:32 is 28,29,30,31,32
  type: long
  inputBinding:
    position: 3
- id: rust_codon_file
  doc: path to file produced from "rust_codon"
  type: string
  inputBinding:
    position: 4
- id: o
  doc: directory  path to outputfile, default is "predict_profiles"
  type: string
  inputBinding:
    prefix: -o
- id: p
  doc: writes all profiles in csv files, may produce >10,000 files
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- rust_predict_profiles.bak
