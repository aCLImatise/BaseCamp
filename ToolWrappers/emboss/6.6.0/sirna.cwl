class: CommandLineTool
id: sirna.cwl
inputs:
- id: in_pol_iii
  doc: "boolean    [N] This option allows you to select only\nthe 21 base probes that\
    \ start with a purine\nand so can be expressed from Pol III\nexpression vectors.\
    \ This is the NARN(17)YNN\npattern that has been suggested by Tuschl et\nal."
  type: boolean
  inputBinding:
    prefix: -poliii
- id: in_aa
  doc: "boolean    [N] This option allows you to select only\nthose 23 base regions\
    \ that start with AA. If\nthis option is not selected then regions\nthat start\
    \ with AA will be favoured by\ngiving them a higher score, but regions that\n\
    do not start with AA will also be reported."
  type: boolean
  inputBinding:
    prefix: -aa
- id: in_tt
  doc: "boolean    [N] This option allows you to select only\nthose 23 base regions\
    \ that end with TT. If\nthis option is not selected then regions\nthat end with\
    \ TT will be favoured by giving\nthem a higher score, but regions that do not\n\
    end with TT will also be reported."
  type: boolean
  inputBinding:
    prefix: -tt
- id: in_context
  doc: "boolean    [N] The output report file gives the\nsequences of the 21 base\
    \ siRNA regions ready\nto be ordered. This does not give you an\nindication of\
    \ the 2 bases before the 21\nbases. It is often interesting to see which\nof the\
    \ suggested possible probe regions have\nan 'AA' in front of them (i.e. it is\
    \ useful\nto see which of the 23 base regions start\nwith an 'AA'). This option\
    \ displays the\nwhole 23 bases of the region with the first\ntwo bases in brackets,\
    \ e.g. '(AA)' to give\nyou some context for the probe region. YOU\nSHOULD NOT\
    \ INCLUDE THE TWO BASES IN BRACKETS\nWHEN YOU PLACE AN ORDER FOR THE PROBES."
  type: boolean
  inputBinding:
    prefix: -context
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sirna
