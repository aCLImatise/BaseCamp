class: CommandLineTool
id: ../../../FastqExtractUMI.cwl
inputs:
- id: in_in_one
  doc: Input FASTQ file 1.
  type: File
  inputBinding:
    prefix: -in1
- id: in_in_two
  doc: Input FASTQ file 2.
  type: File
  inputBinding:
    prefix: -in2
- id: in_out_one
  doc: Output filename for read 1 FASTQ.
  type: File
  inputBinding:
    prefix: -out1
- id: in_out_two
  doc: Output filename for read 2 FASTQ.
  type: File
  inputBinding:
    prefix: -out2
- id: in_cut_one
  doc: "Number of bases from the head of read 1 to use as UMI.\nDefault value: '0'"
  type: long
  inputBinding:
    prefix: -cut1
- id: in_cut_two
  doc: "Number of bases from the head of read 2 to use as UMI.\nDefault value: '0'"
  type: long
  inputBinding:
    prefix: -cut2
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_one
  doc: Output filename for read 1 FASTQ.
  type: File
  outputBinding:
    glob: $(inputs.in_out_one)
- id: out_out_two
  doc: Output filename for read 2 FASTQ.
  type: File
  outputBinding:
    glob: $(inputs.in_out_two)
cwlVersion: v1.1
baseCommand:
- FastqExtractUMI
