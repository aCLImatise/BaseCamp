class: CommandLineTool
id: mimodd_reheader.cwl
inputs:
- id: in_rg
  doc: "|update|replace [RG_TEMPLATE] [RG_MAPPING ...]\nhow to compile the read group\
    \ section of the new\nheader; ignore: do not use template information ->\nkeep\
    \ original read groups, update: use template\ninformation to update original header\
    \ content,\nreplace: use only template read group information ->\ndiscard original\
    \ (default: replace if a general\ntemplate is specified, ignore if not); the optional\n\
    RG_TEMPLATE is used instead of the general template to\nprovide the template read\
    \ group information; by\ndefault, update mode uses template information about\n\
    read-groups to add to / overwrite the original\ninformation of read-groups with\
    \ the same ID, keeps all\nread-groups found only in the original header and adds\n\
    read-groups found only in the template; replace\noverwrites all original information\
    \ about a read-group\nif a read-group with the same ID is found in the\ntemplate,\
    \ discards all read-groups found only in the\noriginal header and adds read-groups\
    \ found only in the\ntemplate; to update or replace the information of a\nread\
    \ group with that of a template read-group with a\ndifferent ID, a RG_MAPPING\
    \ between old and new ID\nvalues can be provided in the format old_id : new_id\n\
    [old_id : new_id, ..]"
  type: string?
  inputBinding:
    prefix: --rg
- id: in_sq
  doc: "|update|replace [SQ_TEMPLATE] [SQ_MAPPING ...]\nhow to compile the sequence\
    \ dictionary of the new\nheader; ignore: do not use template information ->\n\
    keep original sequence dictionary, update: use\ntemplate information to update\
    \ original header\ncontent, replace: use only template sequence\ninformation ->\
    \ discard original (default: replace if a\ngeneral template is specified, ignore\
    \ if not); the\noptional SQ_TEMPLATE is used instead of the general\ntemplate\
    \ to provide the template sequence dictionary;\nby default, update mode uses template\
    \ sequence\ninformation to add to / overwrite the original\ninformation of sequences\
    \ with the same name (SN tag\nvalue), keeps all sequences found only in the original\n\
    header and adds sequences found only in the template;\nreplace overwrites all\
    \ original information about a\nsequence if a sequence with the same name is found\
    \ in\nthe template, discards all sequences found only in the\noriginal header\
    \ and adds sequences found only in the\ntemplate; to update or replace the information\
    \ about a\nsequence with that of a template sequence with a\ndifferent name, a\
    \ SQ_MAPPING between old and new\nsequence names (SN values) can be provided in\
    \ the\nformat old_sn : new_sn [old_sn : new_sn, ..]; to\nprotect against file\
    \ format corruption, the tool will\nNEVER modify the recorded LENGTH (LN tag)\
    \ nor the MD5\nchecksum (M5 tag) of any sequence"
  type: long?
  inputBinding:
    prefix: --sq
- id: in_co
  doc: "how to compile the comments (CO lines) of the new\nheader; ignore: do not\
    \ use template comments -> keep\noriginal comments, update: append template comment\n\
    lines to original comments, replace: use only template\ncomments -> discard original\
    \ (default: replace if a\ngeneral template is specified, ignore if not); the\n\
    optional CO_TEMPLATE is used instead of the general\ntemplate to provide the template\
    \ comments"
  type: string[]
  inputBinding:
    prefix: --co
- id: in_rgm
  doc: "optional mapping between read group ID values in the\nformat old_id : new_id\
    \ [old_id : new_id, ..]; used to\nrename read groups and applied AFTER any other\n\
    modifications to the read group section (i.e., every\nold_id must exist in the\
    \ modified header)"
  type: string[]
  inputBinding:
    prefix: --rgm
- id: in_sqm
  doc: "optional mapping between sequence names (SN field\nvalues) in the format old_sn\
    \ : new_sn [old_sn :\nnew_sn, ..]; used to rename sequences in the sequence\n\
    dictionary and applied AFTER any other modifications\nto the sequence dictionary\
    \ (i.e., every old_sn must\nexist in the modified header)"
  type: string[]
  inputBinding:
    prefix: --sqm
- id: in_ofile
  doc: "redirect the output to the specified file (default:\nstdout)"
  type: File?
  inputBinding:
    prefix: --ofile
- id: in_output_only_header
  doc: output only the resulting header
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_template
  doc: template SAM file providing header information
  type: string
  inputBinding:
    position: 0
- id: in_input_file
  doc: input BAM file to reheader
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ofile
  doc: "redirect the output to the specified file (default:\nstdout)"
  type: File?
  outputBinding:
    glob: $(inputs.in_ofile)
hints: []
cwlVersion: v1.1
baseCommand:
- mimodd
- reheader
