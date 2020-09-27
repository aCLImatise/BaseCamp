class: CommandLineTool
id: split_paired_bam.py.cwl
inputs:
- id: in_input_file
  doc: "Alignment file in BAM or SAM format. BAM file should\nbe sorted and indexed"
  type: File
  inputBinding:
    prefix: --input-file
- id: in_out_prefix
  doc: "Prefix of output BAM files. \"prefix.R1.bam\" file\ncontains the 1st read,\
    \ \"prefix.R2.bam\" file contains\nthe 2nd read\n"
  type: File
  inputBinding:
    prefix: --out-prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_prefix
  doc: "Prefix of output BAM files. \"prefix.R1.bam\" file\ncontains the 1st read,\
    \ \"prefix.R2.bam\" file contains\nthe 2nd read\n"
  type: File
  outputBinding:
    glob: $(inputs.in_out_prefix)
cwlVersion: v1.1
baseCommand:
- split_paired_bam.py
