class: CommandLineTool
id: genomepy_install.cwl
inputs:
- id: in_provider
  doc: download from this provider
  type: string?
  inputBinding:
    prefix: --provider
- id: in_genomes_dir
  doc: create output directory here
  type: Directory?
  inputBinding:
    prefix: --genomes_dir
- id: in_local_name
  doc: custom name
  type: string?
  inputBinding:
    prefix: --localname
- id: in_mask
  doc: 'DNA masking: hard/soft/none (default: soft)'
  type: string?
  inputBinding:
    prefix: --mask
- id: in_keep_alt
  doc: keep alternative regions
  type: boolean?
  inputBinding:
    prefix: --keep-alt
- id: in_regex
  doc: regex to filter sequences
  type: string?
  inputBinding:
    prefix: --regex
- id: in_no_match
  doc: select sequences that *don't* match regex
  type: boolean?
  inputBinding:
    prefix: --no-match
- id: in_b_gzip
  doc: bgzip genome
  type: boolean?
  inputBinding:
    prefix: --bgzip
- id: in_threads
  doc: build index using multithreading
  type: long?
  inputBinding:
    prefix: --threads
- id: in_force
  doc: overwrite existing files
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_annotation
  doc: download annotation
  type: boolean?
  inputBinding:
    prefix: --annotation
- id: in_only_annotation
  doc: only download annotation (sets -a)
  type: boolean?
  inputBinding:
    prefix: --only_annotation
- id: in_skip_sanitizing
  doc: "skip (check for) matching of contig names\nbetween annotation and fasta (sets\
    \ -a)"
  type: boolean?
  inputBinding:
    prefix: --skip_sanitizing
- id: in_ensembl_top_level
  doc: always download toplevel-genome
  type: boolean?
  inputBinding:
    prefix: --ensembl-toplevel
- id: in_ensembl_version
  doc: select release version
  type: long?
  inputBinding:
    prefix: --ensembl-version
- id: in_ucsc_annotation
  doc: "specify annotation to download: UCSC, Ensembl,\nNCBI_refseq or UCSC_refseq"
  type: string?
  inputBinding:
    prefix: --ucsc-annotation
- id: in_url_to_annotation
  doc: "link to the annotation file, required if this\nis not in the same directory\
    \ as the fasta file"
  type: File?
  inputBinding:
    prefix: --url-to-annotation
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_genomes_dir
  doc: create output directory here
  type: Directory?
  outputBinding:
    glob: $(inputs.in_genomes_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/genomepy:0.9.3--py_0
cwlVersion: v1.1
baseCommand:
- genomepy
- install
