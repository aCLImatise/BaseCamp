class: CommandLineTool
id: plot_orf_density.cwl
inputs:
- id: in_an_not_dir
  doc: "transcripts annotation directory, generated by\nprepare_transcripts."
  type: Directory
  inputBinding:
    prefix: --annot_dir
- id: in_config_file
  doc: "defile bam file information in this file, please refer\nto the example file\
    \ in data folder."
  type: File
  inputBinding:
    prefix: --config_file
- id: in_transcript_id
  doc: the transcript id
  type: string
  inputBinding:
    prefix: --transcript_id
- id: in_orf_t_start
  doc: "transcript-level coordinates of start of ORF\n(orf_tstart)"
  type: string
  inputBinding:
    prefix: --orf_tstart
- id: in_orf_t_stop
  doc: transcript-level coordinates of end of ORF (orf_tstop)
  type: string
  inputBinding:
    prefix: --orf_tstop
- id: in_out_name
  doc: "output file name,default is\ntranscriptid_tstart_tstop.pdf"
  type: File
  inputBinding:
    prefix: --outname
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_name
  doc: "output file name,default is\ntranscriptid_tstart_tstop.pdf"
  type: File
  outputBinding:
    glob: $(inputs.in_out_name)
cwlVersion: v1.1
baseCommand:
- plot_orf_density
