class: CommandLineTool
id: rcf.cwl
inputs:
- id: in_nodes_path
  doc: "path for the nodes information files (nodes.dmp and\nnames.dmp from NCBI)"
  type: File?
  inputBinding:
    prefix: --nodespath
- id: in_format
  doc: "Format of the output files from a generic classifier\nincluded with the option\
    \ -g. It is a string like\n\"TYP:csv,TID:1,LEN:3,SCO:6,UNC:0\" where valid file\n\
    TYPes are csv/tsv/ssv, and the rest of fields indicate\nthe number of column used\
    \ (starting in 1) for the\nTaxIDs assigned, the LENgth of the read, the SCOre\n\
    given to the assignment, and the taxid code used for\nUNClassified reads"
  type: long?
  inputBinding:
    prefix: --format
- id: in_file
  doc: "Centrifuge output files. If a single directory is\nentered, every .out file\
    \ inside will be taken as a\ndifferent sample. Multiple -f is available to include\n\
    several Centrifuge samples."
  type: File?
  inputBinding:
    prefix: --file
- id: in_generic
  doc: "Output file from a generic classifier. It requires the\nflag --format (see\
    \ such option for details). Multiple\n-g is available to include several generic\
    \ samples."
  type: File?
  inputBinding:
    prefix: --generic
- id: in_lm_at
  doc: "LMAT output dir or file prefix. If just \".\" is\nentered, every subdirectory\
    \ under the current\ndirectory will be taken as a sample and scanned\nlooking\
    \ for LMAT output files. Multiple -l is\navailable to include several samples."
  type: File?
  inputBinding:
    prefix: --lmat
- id: in_clark
  doc: "CLARK full-mode output files. If a single directory is\nentered, every .csv\
    \ file inside will be taken as a\ndifferent sample. Multiple -r is available to\
    \ include\nseveral CLARK, CLARK-l, and CLARK-S full-mode samples."
  type: File?
  inputBinding:
    prefix: --clark
- id: in_kraken
  doc: "Kraken output files. If a single directory is entered,\nevery .krk file inside\
    \ will be taken as a different\nsample. Multiple -k is available to include several\n\
    Kraken (version 1 or 2) samples."
  type: File?
  inputBinding:
    prefix: --kraken
- id: in_out_html
  doc: "HTML output file (if not given, the filename will be\ninferred from input\
    \ files)"
  type: File?
  inputBinding:
    prefix: --outhtml
- id: in_extra
  doc: "type of extra output to be generated, and can be one\nof ['FULL', 'CMPLXCRUNCHER',\
    \ 'CSV', 'TSV']"
  type: string?
  inputBinding:
    prefix: --extra
- id: in_controls
  doc: "this number of first samples will be treated as\nnegative controls; default\
    \ is no controls"
  type: long?
  inputBinding:
    prefix: --controls
- id: in_scoring
  doc: "type of scoring to be applied, and can be one of\n['SHEL', 'LENGTH', 'LOGLENGTH',\
    \ 'NORMA', 'LMAT',\n'CLARK_C', 'CLARK_G', 'KRAKEN', 'GENERIC']"
  type: long?
  inputBinding:
    prefix: --scoring
- id: in_min_score
  doc: "minimum score/confidence of the classification of a\nread to pass the quality\
    \ filter; all pass by default"
  type: long?
  inputBinding:
    prefix: --minscore
- id: in_min_tax_a
  doc: "minimum taxa to avoid collapsing one level into the\nparent (if not specified\
    \ a value will be automatically\nassigned)"
  type: long?
  inputBinding:
    prefix: --mintaxa
- id: in_exclude
  doc: "NCBI taxid code to exclude a taxon and all underneath\n(multiple -x is available\
    \ to exclude several taxid)"
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_include
  doc: "NCBI taxid code to include a taxon and all underneath\n(multiple -i is available\
    \ to include several taxid);\nby default, all the taxa are considered for inclusion"
  type: string?
  inputBinding:
    prefix: --include
- id: in_avoid_cross
  doc: avoid cross analysis
  type: boolean?
  inputBinding:
    prefix: --avoidcross
- id: in_ctrl_min_score
  doc: "minimum score/confidence of the classification of a\nread in control samples\
    \ to pass the quality filter; it\ndefaults to \"minscore\""
  type: long?
  inputBinding:
    prefix: --ctrlminscore
- id: in_ctrl_min_tax_a
  doc: "minimum taxa to avoid collapsing one level into the\nparent (if not specified\
    \ a value will be automatically\nassigned)"
  type: long?
  inputBinding:
    prefix: --ctrlmintaxa
- id: in_summary
  doc: "select to \"add\" summary samples to other samples, or\nto \"only\" show summary\
    \ samples or to \"avoid\" summaries\nat all"
  type: string?
  inputBinding:
    prefix: --summary
- id: in_take_out_root
  doc: remove counts directly assigned to the "root" level
  type: boolean?
  inputBinding:
    prefix: --takeoutroot
- id: in_no_kol_lapse
  doc: show the "cellular organisms" taxon
  type: boolean?
  inputBinding:
    prefix: --nokollapse
- id: in_debug
  doc: increase output verbosity and perform additional
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_sequential
  doc: deactivate parallel processing
  type: boolean?
  inputBinding:
    prefix: --sequential
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_checks
  doc: --strain              set strain level instead of species as the resolution
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file
  doc: "Centrifuge output files. If a single directory is\nentered, every .out file\
    \ inside will be taken as a\ndifferent sample. Multiple -f is available to include\n\
    several Centrifuge samples."
  type: File?
  outputBinding:
    glob: $(inputs.in_file)
- id: out_generic
  doc: "Output file from a generic classifier. It requires the\nflag --format (see\
    \ such option for details). Multiple\n-g is available to include several generic\
    \ samples."
  type: File?
  outputBinding:
    glob: $(inputs.in_generic)
- id: out_lm_at
  doc: "LMAT output dir or file prefix. If just \".\" is\nentered, every subdirectory\
    \ under the current\ndirectory will be taken as a sample and scanned\nlooking\
    \ for LMAT output files. Multiple -l is\navailable to include several samples."
  type: File?
  outputBinding:
    glob: $(inputs.in_lm_at)
- id: out_clark
  doc: "CLARK full-mode output files. If a single directory is\nentered, every .csv\
    \ file inside will be taken as a\ndifferent sample. Multiple -r is available to\
    \ include\nseveral CLARK, CLARK-l, and CLARK-S full-mode samples."
  type: File?
  outputBinding:
    glob: $(inputs.in_clark)
- id: out_kraken
  doc: "Kraken output files. If a single directory is entered,\nevery .krk file inside\
    \ will be taken as a different\nsample. Multiple -k is available to include several\n\
    Kraken (version 1 or 2) samples."
  type: File?
  outputBinding:
    glob: $(inputs.in_kraken)
hints: []
cwlVersion: v1.1
baseCommand:
- rcf
