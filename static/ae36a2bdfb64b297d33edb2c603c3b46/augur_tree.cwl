class: CommandLineTool
id: augur_tree.cwl
inputs:
- id: in_alignment
  doc: 'alignment in fasta or VCF format (default: None)'
  type: string?
  inputBinding:
    prefix: --alignment
- id: in_method
  doc: 'tree builder to use (default: iqtree)'
  type: string?
  inputBinding:
    prefix: --method
- id: in_output
  doc: 'file name to write tree to (default: None)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_substitution_model
  doc: "{HKY,GTR,HKY+G,GTR+G,GTR+R10}\nsubstitution model to use. Specify 'none' to\
    \ run\nModelTest. Currently, only available for IQTREE.\n(default: GTR)"
  type: boolean?
  inputBinding:
    prefix: --substitution-model
- id: in_n_threads
  doc: "number of threads to use; specifying the value 'auto'\nwill cause the number\
    \ of available CPU cores on your\nsystem, if determinable, to be used (default:\
    \ 1)"
  type: long?
  inputBinding:
    prefix: --nthreads
- id: in_vcf_reference
  doc: "fasta file of the sequence the VCF was mapped to\n(default: None)"
  type: File?
  inputBinding:
    prefix: --vcf-reference
- id: in_exclude_sites
  doc: "file name of one-based sites to exclude for raw tree\nbuilding (BED format\
    \ in .bed files, DRM format in tab-\ndelimited files, or one position per line)\
    \ (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --exclude-sites
- id: in_tree_builder_args
  doc: "extra arguments to be passed directly to the\nexecutable of the requested\
    \ tree method (e.g., --tree-\nbuilder-args=\"-czb\") (default: )\n"
  type: string?
  inputBinding:
    prefix: --tree-builder-args
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augur:11.1.2--py_1
cwlVersion: v1.1
baseCommand:
- augur
- tree
