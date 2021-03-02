class: CommandLineTool
id: behst.py.cwl
inputs:
- id: in_target_extension
  doc: target extension basepair integer. Default is 9400.
  type: long?
  inputBinding:
    prefix: --target-extension
- id: in_query_extension
  doc: query extension basepair integer. Default is 24100.
  type: long?
  inputBinding:
    prefix: --query-extension
- id: in_gene_annotation_file
  doc: "path of the gene annotation file (.gtf format).\nDefault is the GENCODE annotation\
    \ v.19 file\n(gencode.v19.annotation_withproteinids.gtf)."
  type: File?
  inputBinding:
    prefix: --gene-annotation-file
- id: in_transcript_file
  doc: "path to the principal transcript file (.bed format).\nDefault is APPRIS transcript\
    \ 2017_01.v20 file\n(appris_data_principal.bed)"
  type: File?
  inputBinding:
    prefix: --transcript-file
- id: in_interaction_file
  doc: "path to the chromatin interactions file (.hiccups\nformat). Default is the\
    \ Hi-C HiCCUPS from Lieberman-\nAiden 2014 (hic_8celltypes.hiccups)."
  type: File?
  inputBinding:
    prefix: --interaction-file
- id: in_input_bed_file
  doc: input BED file of genomic regions
  type: string
  inputBinding:
    position: 0
- id: in_be_hst_data_files_folder
  doc: "path to the folder where you downloaded the default\nBEHST data files with\
    \ ./download_behst_data.sh"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- behst.py
