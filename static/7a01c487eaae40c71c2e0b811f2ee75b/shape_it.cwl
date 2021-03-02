class: CommandLineTool
id: shape_it.cwl
inputs:
- id: in_reference
  doc: "File of the reference molecule with 3D coordinates.\nOnly the first molecule\
    \ in the reference file will be used.\nShape-it can also handle a gzipped files\
    \ if the extension is '.gz'\nAll input formats which are recognized by OpenBabel\
    \ are allowed."
  type: File?
  inputBinding:
    prefix: --reference
- id: in_dbase
  doc: "File of the database molecules with 3D coordinates.\nShape-it can also handle\
    \ gzipped files if the extension is '.gz'\nAll input formats which are recognized\
    \ by OpenBabel are allowed."
  type: File?
  inputBinding:
    prefix: --dbase
- id: in_out
  doc: "File to write all database or the N best molecules such that their\ncoordinates\
    \ correspond to the best alignment with the reference molecule.\nThe first molecule\
    \ in the file is the reference molecule. When this file\nif of type 'sdf', then\
    \ each molecule contains a set of properties in which\nthe respective scores are\
    \ reported. These fields are labeled with an\nidentifier starting with the tag\
    \ Shape-it::"
  type: File?
  inputBinding:
    prefix: --out
- id: in_scores
  doc: "Tab-delimited text file with the scores of molecules.\nWhen the N best scoring\
    \ molecules are reported the molecules are ranked\nwith the descending scores."
  type: File?
  inputBinding:
    prefix: --scores
- id: in_format
  doc: "Specifies the format of the reference, database and output files. If not\n\
    provided, then the formats are determined from the respective file extensions.\n\
    The specified format string should be one of the formats recognised\nby OpenBabel."
  type: File?
  inputBinding:
    prefix: --format
- id: in_best
  doc: "When this option is used, only the N best scoring alignments will be\nreported.\
    \ The scoring function is defined by the --rankBy option.\nBy default all molecules\
    \ in the database are reported with their\nrespective scores without any ordering."
  type: string?
  inputBinding:
    prefix: --best
- id: in_score_only
  doc: "When this option is used the molecules are not aligned, only the volume\n\
    overlap between the reference and the given pose is computed."
  type: boolean?
  inputBinding:
    prefix: --scoreOnly
- id: in_add_iterations
  doc: "Sets the number of additional iterations in the simulated annealing\noptimization\
    \ step. The default value is set to 0, which refers to only\na local gradient\
    \ ascent. Increasing the number of iterations will add\nadditional steps, and\
    \ might give better alignments but it also takes\nmore time."
  type: long?
  inputBinding:
    prefix: --addIterations
- id: in_rank_by
  doc: "This option can be used in combination with --best of --cutoff to rank\nthe\
    \ molecules according to a given scoring function. The type of scoring\nfunction\
    \ is indicated with a code:\n- TANIMOTO = Taninoto\n- TVERSKY_REF = reference\
    \ Tversky\n- TVERSKY_DB = database Tversky\nBy default TANIMOTO is used."
  type: string?
  inputBinding:
    prefix: --rankBy
- id: in_cut_off
  doc: "Defines a cutoff value. Only molecules with a score higher than the\ncutoff\
    \ are reported in the results files. Default value is set to\n0.0. The scoring\
    \ function is defined by the --rankBy option."
  type: double?
  inputBinding:
    prefix: --cutoff
- id: in_no_ref
  doc: "By default the reference molecule is written in the output files.\nUse this\
    \ option to switch off this behavior."
  type: boolean?
  inputBinding:
    prefix: --noRef
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_format
  doc: "Specifies the format of the reference, database and output files. If not\n\
    provided, then the formats are determined from the respective file extensions.\n\
    The specified format string should be one of the formats recognised\nby OpenBabel."
  type: File?
  outputBinding:
    glob: $(inputs.in_format)
hints: []
cwlVersion: v1.1
baseCommand:
- shape-it
