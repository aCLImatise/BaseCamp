class: CommandLineTool
id: mark_prophage_features.py.cwl
inputs:
- id: in_genbank
  doc: Path to input GenBank file.
  type: File?
  inputBinding:
    prefix: --genbank
- id: in_outdir
  doc: Path to output directory to write updated GenBank(s).
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_pp_coords
  doc: Path to prophage_coordinates.tsv file.
  type: File?
  inputBinding:
    prefix: --ppcoords
- id: in_table
  doc: "Path to tab-delimited file with confirmed prophage\nregions to mark. The file\
    \ has to have the following\ncolumns: 1 - path to GenBank file, 2 - replicon id,\
    \ 3\n- prophage start coordinate, 4 - prophage end\ncoordinate, 5 (optional) -\
    \ prophage name (if not\nprovided pp1, pp2, etc. will be assigned for each\nfile)"
  type: File?
  inputBinding:
    prefix: --table
- id: in_gzip_files
  doc: "Gzip all output files. '.gz' extension will be added\nif missing. [Default:\
    \ False]"
  type: boolean?
  inputBinding:
    prefix: --gzip_files
- id: in_un_gzip_files
  doc: "Ungzip all output files. '.gz' extension will be\nremoved if present. [Default:\
    \ False]"
  type: boolean?
  inputBinding:
    prefix: --ungzip_files
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Path to output directory to write updated GenBank(s).
  type: File?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/phispy:4.2.6--py38hed8969a_0
cwlVersion: v1.1
baseCommand:
- mark_prophage_features.py
