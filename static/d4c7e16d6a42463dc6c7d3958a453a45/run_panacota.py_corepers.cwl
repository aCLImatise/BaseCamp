class: CommandLineTool
id: run_panacota.py_corepers.cwl
inputs:
- id: in_pangenome_file_line
  doc: "PanGenome file (1 line per family, first column is fam\nnumber)"
  type: long?
  inputBinding:
    prefix: -p
- id: in_specify_output_directory
  doc: Specify the output directory for your core/persistent
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_to_l
  doc: "min % of genomes having at least 1 member in a family to\nconsider the family\
    \ as persistent (between 0 and 1,\ndefault is 1 = 100% of genomes = Core genome).By\
    \ default,\nthe minimum number of genomes will be ceil('tol'*N) (N\nbeing the\
    \ total number of genomes). If you want to use\nfloor('tol'*N) instead, add the\
    \ '-F' option."
  type: long?
  inputBinding:
    prefix: --tol
- id: in_add_option_allow
  doc: "Add this option if you allow several members in any\ngenome of a family. By\
    \ default, only 1 (or 0 if tol<1)\nmember per genome are allowed in all genomes.\
    \ If you want\nto allow exactly 1 member in 'tol'% of the genomes, and\n0, 1 or\
    \ several members in the '1-tol'% left, use the\noption -X instead of this one:\
    \ -M and -X options are not\ncompatible."
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_add_option_want
  doc: "Add this option if you want to allow families having\nseveral members only\
    \ in '1-tol'% of the genomes. In the\nother genomes, only 1 member exactly is\
    \ allowed. This\noption is not compatible with -M (which is allowing\nmultigenic\
    \ families: having several members in any number\nof genomes)."
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_when_you_specify
  doc: "When you specify the '-tol' option, with a number lower\nthan 1, you can add\
    \ this option to use floor('tol'*N) as\na minimum number of genomes instead of\
    \ ceil('tol'*N)\nwhich is the default behavior."
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_verbose
  doc: Increase verbosity in stdout/stderr.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Do not display anything to stdout/stderr. log files will\nstill be created."
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_genome_dot
  doc: 'Optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specify_output_directory
  doc: Specify the output directory for your core/persistent
  type: Directory?
  outputBinding:
    glob: $(inputs.in_specify_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/panacota:1.2.0--py_0
cwlVersion: v1.1
baseCommand:
- run_panacota.py
- corepers
