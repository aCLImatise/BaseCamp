class: CommandLineTool
id: map2slim.cwl
inputs:
- id: in_slim_filethis_argument
  doc: "slim file\nThis argument adds bucket terms to the slim ontology; see the\n\
    documentation below for an explanation. The new slim ontology file,\nincluding\
    \ bucket terms will be written to bucket slim file"
  type: File
  inputBinding:
    prefix: -b
- id: in_out_map
  doc: "mapping file\nThis will generate a mapping file for every term in the full\n\
    ontology showing both the most pertinent slim term and all slim\nterms that are\
    \ ancestors. If you use this option, do NOT supply a\ngene-associations file"
  type: File
  inputBinding:
    prefix: -outmap
- id: in_will_force_mapslim
  doc: "This will force map2slim to give counts of the assoc file, rather\nthan map\
    \ it"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_when_used_conjunction
  doc: "When used in conjunction with -c will tab the output so that the\nindentation\
    \ reflects the tree hierarchy in the slim file"
  type: File
  inputBinding:
    prefix: -t
- id: in_filethis_will_write
  doc: "file\nThis will write the mapped assocs (or counts) to the specified file,\n\
    rather than to the screen"
  type: File
  inputBinding:
    prefix: -o
- id: in_show_names
  doc: "(Only works with -outmap)\nShow the names of the term in the slim mapping\
    \ file"
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: "In normal mode, a standard format gene-association file will be written.\n\
    The GO ID column (5) will contain GO slim IDs. The mapping corresponds\nto the\
    \ 2nd column in the table above. Note that the output file may\ncontain more lines\
    \ that the input file. This is because some full GO IDs\nhave more than one pertinent\
    \ slim ID.\nCOUNT MODE\nmap2slim can be run with the -c option, which will gives\
    \ the counts of\ndistinct gene products mapped to each slim term. The columns\
    \ are as\nfollows\nGO Term\nThe first column is the GO ID followed by the term\
    \ name (the term\nname is provided as it is found in both the full GO and slim\n\
    ontologies - these will usually be the same but occasionally the\nslim file will\
    \ lage behind changes in the GO file)\nCount of gene products for which this is\
    \ the most relevant slim term\nthe number of distinct gene products for which\
    \ this is the most\npertinent/direct slim ID. By most direct we mean that either\
    \ the\nassociation is made directly to this term, OR the association is\nmade\
    \ to a child of this slim term AND there is no child slim term\nwhich the association\
    \ maps to.\nFor most slims, this count will be equivalent to the number of\nassociations\
    \ directly mapped to this slim term. However, some older\nslim files are \"spotty\"\
    \ in that they admit \"gaps\". For example, if\nthe slim has all children of \"\
    biological process\" with the exception\nof \"behavior\" then all annotations\
    \ to \"behavior\" or its children\nwill be counted here\nsee example below\nCount\
    \ of gene products inferred to be associated with slim term\nand the number of\
    \ distinct gene products which are annotated to any\ndescendant of this slim ID\
    \ (or annotated directly to the slim ID).\nobsoletion flag\nGO ontology\nTo take\
    \ an example; if we use -t and -c like this:\nmap2slim -t -c GO_slims/goslim_generic.obo\
    \ ontology/gene_ontology.obo gene-associations/gene_association.fb\nThen part\
    \ of the results may look like this:\nGO:0008150 biological_process (biological_process)\
    \     34      10025           biological_process\nGO:0007610 behavior (behavior)\
    \        632     632             biological_process\nGO:0000004 biological process\
    \ unknown (biological process unknown)    832     832             biological_process\n\
    GO:0007154 cell communication (cell communication)    333     1701           \
    \ biological_process\nGO:0008037 cell recognition (cell recognition)       19\
    \      19              biological_process\n19 products were mapped to GO:0008037\
    \ or one of its children. (GO:0008037 is a leaf node in the slim, so the two counts\
    \ are identical).\nOn the other hand, GO:0008150 only gets 34 products for which\
    \ this is\nthe most relevant term. This is because most annotations would map\
    \ to\nsome child of GO:0008150 in the slim, such as GO:0007610 (behavior).\nThese\
    \ 34 gene products are either annotated directly to GO:0008150, or\nto some child\
    \ of this term which is not in the slim. This can point to\n'gaps' in the slim.\
    \ Note that running map2slim with the -b option will\n'plug' these gaps with artificial\
    \ filler terms."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_when_used_conjunction
  doc: "When used in conjunction with -c will tab the output so that the\nindentation\
    \ reflects the tree hierarchy in the slim file"
  type: File
  outputBinding:
    glob: $(inputs.in_when_used_conjunction)
cwlVersion: v1.1
baseCommand:
- map2slim
