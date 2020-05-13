class: CommandLineTool
id: RepEnrich_setup.py.cwl
inputs:
- id: annotation_file
  doc: List annotation file. The annotation file contains the repeat masker annotation
    for the genome of interest and may be downloaded at RepeatMasker.org Example /data/annotation/mm9/mm9.fa.out
  type: string
  inputBinding:
    position: 0
- id: genome_fast_a
  doc: File name and path for genome of interest in fasta format. Example /data/annotation/mm9/mm9.fa
  type: string
  inputBinding:
    position: 1
- id: setup_folder
  doc: List folder to contain bamfiles for repeats and repeat element psuedogenomes.
    Example /data/annotation/mm9/setup
  type: string
  inputBinding:
    position: 2
- id: n_fragments_file_1
  doc: Output location of a description file that saves the number of fragments processed
    per repname. Default ./repnames_nfragments.txt
  type: string
  inputBinding:
    prefix: --nfragmentsfile1
- id: gap_length
  doc: Length of the spacer used to build repeat psuedogeneomes. Default 200
  type: string
  inputBinding:
    prefix: --gaplength
- id: flanking_length
  doc: Length of the flanking region adjacent to the repeat element that is used to
    build repeat psuedogeneomes. The flanking length should be set according to the
    length of your reads. Default 25
  type: string
  inputBinding:
    prefix: --flankinglength
- id: is_bed
  doc: Is the annotation file a bed file. This is also a compatible format. The file
    needs to be a tab seperated bed with optional fields. Ex. format chr start end
    Name_element class family. The class and family should identical to name_element
    if not applicable. Default FALSE change to TRUE
  type: string
  inputBinding:
    prefix: --is_bed
outputs: []
cwlVersion: v1.1
baseCommand:
- RepEnrich_setup.py
