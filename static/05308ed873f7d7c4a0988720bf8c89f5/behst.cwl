class: CommandLineTool
id: behst.cwl
inputs:
- id: in_target_extension
  doc: extend target regions by BP base pairs (default 9400)
  type: long
  inputBinding:
    prefix: --target-extension
- id: in_query_extension
  doc: extend query regions by BP base pairs (default 24100)
  type: long
  inputBinding:
    prefix: --query-extension
- id: in_data
  doc: "path to directory with reference data (default\n~/.local/share/behst)"
  type: File
  inputBinding:
    prefix: --data
- id: in_gene_annotation_file
  doc: "path of gene annotation file (GTF format, default\nDATADIR/gencode.v19.annotation_withproteinids.gtf)."
  type: File
  inputBinding:
    prefix: --gene-annotation-file
- id: in_transcript_file
  doc: "path to the principal transcript file (BED format,\ndefault DATADIR/appris_data_principal.bed)"
  type: File
  inputBinding:
    prefix: --transcript-file
- id: in_interaction_file
  doc: "path to the chromatin interactions file (HICCUPS\nFormat, default DATADIR/hic_8celltypes.hiccups)."
  type: File
  inputBinding:
    prefix: --interaction-file
- id: in_no_g_profiler
  doc: "If activated, generate the gene list and do not call\ng:ProfileR)"
  type: boolean
  inputBinding:
    prefix: --no-gprofiler
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- behst
