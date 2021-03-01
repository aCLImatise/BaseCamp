class: CommandLineTool
id: run_sepp.py.cwl
inputs:
- id: in_alignment_size
  doc: "max alignment subset size of N [default: 10% of the\ntotal number of taxa\
    \ or the placement subset size if\ngiven]"
  type: long?
  inputBinding:
    prefix: --alignmentSize
- id: in_placement_size
  doc: "max placement subset size of N [default: 10% of the\ntotal number of taxa\
    \ or the alignment length\n(whichever bigger)]"
  type: long?
  inputBinding:
    prefix: --placementSize
- id: in_fragment_chunksize
  doc: "maximum fragment chunk size of N. Helps controlling\nmemory. [default: 20000]"
  type: long?
  inputBinding:
    prefix: --fragmentChunkSize
- id: in_distance
  doc: "minimum p-distance before stopping the\ndecomposition[default: 1]"
  type: long?
  inputBinding:
    prefix: --distance
- id: in_diameter
  doc: "maximum tree diameter before stopping the\ndecomposition[default: None]"
  type: string?
  inputBinding:
    prefix: --diameter
- id: in_decomp_strategy
  doc: "decomposition strategy [default: using tree branch\nlength]"
  type: long?
  inputBinding:
    prefix: --decomp_strategy
- id: in_tempdir
  doc: "Tempfile files will be written to DIR. Full-path\nrequired. [default: /tmp/sepp]"
  type: File?
  inputBinding:
    prefix: --tempdir
- id: in_output
  doc: 'output files with prefix OUTPUT. [default: output]'
  type: string?
  inputBinding:
    prefix: --output
- id: in_outdir
  doc: "output to OUTPUT_DIR directory. full-path required.\n[default: .]"
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_config
  doc: "A config file, including options used to run SEPP.\nOptions provided as command\
    \ line arguments overwrite\nconfig file values for those options. [default: None]"
  type: File?
  inputBinding:
    prefix: --config
- id: in_tree
  doc: 'Input tree file (newick format) [default: None]'
  type: File?
  inputBinding:
    prefix: --tree
- id: in_ra_xml
  doc: "RAxML_info file including model parameters, generated\nby RAxML.[default:\
    \ None]"
  type: File?
  inputBinding:
    prefix: --raxml
- id: in_alignment
  doc: 'Aligned fasta file [default: None]'
  type: File?
  inputBinding:
    prefix: --alignment
- id: in_fragment
  doc: 'fragment file [default: None]'
  type: File?
  inputBinding:
    prefix: --fragment
- id: in_molecule
  doc: "Molecule type of sequences. Can be amino, dna, or rna\n[default: dna]"
  type: string?
  inputBinding:
    prefix: --molecule
- id: in_cpu
  doc: "Use N cpus [default: number of cpus available on the\nmachine]"
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_checkpoint
  doc: 'checkpoint file [default: no checkpointing]'
  type: File?
  inputBinding:
    prefix: --checkpoint
- id: in_interval
  doc: "Interval (in seconds) between checkpoint writes. Has\neffect only with -cp\
    \ provided. [default: 3600]"
  type: long?
  inputBinding:
    prefix: --interval
- id: in_random_seed
  doc: "random seed number. [default: 297834]\n"
  type: long?
  inputBinding:
    prefix: --randomseed
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "output to OUTPUT_DIR directory. full-path required.\n[default: .]"
  type: File?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- run_sepp.py
