class: CommandLineTool
id: xml_to_bas.pl.cwl
inputs:
- id: in_uri
  doc: -d    Same URI used by gtdownload
  type: boolean
  inputBinding:
    prefix: -uri
- id: in_output
  doc: -o    Name for output file. Defaults to STDOUT.
  type: File
  inputBinding:
    prefix: -output
- id: in_bam
  doc: "-b  BAM|CRAM file this data relates to\n- checks retrieved data correlates\
    \ with expected BAM\n- additionally can correct read_group_id if other fields\
    \ correlate when\nclashes occur."
  type: boolean
  inputBinding:
    prefix: -bam
- id: in_local_path
  doc: file path for XML from GNOS.
  type: File
  inputBinding:
    prefix: -local-path
- id: in_man
  doc: -m   Full documentation.
  type: boolean
  inputBinding:
    prefix: -man
- id: in_version
  doc: Prints the version number.
  type: boolean
  inputBinding:
    prefix: -version
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: -o    Name for output file. Defaults to STDOUT.
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- xml_to_bas.pl
