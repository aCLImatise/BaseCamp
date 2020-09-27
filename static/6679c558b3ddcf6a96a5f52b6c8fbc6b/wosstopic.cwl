class: CommandLineTool
id: wosstopic.cwl
inputs:
- id: in_explode
  doc: "boolean    [N] The groups that EMBOSS applications\nbelong to have two forms,\
    \ exploded and not\nexploded. The exploded group names are more\nnumerous and\
    \ often vaguely phrased than the\nnon-exploded ones. The exploded names are\n\
    formed from definitions of the group names\nthat start like NAME1:NAME2 and which\
    \ are\nthen expanded into many combinations of the\nnames as: 'NAME1', 'NAME2',\
    \ 'NAME1 NAME2',\nNAME2 NAME1'. The non-expanded names are\nsimply like: 'NAME1\
    \ NAME2'."
  type: boolean
  inputBinding:
    prefix: -explode
- id: in_show_keywords
  doc: boolean    [N] Show keywords with program documentation
  type: boolean
  inputBinding:
    prefix: -showkeywords
- id: in_outfile
  doc: outfile    [stdout] Tool metadata output file
  type: File
  inputBinding:
    prefix: -outfile
- id: in_html
  doc: "toggle     [N] If you are sending the output to a file,\nthis will format\
    \ it for displaying as a\ntable in a WWW document."
  type: File
  inputBinding:
    prefix: -html
- id: in_groups
  doc: "boolean    [N] If you use this option, then only the\ngroup names will be\
    \ output to the file"
  type: boolean
  inputBinding:
    prefix: -groups
- id: in_alphabetic
  doc: "boolean    [N] If you use this option, then you will\nget a single list of\
    \ the program names and\ndescriptions instead of the programs being\nlisted in\
    \ their functional groups."
  type: boolean
  inputBinding:
    prefix: -alphabetic
- id: in_sensitive
  doc: "boolean    [N] By default, the query keywords are\nmatched against the EDAM\
    \ term names (and\nsynonyms) only. This option also matches the\nkeywords against\
    \ the EDAM term definitions\nand will therefore (typically) report more\nmatches."
  type: boolean
  inputBinding:
    prefix: -sensitive
- id: in_obsolete
  doc: "boolean    [N] The default behaviour is to not use or\nreturn obsolete terms.\
    \ This option if set\nwill include all terms."
  type: boolean
  inputBinding:
    prefix: -obsolete
- id: in_emboss
  doc: is true). EMBASSY programs
  type: string
  inputBinding:
    prefix: -emboss
- id: in_show_embassy
  doc: "string     If you use this option then this EMBASSY\npackage program documentation\
    \ will be\nsearched. EMBASSY programs are not strictly\npart of EMBOSS, but use\
    \ the same code\nlibraries and share the same look and feel,\nbut are generally\
    \ developed by people who\nwish the programs to be outside of the GNU\nPublic\
    \ Licence scheme (Any string)"
  type: boolean
  inputBinding:
    prefix: -showembassy
- id: in_colon
  doc: "boolean    [N] The groups that EMBOSS applications\nbelong to up to two levels,\
    \ for example the\nprimary group 'ALIGNMENT' has several\nsub-groups, or second-level\
    \ groups, e.g.:\nCONSENSUS, DIFFERENCES, DOT PLOTS, GLOBAL,\nLOCAL, MULTIPLE.\
    \ To aid programs that parse\nthe output of wossname that require the\nnames of\
    \ these subgroups, a colon ':' will\nbe placed between the first and second level\n\
    of the group name if this option is true.\nNote: This does not apply if the group\
    \ names\nhave been exploded with the 'explode'\noption."
  type: boolean
  inputBinding:
    prefix: -colon
- id: in_gui
  doc: "boolean    [N] This option is intended to help those\nwho are designing Graphical\
    \ User Interfaces\nto the EMBOSS applications. Some EMBOSS\nprograms are inappropriate\
    \ for running in a\nGUI, these include other menu programs and\ninteractive editors.\
    \ This option allows you\nto only report those programs that can be\nrun from\
    \ a GUI"
  type: boolean
  inputBinding:
    prefix: -gui
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: outfile    [stdout] Tool metadata output file
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
- id: out_html
  doc: "toggle     [N] If you are sending the output to a file,\nthis will format\
    \ it for displaying as a\ntable in a WWW document."
  type: File
  outputBinding:
    glob: $(inputs.in_html)
cwlVersion: v1.1
baseCommand:
- wosstopic
