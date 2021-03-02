class: CommandLineTool
id: hydra_ext.cwl
inputs:
- id: in_config
  doc: "Configuration file.\nCol 1. Sample Id (string)\nCol 2. Mapping file (path/file)\n\
    Col 3. Expected insert size (integer)\nCol 4. Variance (integer)\nCol 5. Num.\
    \ variances (integer)"
  type: boolean?
  inputBinding:
    prefix: -config
- id: in_out
  doc: Stub for output files.
  type: boolean?
  inputBinding:
    prefix: -out
- id: in_mem
  doc: Maximum memory to use. Integer in Gb, default is 8 for 8Gb.
  type: boolean?
  inputBinding:
    prefix: -mem
- id: in_number_use_default
  doc: Number of threads to use. Integer, default is 1.
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_ms
  doc: "Minimum number of pairs required for variant to be called.\nDefault: 2"
  type: boolean?
  inputBinding:
    prefix: -ms
- id: in_lnk
  doc: "Maximum intrachromosomal distance allowed before a\nvariant is considered\
    \ to be between unlinked DNA segments.\nDefault: 1000000 (i.e., 1Mb)"
  type: boolean?
  inputBinding:
    prefix: -lnk
- id: in_is
  doc: "Choose most likely variant (when a tie exists) based on\nleast edit distance\
    \ rather than size."
  type: boolean?
  inputBinding:
    prefix: -is
- id: in_li
  doc: "Combine +/+ and -/- mappings when screening for inversions.\nThis increases\
    \ sensitivity in low coverage."
  type: boolean?
  inputBinding:
    prefix: -li
- id: in_use
  doc: "Which mappings should be used for each pair?\n\"best\"  Use the mappings with\
    \ the least edit distance for each pair.\nDefault.\n\"all\"   Use all mappings\
    \ for each pair.\n<INT>   Use the best plus those within <INT> edit distance of\
    \ best."
  type: boolean?
  inputBinding:
    prefix: -use
- id: in_max_mappings
  doc: Maximum number of mappings in a cluster before Hydra will "punt".
  type: boolean?
  inputBinding:
    prefix: -maxMappings
- id: in_crumbs
  doc: Hydra will leave temporary files.
  type: boolean?
  inputBinding:
    prefix: --crumbs
- id: in_mno
  doc: ''
  type: string?
  inputBinding:
    prefix: -mno
- id: in_mld
  doc: ''
  type: string?
  inputBinding:
    prefix: -mld
- id: in_in
  doc: ''
  type: File[]
  inputBinding:
    prefix: -in
- id: in_hydra
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hydra-multi:0.5.4--py27h8b12597_0
cwlVersion: v1.1
baseCommand:
- hydra-ext
