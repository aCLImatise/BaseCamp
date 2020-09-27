class: CommandLineTool
id: mimeo_x.cwl
inputs:
- id: in_a_dir
  doc: Name of directory containing sequences from A genome.
  type: Directory
  inputBinding:
    prefix: --adir
- id: in_b_dir
  doc: Name of directory containing sequences from B genome.
  type: Directory
  inputBinding:
    prefix: --bdir
- id: in_a_fast_a
  doc: A genome as multifasta.
  type: string
  inputBinding:
    prefix: --afasta
- id: in_b_fast_a
  doc: B genome as multifasta.
  type: string
  inputBinding:
    prefix: --bfasta
- id: in_recycle
  doc: Use existing alignment "--outfile" if found.
  type: boolean
  inputBinding:
    prefix: --recycle
- id: in_outdir
  doc: 'Write output files to this directory. (Default: cwd)'
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_gff_out
  doc: Name of GFF3 annotation file.
  type: File
  inputBinding:
    prefix: --gffout
- id: in_outfile
  doc: Name of alignment result file.
  type: File
  inputBinding:
    prefix: --outfile
- id: in_verbose
  doc: If set report LASTZ progress.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_label
  doc: Set annotation TYPE field in gff.
  type: string
  inputBinding:
    prefix: --label
- id: in_prefix
  doc: ID prefix for B-genome repeats annotated in A-genome.
  type: string
  inputBinding:
    prefix: --prefix
- id: in_keep_temp
  doc: If set do not remove temp files.
  type: boolean
  inputBinding:
    prefix: --keeptemp
- id: in_lz_path
  doc: Custom path to LASTZ executable if not in $PATH.
  type: File
  inputBinding:
    prefix: --lzpath
- id: in_bed_tools
  doc: Custom path to bedtools executable if not in $PATH.
  type: File
  inputBinding:
    prefix: --bedtools
- id: in_mini_dt
  doc: Minimum alignment identity to report.
  type: string
  inputBinding:
    prefix: --minIdt
- id: in_min_len
  doc: Minimum alignment length to report.
  type: long
  inputBinding:
    prefix: --minLen
- id: in_min_cov
  doc: Minimum depth of B-genome hits to report feature in
  type: long
  inputBinding:
    prefix: --minCov
- id: in_a_genome_dot
  doc: --hspthresh HSPTHRESH
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Write output files to this directory. (Default: cwd)'
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- mimeo-x
