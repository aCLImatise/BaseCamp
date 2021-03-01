class: CommandLineTool
id: snakefmt.cwl
inputs:
- id: in_line_length
  doc: 'Lines longer than INT will be wrapped. [default: 88]'
  type: long?
  inputBinding:
    prefix: --line-length
- id: in_check
  doc: "Don't write the files back, just return the status.\nReturn code 0 means nothing\
    \ would change. Return code\n1 means some files would be reformatted. Return code\n\
    123 means there was an error."
  type: boolean?
  inputBinding:
    prefix: --check
- id: in_diff
  doc: "Don't write the files back, just output a diff for\neach file to stdout."
  type: File?
  inputBinding:
    prefix: --diff
- id: in_compact_diff
  doc: "Same as --diff but only shows lines that would change\nplus a few lines of\
    \ context."
  type: boolean?
  inputBinding:
    prefix: --compact-diff
- id: in_include
  doc: "A regular expression that matches files and\ndirectories that should be included\
    \ on recursive\nsearches.  An empty value means all files are\nincluded regardless\
    \ of the name.  Use forward slashes\nfor directories on all platforms (Windows,\
    \ too).\nExclusions are calculated first, inclusions later.\n[default: (\\.smk$|^Snakefile)]"
  type: string?
  inputBinding:
    prefix: --include
- id: in_exclude
  doc: "A regular expression that matches files and\ndirectories that should be excluded\
    \ on recursive\nsearches.  An empty value means no paths are\nexcluded. Use forward\
    \ slashes for directories on all\nplatforms (Windows, too). Exclusions are calculated\n\
    first, inclusions later.  [default: (\\.snakemake|\\.eg\ngs|\\.git|\\.hg|\\.mypy_cache|\\\
    .nox|\\.tox|\\.venv|\\.svn|_\nbuild|buck-out|build|dist)]"
  type: string?
  inputBinding:
    prefix: --exclude
- id: in_config
  doc: "Read configuration from PATH. By default, will try to\nread from `./pyproject.toml`"
  type: File?
  inputBinding:
    prefix: --config
- id: in_verbose
  doc: Turns on debug-level logger.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_provided_dot
  doc: Files are modified in-place by default; use diff, check, or  `snakefmt - <
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_diff
  doc: "Don't write the files back, just output a diff for\neach file to stdout."
  type: File?
  outputBinding:
    glob: $(inputs.in_diff)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/snakefmt:0.3.1--py_0
cwlVersion: v1.1
baseCommand:
- snakefmt
