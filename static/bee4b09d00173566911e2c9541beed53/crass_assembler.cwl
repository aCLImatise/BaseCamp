class: CommandLineTool
id: crass_assembler.cwl
inputs:
- id: in_group
  doc: "<INT>   ID of the group that you want to assemble.  Give only the group number;\
    \ For example\nif the group is G9, the argument to this option should just be\
    \ the number 9"
  type: boolean
  inputBinding:
    prefix: --group
- id: in_segments
  doc: "<LIST>  A comma separated list of numbered segments to assemble from the specified\
    \ group\nThe segment identifier is the number listed after the 'C' in the name\
    \ of the spacer\nin the graph image of the CRISPR.  For example if a spacer's\
    \ name is sp_6_3_C1, then\nthe segment is 1."
  type: boolean
  inputBinding:
    prefix: --segments
- id: in_xml
  doc: <FILE>  xml output file created by crass.  should be called crass.crispr in
    the crass output directory
  type: File
  inputBinding:
    prefix: --xml
- id: in_in_dir
  doc: '<DIR>   input directory for the assembly. This will be the output directory
    from Crass [default: .]'
  type: boolean
  inputBinding:
    prefix: --inDir
- id: in_outdir
  doc: <DIR>   name of the directory for the assembly output files
  type: Directory
  inputBinding:
    prefix: --outDir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_xml
  doc: <FILE>  xml output file created by crass.  should be called crass.crispr in
    the crass output directory
  type: File
  outputBinding:
    glob: $(inputs.in_xml)
- id: out_outdir
  doc: <DIR>   name of the directory for the assembly output files
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- crass-assembler
