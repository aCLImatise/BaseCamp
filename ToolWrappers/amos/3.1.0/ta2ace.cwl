class: CommandLineTool
id: ta2ace.cwl
inputs:
- id: in_file_must_end
  doc: ".asm TIGR .asm file.  Must end in .asm\n-o <outfile>    Output file, by default\
    \ <infile>.ace\n-c <chromat_dir> Location of the chromatograms\n-p <phd_dir> \
    \   Location of the PHD directory\n-s <seqfile>    Sequence file, by default <infile>.seq\n\
    -D <db>         Database (if not using -i and -s)\n-S <server>     Database info\n\
    -U <user>\n-P <pass>\n-a <asmfile>    List of assemblies to put in .ace file\n"
  type: File
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_must_end
  doc: ".asm TIGR .asm file.  Must end in .asm\n-o <outfile>    Output file, by default\
    \ <infile>.ace\n-c <chromat_dir> Location of the chromatograms\n-p <phd_dir> \
    \   Location of the PHD directory\n-s <seqfile>    Sequence file, by default <infile>.seq\n\
    -D <db>         Database (if not using -i and -s)\n-S <server>     Database info\n\
    -U <user>\n-P <pass>\n-a <asmfile>    List of assemblies to put in .ace file\n"
  type: File
  outputBinding:
    glob: $(inputs.in_file_must_end)
cwlVersion: v1.1
baseCommand:
- ta2ace
