class: CommandLineTool
id: RepEnrich_setup.py.cwl
inputs:
- id: in_n_fragments_file_one
  doc: "Output location of a description file that saves the\nnumber of fragments\
    \ processed per repname. Default\n./repnames_nfragments.txt"
  type: File?
  inputBinding:
    prefix: --nfragmentsfile1
- id: in_gap_length
  doc: "Length of the spacer used to build repeat\npsuedogeneomes. Default 200"
  type: long?
  inputBinding:
    prefix: --gaplength
- id: in_flanking_length
  doc: "Length of the flanking region adjacent to the repeat\nelement that is used\
    \ to build repeat psuedogeneomes.\nThe flanking length should be set according\
    \ to the\nlength of your reads. Default 25"
  type: long?
  inputBinding:
    prefix: --flankinglength
- id: in_is_bed
  doc: "Is the annotation file a bed file. This is also a\ncompatible format. The\
    \ file needs to be a tab\nseperated bed with optional fields. Ex. format chr\n\
    start end Name_element class family. The class and\nfamily should identical to\
    \ name_element if not\napplicable. Default FALSE change to TRUE\n"
  type: File?
  inputBinding:
    prefix: --is_bed
- id: in_annotation_file
  doc: "List annotation file. The annotation file contains the\nrepeat masker annotation\
    \ for the genome of interest\nand may be downloaded at RepeatMasker.org Example\n\
    /data/annotation/mm9/mm9.fa.out"
  type: string
  inputBinding:
    position: 0
- id: in_genome_fast_a
  doc: "File name and path for genome of interest in fasta\nformat. Example /data/annotation/mm9/mm9.fa"
  type: string
  inputBinding:
    position: 1
- id: in_setup_folder
  doc: "List folder to contain bamfiles for repeats and repeat\nelement psuedogenomes.\
    \ Example\n/data/annotation/mm9/setup"
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- RepEnrich_setup.py
