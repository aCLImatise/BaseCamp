class: CommandLineTool
id: xtea.cwl
inputs:
- id: in_decompress
  doc: Decompress the rep lib and reference file
  type: boolean?
  inputBinding:
    prefix: --decompress
- id: in_mosaic
  doc: Calling mosaic events from high coverage data
  type: boolean?
  inputBinding:
    prefix: --mosaic
- id: in_case_control
  doc: Run in case control mode
  type: boolean?
  inputBinding:
    prefix: --case_control
- id: in_user
  doc: "Use user specific parameters instead of automatically\ncalculated ones"
  type: boolean?
  inputBinding:
    prefix: --user
- id: in_force
  doc: Force to start from the very beginning
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_tumor
  doc: Working on tumor samples
  type: boolean?
  inputBinding:
    prefix: --tumor
- id: in_purity
  doc: Tumor purity
  type: string?
  inputBinding:
    prefix: --purity
- id: in_lsf
  doc: Indiates submit to LSF system
  type: boolean?
  inputBinding:
    prefix: --lsf
- id: in_slur_m
  doc: Indiates submit to slurm system
  type: boolean?
  inputBinding:
    prefix: --slurm
- id: in_resume
  doc: "Resume the running, which will skip the step if output\nfile already exists!"
  type: File?
  inputBinding:
    prefix: --resume
- id: in_id
  doc: sample id list file
  type: File?
  inputBinding:
    prefix: --id
- id: in_par
  doc: parameter file
  type: File?
  inputBinding:
    prefix: --par
- id: in_lib
  doc: TE lib config file
  type: File?
  inputBinding:
    prefix: --lib
- id: in_bam
  doc: Input bam file
  type: File?
  inputBinding:
    prefix: --bam
- id: in_x_one_zero
  doc: Input 10X bam file
  type: File?
  inputBinding:
    prefix: --x10
- id: in_cores
  doc: number of cores
  type: long?
  inputBinding:
    prefix: --cores
- id: in_memory
  doc: Memory limit in GB
  type: string?
  inputBinding:
    prefix: --memory
- id: in_partition
  doc: Which queue to run the job
  type: string?
  inputBinding:
    prefix: --partition
- id: in_time
  doc: Time limit
  type: string?
  inputBinding:
    prefix: --time
- id: in_path
  doc: Working folder
  type: Directory?
  inputBinding:
    prefix: --path
- id: in_ref
  doc: reference genome
  type: string?
  inputBinding:
    prefix: --ref
- id: in_gene
  doc: Gene annotation file
  type: File?
  inputBinding:
    prefix: --gene
- id: in_x_tea
  doc: xTEA folder
  type: Directory?
  inputBinding:
    prefix: --xtea
- id: in_flag
  doc: "Flag indicates which step to run (1-clip, 2-disc,\n4-barcode, 8-xfilter, 16-filter,\
    \ 32-asm)"
  type: long?
  inputBinding:
    prefix: --flag
- id: in_rep_type
  doc: "Type of repeats working on: 1-L1, 2-Alu, 4-SVA,\n8-HERV, 16-Mitochondrial"
  type: long?
  inputBinding:
    prefix: --reptype
- id: in_fl_klen
  doc: flank region file
  type: File?
  inputBinding:
    prefix: --flklen
- id: in_n_clip
  doc: 'cutoff of minimum # of clipped reads'
  type: string?
  inputBinding:
    prefix: --nclip
- id: in_cr
  doc: "cutoff of minimum # of clipped reads whose mates map\nin repetitive regions"
  type: string?
  inputBinding:
    prefix: --cr
- id: in_nd
  doc: 'cutoff of minimum # of discordant pair'
  type: string?
  inputBinding:
    prefix: --nd
- id: in_nf_clip
  doc: 'cutoff of minimum # of clipped reads in filtering step'
  type: string?
  inputBinding:
    prefix: --nfclip
- id: in_nf_disc
  doc: "cutoff of minimum # of discordant pair of each sample\nin filtering step"
  type: string?
  inputBinding:
    prefix: --nfdisc
- id: in_teilen
  doc: minimum length of the insertion for future analysis
  type: long?
  inputBinding:
    prefix: --teilen
- id: in_output
  doc: The output file
  type: File?
  inputBinding:
    prefix: --output
- id: in_blacklist
  doc: "Reference panel database for filtering, or a blacklist\nregion\n"
  type: File?
  inputBinding:
    prefix: --blacklist
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_resume
  doc: "Resume the running, which will skip the step if output\nfile already exists!"
  type: File?
  outputBinding:
    glob: $(inputs.in_resume)
- id: out_output
  doc: The output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/xtea:0.1.6--0
cwlVersion: v1.1
baseCommand:
- xtea
