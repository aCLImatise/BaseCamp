class: CommandLineTool
id: getHomerQCstats.pl.cwl
inputs:
- id: in_mapping_alignment_files
  doc: (mapping between tag directors and alignment files)
  type: string?
  inputBinding:
    prefix: -k
- id: in_tag_directories_get
  doc: '[tagDir2] ... (tag directories to get stats from)'
  type: long?
  inputBinding:
    prefix: -d
- id: in_chr
  doc: '[chr2] ... (print tags for these chromosomes)'
  type: long?
  inputBinding:
    prefix: -chr
- id: in_sam
  doc: '[f2.sam] ... (alignment files, will look for *log files)'
  type: long?
  inputBinding:
    prefix: -sam
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- getHomerQCstats.pl
