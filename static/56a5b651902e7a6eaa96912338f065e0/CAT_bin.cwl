class: CommandLineTool
id: CAT_bin.cwl
inputs:
- id: b
  doc: ', --bin_fasta      Path to bin fasta file.'
  type: boolean
  inputBinding:
    prefix: -b
- id: d
  doc: ', --database_folder  Path to folder that contains database files.'
  type: boolean
  inputBinding:
    prefix: -d
- id: t
  doc: ', --taxonomy_folder  Path to folder that contains taxonomy files.'
  type: boolean
  inputBinding:
    prefix: -t
- id: r
  doc: ', --range          r parameter [0-49] (default: 5).'
  type: boolean
  inputBinding:
    prefix: -r
- id: f
  doc: ', --fraction       f parameter [0-0.99] (default: 0.3).'
  type: boolean
  inputBinding:
    prefix: -f
- id: o
  doc: ', --out_prefix     Prefix for output files (default: out.BAT).'
  type: boolean
  inputBinding:
    prefix: -o
- id: p
  doc: ', --proteins_fasta  Path to predicted proteins fasta file. If supplied, BAT
    will skip the protein prediction step.'
  type: boolean
  inputBinding:
    prefix: -p
- id: a
  doc: ', --diamond_alignment  Path to DIAMOND alignment table. If supplied, BAT will
    skip the DIAMOND alignment step and directly classify the bin. A predicted proteins
    fasta file should also be supplied with argument [-p / --proteins].'
  type: boolean
  inputBinding:
    prefix: -a
- id: path_to_prodigal
  doc: Path to Prodigal binaries. Please supply if BAT can not find Prodigal.
  type: boolean
  inputBinding:
    prefix: --path_to_prodigal
- id: path_to_diamond
  doc: Path to DIAMOND binaries. Please supply if BAT can not find DIAMOND.
  type: boolean
  inputBinding:
    prefix: --path_to_diamond
- id: no_stars
  doc: Suppress marking of suggestive classifications.
  type: boolean
  inputBinding:
    prefix: --no_stars
- id: force
  doc: Force overwrite existing files.
  type: boolean
  inputBinding:
    prefix: --force
- id: quiet
  doc: Suppress verbosity.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: no_log
  doc: Suppress log file.
  type: boolean
  inputBinding:
    prefix: --no_log
- id: i_know_what_im_doing
  doc: Flag for experimental features.
  type: boolean
  inputBinding:
    prefix: --I_know_what_Im_doing
- id: n
  doc: ', --nproc          Number of cores to deploy by DIAMOND (default: maximum).'
  type: boolean
  inputBinding:
    prefix: -n
- id: sensitive
  doc: 'Run DIAMOND in sensitive mode (default: not enabled).'
  type: boolean
  inputBinding:
    prefix: --sensitive
- id: block_size
  doc: 'DIAMOND block-size parameter (default: 2.0). Lower numbers will decrease memory
    and temporary disk space usage.'
  type: boolean
  inputBinding:
    prefix: --block_size
- id: index_chunks
  doc: 'DIAMOND index-chunks parameter (default: 4). Set to 1 on high memory machines.
    The parameter has no effect on temporary disk space usage.'
  type: boolean
  inputBinding:
    prefix: --index_chunks
- id: tmpdir
  doc: 'Directory for temporary DIAMOND files (default: directory to which output
    files are written).'
  type: boolean
  inputBinding:
    prefix: --tmpdir
- id: top
  doc: 'DIAMOND top parameter [0-50] (default: 50). Governs hits within range of best
    hit that are written to the alignment file. This is not the [-r / --range] parameter!
    Can only be set with the [--I_know_what_Im_doing] flag, see README.md.'
  type: boolean
  inputBinding:
    prefix: --top
outputs: []
cwlVersion: v1.1
baseCommand:
- CAT
- bin
