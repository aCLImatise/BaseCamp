class: CommandLineTool
id: behst.py.cwl
inputs:
- id: input_bed_file
  doc: input BED file of genomic regions
  type: string
  inputBinding:
    position: 0
- id: be_hst_data_files_folder
  doc: path to the folder where you downloaded the default BEHST data files with ./download_behst_data.sh
  type: string
  inputBinding:
    position: 1
- id: target_extension
  doc: target extension basepair integer. Default is 9400.
  type: string
  inputBinding:
    prefix: --target-extension
- id: query_extension
  doc: query extension basepair integer. Default is 24100.
  type: string
  inputBinding:
    prefix: --query-extension
- id: gene_annotation_file
  doc: path of the gene annotation file (.gtf format). Default is the GENCODE annotation
    v.19 file (gencode.v19.annotation_withproteinids.gtf).
  type: string
  inputBinding:
    prefix: --gene-annotation-file
- id: transcript_file
  doc: path to the principal transcript file (.bed format). Default is APPRIS transcript
    2017_01.v20 file (appris_data_principal.bed)
  type: string
  inputBinding:
    prefix: --transcript-file
- id: interaction_file
  doc: path to the chromatin interactions file (.hiccups format). Default is the Hi-C
    HiCCUPS from Lieberman- Aiden 2014 (hic_8celltypes.hiccups).
  type: long
  inputBinding:
    prefix: --interaction-file
outputs: []
cwlVersion: v1.1
baseCommand:
- behst.py
