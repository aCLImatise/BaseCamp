class: CommandLineTool
id: CAT_contigs.cwl
inputs:
- id: in_contigs_fast_a
  doc: Path to contigs fasta file.
  type: boolean?
  inputBinding:
    prefix: --contigs_fasta
- id: in_database_folder
  doc: Path to folder that contains database files.
  type: boolean?
  inputBinding:
    prefix: --database_folder
- id: in_taxonomy_folder
  doc: Path to folder that contains taxonomy files.
  type: boolean?
  inputBinding:
    prefix: --taxonomy_folder
- id: in_range
  doc: 'r parameter [0-49] (default: 10).'
  type: boolean?
  inputBinding:
    prefix: --range
- id: in_out_prefix
  doc: 'Prefix for output files (default: out.CAT).'
  type: boolean?
  inputBinding:
    prefix: --out_prefix
- id: in_proteins_fast_a
  doc: "Path to predicted proteins fasta file. If supplied,\nCAT will skip the protein\
    \ prediction step."
  type: boolean?
  inputBinding:
    prefix: --proteins_fasta
- id: in_diamond_alignment
  doc: "Path to alignment table. If supplied, CAT will skip\nthe alignment step and\
    \ directly classify the contigs.\nA predicted proteins fasta file should also\
    \ be\nsupplied with argument [-p / --proteins]."
  type: boolean?
  inputBinding:
    prefix: --diamond_alignment
- id: in_path_to_prodigal
  doc: Path to Prodigal binaries. Supply if CAT can not find
  type: boolean?
  inputBinding:
    prefix: --path_to_prodigal
- id: in_force
  doc: Force overwrite existing files.
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_quiet
  doc: Suppress verbosity.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: Increase verbosity.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_no_log
  doc: Suppress log file.
  type: boolean?
  inputBinding:
    prefix: --no_log
- id: in_i_know_what_im_doing
  doc: Flag for experimental features.
  type: boolean?
  inputBinding:
    prefix: --I_know_what_Im_doing
- id: in_nproc
  doc: "Number of cores to deploy by DIAMOND (default:\nmaximum)."
  type: boolean?
  inputBinding:
    prefix: --nproc
- id: in_sensitive
  doc: 'Run DIAMOND in sensitive mode (default: not enabled).'
  type: boolean?
  inputBinding:
    prefix: --sensitive
- id: in_block_size
  doc: "DIAMOND block-size parameter (default: 2.0). Lower\nnumbers will decrease\
    \ memory and temporary disk space\nusage."
  type: boolean?
  inputBinding:
    prefix: --block_size
- id: in_index_chunks
  doc: "DIAMOND index-chunks parameter (default: 4). Set to 1\non high memory machines.\
    \ The parameter has no effect\non temporary disk space usage."
  type: boolean?
  inputBinding:
    prefix: --index_chunks
- id: in_tmpdir
  doc: "Directory for temporary DIAMOND files (default:\ndirectory to which output\
    \ files are written)."
  type: Directory?
  inputBinding:
    prefix: --tmpdir
- id: in_compress
  doc: Compress DIAMOND alignment file.
  type: boolean?
  inputBinding:
    prefix: --compress
- id: in_top
  doc: "DIAMOND top parameter [0-50] (default: 50). Governs\nhits within range of\
    \ best hit that are written to the\nalignment file. This is not the [-r / --range]\n\
    parameter! Can only be set with the\n[--I_know_what_Im_doing] flag, see README.md.\n"
  type: boolean?
  inputBinding:
    prefix: --top
- id: in_prodigal_dot
  doc: --path_to_diamond     Path to DIAMOND binaries. Supply if CAT can not find
  type: string
  inputBinding:
    position: 0
- id: in_diamond_dot
  doc: --no_stars            Suppress marking of suggestive classifications.
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_tmpdir
  doc: "Directory for temporary DIAMOND files (default:\ndirectory to which output\
    \ files are written)."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_tmpdir)
hints: []
cwlVersion: v1.1
baseCommand:
- CAT
- contigs
