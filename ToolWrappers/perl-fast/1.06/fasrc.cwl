class: CommandLineTool
id: fasrc.cwl
inputs:
- id: in_no_brand
  doc: This option will not append -rc to the end of the identifiers.
  type: boolean?
  inputBinding:
    prefix: --nobrand
- id: in_man
  doc: Print the manual page and exit.
  type: boolean?
  inputBinding:
    prefix: --man
- id: in_log
  doc: "Creates, or appends to, a generic FAST logfile in the current\nworking directory.\
    \ The logfile records date/time of execution,\nfull command with options and arguments,\
    \ and an optional\ncomment."
  type: boolean?
  inputBinding:
    prefix: --log
- id: in_use_name_default
  doc: "[string], --logname=[string]\nUse [string] as the name of the logfile. Default\
    \ is\n\"FAST.log.txt\"."
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_include_comment_logfile
  doc: "[string], --comment=[string]\nInclude comment [string] in logfile. No comment\
    \ is saved by\ndefault."
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_mol_type
  doc: "=[dna|rna|protein]\nSpecify the type of sequence on input (should not be needed\
    \ in\nmost cases, but sometimes Bioperl cannot guess and complains\nwhen processing\
    \ data)."
  type: boolean?
  inputBinding:
    prefix: --moltype
- id: in_fast_q
  doc: "use fastq format as input and output.\n"
  type: boolean?
  inputBinding:
    prefix: --fastq
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/perl-fast:1.06--pl526_0
cwlVersion: v1.1
baseCommand:
- fasrc
