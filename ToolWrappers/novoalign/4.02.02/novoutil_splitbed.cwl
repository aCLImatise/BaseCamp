class: CommandLineTool
id: novoutil_splitbed.cwl
inputs:
- id: in_add
  doc: "\e[3m99\e[0m            Number of bp to add or to each input bed file region."
  type: boolean?
  inputBinding:
    prefix: --add
- id: in_merge
  doc: "\e[3m99\e[0m          Minimum gap between regions to merge them. Applied after\
    \ extension."
  type: boolean?
  inputBinding:
    prefix: --merge
- id: in_splits
  doc: "\e[3m99\e[0m         Number of files to split input BED into."
  type: boolean?
  inputBinding:
    prefix: --splits
- id: in_prefix
  doc: "\e[3mprefix\e[0m     Filename prefix for the output bed files."
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_include
  doc: "\e[3mfilename\e[0m  A file listing reference sequences (Chrom) to include\
    \ in the output. One per line!"
  type: File?
  inputBinding:
    prefix: --include
- id: in_exclude
  doc: "\e[3mfilename\e[0m  A file listing reference sequences (Chrom) to exclude\
    \ from the output. One per line!\nNormally you would supply only an include list\
    \ or an exclude list, not both!"
  type: File?
  inputBinding:
    prefix: --exclude
- id: in_sam
  doc: "\e[3msamfilename\e[0m   SAM file. Headers are used to determine sequence lengths\
    \ from @SQ records and\nensure we don't make regions extend passed the end of\
    \ the sequences."
  type: boolean?
  inputBinding:
    prefix: --sam
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: "\e[3mprefix\e[0m     Filename prefix for the output bed files."
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
- id: out_include
  doc: "\e[3mfilename\e[0m  A file listing reference sequences (Chrom) to include\
    \ in the output. One per line!"
  type: File?
  outputBinding:
    glob: $(inputs.in_include)
- id: out_exclude
  doc: "\e[3mfilename\e[0m  A file listing reference sequences (Chrom) to exclude\
    \ from the output. One per line!\nNormally you would supply only an include list\
    \ or an exclude list, not both!"
  type: File?
  outputBinding:
    glob: $(inputs.in_exclude)
hints: []
cwlVersion: v1.1
baseCommand:
- novoutil
- splitbed
