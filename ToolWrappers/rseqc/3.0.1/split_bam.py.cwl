class: CommandLineTool
id: split_bam.py.cwl
inputs:
- id: in_input_file
  doc: "Alignment file in BAM or SAM format. BAM file should\nbe sorted and indexed."
  type: File?
  inputBinding:
    prefix: --input-file
- id: in_gene_list
  doc: "Gene list in bed foramt. All reads hits to exon\nregions (defined by this\
    \ gene list) will be saved into\none BAM file, the remaining reads will saved\
    \ into\nanother BAM file."
  type: File?
  inputBinding:
    prefix: --genelist
- id: in_out_prefix
  doc: "Prefix of output BAM files. \"prefix.in.bam\" file\ncontains reads mapped\
    \ to the gene list specified by\n\"-r\", \"prefix.ex.bam\" contains reads that\
    \ cannot\nmapped to gene list. \"prefix.junk.bam\" contains\nqcfailed or unmapped\
    \ reads.\n"
  type: File?
  inputBinding:
    prefix: --out-prefix
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_prefix
  doc: "Prefix of output BAM files. \"prefix.in.bam\" file\ncontains reads mapped\
    \ to the gene list specified by\n\"-r\", \"prefix.ex.bam\" contains reads that\
    \ cannot\nmapped to gene list. \"prefix.junk.bam\" contains\nqcfailed or unmapped\
    \ reads.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- split_bam.py
