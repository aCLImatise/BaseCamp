class: CommandLineTool
id: mmseqs_tar2db.cwl
inputs:
- id: in_output_dbtype
  doc: 'Set database type for resulting database: Amino acid sequences 0, Nucl. seq.
    1, Profiles 2, Alignment result 5, Clustering result 6, Prefiltering result 7,
    Taxonomy result 8, Indexed database 9, cA3M MSAs 10, FASTA or A3M MSAs 11, Generic
    database 12, Omit dbtype file 13, Bi-directional prefiltering result 14, Offsetted
    headers 15 [12]'
  type: long?
  inputBinding:
    prefix: --output-dbtype
- id: in_tar_include
  doc: Include file names based on this regex [.*]
  type: File?
  inputBinding:
    prefix: --tar-include
- id: in_tar_exclude
  doc: Exclude file names based on this regex [^$]
  type: File?
  inputBinding:
    prefix: --tar-exclude
- id: in_compressed
  doc: Write compressed output [0]
  type: long?
  inputBinding:
    prefix: --compressed
- id: in_threads
  doc: Number of CPU-cores used (all by default) [2]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbosity_level_errors
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0
cwlVersion: v1.1
baseCommand:
- mmseqs
- tar2db
