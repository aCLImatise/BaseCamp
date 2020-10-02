class: CommandLineTool
id: anvi_import_functions.cwl
inputs:
- id: in_contigs_db
  doc: "Anvi'o contigs database generated by 'anvi-gen-\ncontigs'"
  type: string
  inputBinding:
    prefix: --contigs-db
- id: in_parser
  doc: "Parser to make sense of the input files (if you need\none). There are currently\
    \ 1 parsers readily available:\n['interproscan']. IT IS OK if you do not select\
    \ a\nparser if you have a standard, TAB-delimited input\nfile for funcitonal annotation\
    \ of genes. If this is\nnot like 2018 and everything is already outdated, you\n\
    should be able to go to this address and learn\neverything you need like a boss:\n\
    http://merenlab.org/2016/06/18/importing-functions/"
  type: File
  inputBinding:
    prefix: --parser
- id: in_s_one_files
  doc: "(S) [FILE(S) ...], --input-files FILE(S) [FILE(S) ...]\nOne or more input\
    \ files should follow this parameter.\nThe way these files will be handled will\
    \ depend on\nwhich parser you selected (if you did select any)."
  type: File
  inputBinding:
    prefix: -i
- id: in_drop_previous_annotations
  doc: "Use this flag if you want anvi'o to remove ALL\nprevious functional annotations\
    \ for your genes, and\nthen import the new data. The default behavior will\nadd\
    \ any annotation source into the db incrementally\nunless there are already annotations\
    \ from this source.\nIn which case, it will first remove previous\nannotations\
    \ for that source only (i.e., if source X is\nboth in the db and in the incoming\
    \ annotations data,\nit will replace the content of source X in the db).\n"
  type: boolean
  inputBinding:
    prefix: --drop-previous-annotations
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- anvi-import-functions
