class: CommandLineTool
id: seealso.cwl
inputs:
- id: in_explode
  doc: "boolean    [N] The groups that EMBOSS applications\nbelong to have two forms,\
    \ exploded and not\nexploded. The exploded group names are more\nnumerous and\
    \ often vaguely phrased than the\nnon-exploded ones. The exploded names are\n\
    formed from definitions of the group names\nthat start like NAME1:NAME2 and which\
    \ are\nthen expanded into many combinations of the\nnames as: 'NAME1', 'NAME2',\
    \ 'NAME1 NAME2',\nNAME2 NAME1'. The non-expanded names are\nsimply like: 'NAME1\
    \ NAME2'.\nUsing expanded group names will find many\nmore programs which share\
    \ at least some of\nthe expanded names than using the\nnon-exploded names and\
    \ so you will get more\nprograms reported as sharing a similar\nfunction than\
    \ you will if you specify that\nyou wish to use non-exploded names"
  type: boolean
  inputBinding:
    prefix: -explode
- id: in_outfile
  doc: outfile    [stdout] Output file name
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
  doc: "boolean    [N] If you use this option, then only the\ngroup names will output\
    \ to the file"
  type: boolean
  inputBinding:
    prefix: -groups
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
  doc: "boolean    [N] The groups that EMBOSS applications\nbelong to have up to two\
    \ levels, for example\nthe primary group 'ALIGNMENT' has several\nsub-groups,\
    \ or second-level groups, e.g.:\nCONSENSUS, DIFFERENCES, DOT PLOTS, GLOBAL,\n\
    LOCAL, MULTIPLE. To aid programs that parse\nthe output of seealso that require\
    \ the names\nof these subgroups, a colon ':' will be\nplaced between the first\
    \ and second level of\nthe group name if this option is true."
  type: boolean
  inputBinding:
    prefix: -colon
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: outfile    [stdout] Output file name
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
- seealso
