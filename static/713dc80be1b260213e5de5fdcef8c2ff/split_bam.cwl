class: CommandLineTool
id: ../../../split_bam.py.cwl
inputs:
- id: input_file
  doc: Alignment file in BAM or SAM format. BAM file should be sorted and indexed.
  type: string
  inputBinding:
    prefix: --input-file
- id: gene_list
  doc: Gene list in bed foramt. All reads hits to exon regions (defined by this gene
    list) will be saved into one BAM file, the remaining reads will saved into another
    BAM file.
  type: string
  inputBinding:
    prefix: --genelist
- id: out_prefix
  doc: Prefix of output BAM files. "prefix.in.bam" file contains reads mapped to the
    gene list specified by "-r", "prefix.ex.bam" contains reads that cannot mapped
    to gene list. "prefix.junk.bam" contains qcfailed or unmapped reads.
  type: string
  inputBinding:
    prefix: --out-prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- split_bam.py
