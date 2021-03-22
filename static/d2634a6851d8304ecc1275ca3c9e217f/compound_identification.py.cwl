class: CommandLineTool
id: compound_identification.py.cwl
inputs:
- id: in_an_no
  doc: Out path for first file
  type: File?
  inputBinding:
    prefix: --anno
- id: in_uniqid
  doc: Name of thecolumn in file that contains the uniqID
  type: File?
  inputBinding:
    prefix: --uniqID
- id: in_mz_id
  doc: Name of the column in file that contains MZ
  type: File?
  inputBinding:
    prefix: --mzID
- id: in_rt_id
  doc: Name of the column in file that contains RT
  type: File?
  inputBinding:
    prefix: --rtID
- id: in_library
  doc: Library to use forthe matching.
  type: string?
  inputBinding:
    prefix: --library
- id: in_lib_uniqid
  doc: "Name of thecolumn in the library file that contains\nthe uniqID"
  type: File?
  inputBinding:
    prefix: --libuniqID
- id: in_libm_zid
  doc: "Name of the column in the library file that contains\nMZ"
  type: File?
  inputBinding:
    prefix: --libmzID
- id: in_libr_tid
  doc: "Name of the column in the library file that contains\nRT"
  type: File?
  inputBinding:
    prefix: --librtID
- id: in_output
  doc: "Output path for identifiedcompounds.\n"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_an_no
  doc: Out path for first file
  type: File?
  outputBinding:
    glob: $(inputs.in_an_no)
- id: out_output
  doc: "Output path for identifiedcompounds.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/secimtools:21.3.4.2--py_0
cwlVersion: v1.1
baseCommand:
- compound_identification.py
