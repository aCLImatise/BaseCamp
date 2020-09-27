class: CommandLineTool
id: _restrict.cwl
inputs:
- id: in_site_len
  doc: "integer    [4] This sets the minimum length of the\nrestriction enzyme recognition\
    \ site. Any\nenzymes with sites shorter than this will be\nignored. (Integer from\
    \ 2 to 20)"
  type: boolean
  inputBinding:
    prefix: -sitelen
- id: in_enzymes
  doc: "string     [all] The name 'all' reads in all enzyme\nnames from the REBASE\
    \ database. You can\nspecify enzymes by giving their names with\ncommas between\
    \ then, such as:\n'HincII,hinfI,ppiI,hindiii'.\nThe case of the names is not important.\
    \ You\ncan specify a file of enzyme names to read\nin by giving the name of the\
    \ file holding\nthe enzyme names with a '@' character in\nfront of it, for example,\
    \ '@enz.list'.\nBlank lines and lines starting with a hash\ncharacter or '!' are\
    \ ignored and all other\nlines are concatenated together with a comma\ncharacter\
    \ ',' and then treated as the list\nof enzymes to search for.\nAn example of a\
    \ file of enzyme names is:\n! my enzymes\nHincII, ppiII\n! other enzymes\nhindiii\n\
    HinfI\nPpiI (Any string)"
  type: boolean
  inputBinding:
    prefix: -enzymes
- id: in_data_file
  doc: datafile   Restriction enzyme data file (optional)
  type: boolean
  inputBinding:
    prefix: -datafile
- id: in_m_file
  doc: "datafile   [Emethylsites.dat] Restriction enzyme\nmethylation data file"
  type: boolean
  inputBinding:
    prefix: -mfile
- id: in_min
  doc: "integer    [1] This sets the minimum number of cuts for\nany restriction enzyme\
    \ that will be\nconsidered. Any enzymes that cut fewer times\nthan this will be\
    \ ignored. (Integer from 1\nto 1000)"
  type: boolean
  inputBinding:
    prefix: -min
- id: in_max
  doc: "integer    [2000000000] This sets the maximum number of\ncuts for any restriction\
    \ enzyme that will\nbe considered. Any enzymes that cut more\ntimes than this\
    \ will be ignored. (Any\ninteger value)"
  type: boolean
  inputBinding:
    prefix: -max
- id: in_solo_fragment
  doc: "boolean    [N] This gives the fragment lengths of the\nforward sense strand\
    \ produced by complete\nrestriction by each restriction enzyme on\nits own. Results\
    \ are added to the tail\nsection of the report."
  type: boolean
  inputBinding:
    prefix: -solofragment
- id: in_single
  doc: "boolean    [N] If this is set then this forces the\nvalues of the mincuts\
    \ and maxcuts qualifiers\nto both be 1. Any other value you may have\nset them\
    \ to will be ignored."
  type: boolean
  inputBinding:
    prefix: -single
- id: in_plasmid
  doc: "boolean    [N] If this is set then this allows searches\nfor restriction enzyme\
    \ recognition site and\ncut positions that span the end of the\nsequence to be\
    \ considered."
  type: boolean
  inputBinding:
    prefix: -plasmid
- id: in_methylation
  doc: "boolean    [N] If this is set then RE recognition sites\nwill not match methylated\
    \ bases."
  type: boolean
  inputBinding:
    prefix: -methylation
- id: in_fragments
  doc: "boolean    [N] This gives the fragment lengths of the\nforward sense strand\
    \ produced by complete\nrestriction using all of the input enzymes\ntogether.\
    \ Results are added to the tail\nsection of the report."
  type: boolean
  inputBinding:
    prefix: -fragments
- id: in_considered_dot
  doc: -[no]ambiguity      boolean    [Y] This allows those enzymes which have one
  type: string
  inputBinding:
    position: 0
- id: in_the_mdot
  doc: -alphabetic         boolean    [N] Sort output alphabetically
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- _restrict
