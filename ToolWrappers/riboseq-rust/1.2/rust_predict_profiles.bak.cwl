class: CommandLineTool
id: rust_predict_profiles.bak.cwl
inputs:
- id: in_directory_path_outputfile
  doc: directory  path to outputfile, default is "predict_profiles"
  type: File
  inputBinding:
    prefix: -o
- id: in_writes_profiles_produce
  doc: writes all profiles in csv files, may produce >10,000
  type: boolean
  inputBinding:
    prefix: -p
- id: in_correlation_observed_predicted
  doc: Correlation between observed and predicted profiles from CDS start + 120 to
  type: string
  inputBinding:
    position: 0
- id: in_transcriptome
  doc: "fasta file of transcripts, CDS start and end may be\nprovided on description\
    \ line using tab separation e.g.\n>NM_0001 10 5000, otherwise it searches for\
    \ longest\nORF"
  type: string
  inputBinding:
    position: 0
- id: in_alignment
  doc: sorted bam file of alignments to transcriptome
  type: string
  inputBinding:
    position: 1
- id: in_offset
  doc: nucleotide offset to A-site
  type: string
  inputBinding:
    position: 2
- id: in_lengths
  doc: "lengths of footprints included, for example 28:32 is\n28,29,30,31,32"
  type: string
  inputBinding:
    position: 3
- id: in_path_file_produced
  doc: path to file produced from "rust_codon"
  type: string
  inputBinding:
    position: 4
- id: in_files
  doc: --version             show program's version number and exit
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rust_predict_profiles.bak
