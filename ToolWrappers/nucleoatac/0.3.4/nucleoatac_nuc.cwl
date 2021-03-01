class: CommandLineTool
id: nucleoatac_nuc.cwl
inputs:
- id: in_bed
  doc: Regions for which to do stuff.
  type: File?
  inputBinding:
    prefix: --bed
- id: in_vm_at
  doc: VMat object
  type: File?
  inputBinding:
    prefix: --vmat
- id: in_bam
  doc: Accepts sorted BAM file
  type: File?
  inputBinding:
    prefix: --bam
- id: in_out
  doc: give output basename
  type: string?
  inputBinding:
    prefix: --out
- id: in_fast_a
  doc: Indexed fasta file
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_pwm
  doc: "PWM descriptor file. Default is Human.PWM.txt included\nin package"
  type: long?
  inputBinding:
    prefix: --pwm
- id: in_sizes
  doc: "File with fragment size distribution. Use if don't\nwant calculation of fragment\
    \ size"
  type: File?
  inputBinding:
    prefix: --sizes
- id: in_occ_track
  doc: "bgzip compressed, tabix-indexed bedgraph file with\nocccupancy track. Otherwise\
    \ occ not determined for nuc\npositions."
  type: File?
  inputBinding:
    prefix: --occ_track
- id: in_cores
  doc: Number of cores to use
  type: long?
  inputBinding:
    prefix: --cores
- id: in_write_all
  doc: write all tracks
  type: boolean?
  inputBinding:
    prefix: --write_all
- id: in_not_atac
  doc: data is not atac-seq
  type: boolean?
  inputBinding:
    prefix: --not_atac
- id: in_min_z
  doc: Z-score threshold for nucleosome calls. Default is 3
  type: double?
  inputBinding:
    prefix: --min_z
- id: in_min_lr
  doc: "Log likelihood ratio threshold for nucleosome calls.\nDefault is 0"
  type: double?
  inputBinding:
    prefix: --min_lr
- id: in_nuc_sep
  doc: "Minimum separation between non-redundant nucleosomes.\nDefault is 120"
  type: long?
  inputBinding:
    prefix: --nuc_sep
- id: in_redundant_sep
  doc: "Minimum separation between redundant nucleosomes. Not\nrecommended to be below\
    \ 15. Default is 25"
  type: long?
  inputBinding:
    prefix: --redundant_sep
- id: in_sd
  doc: "Standard deviation for smoothing. Affect the\nresolution at which nucleosomes\
    \ can be positioned. Not\nrecommended to exceed 25 or to be smaller than 10.\n\
    Default is 10\n"
  type: long?
  inputBinding:
    prefix: --sd
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nucleoatac
- nuc
