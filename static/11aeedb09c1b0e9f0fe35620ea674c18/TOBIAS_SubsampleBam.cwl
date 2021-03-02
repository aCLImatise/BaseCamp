class: CommandLineTool
id: TOBIAS_SubsampleBam.cwl
inputs:
- id: in_bam
  doc: Path to .bam-file
  type: boolean?
  inputBinding:
    prefix: --bam
- id: in_no_rand
  doc: 'Number of randomizations (per step) (default: 3)'
  type: boolean?
  inputBinding:
    prefix: --no_rand
- id: in_start
  doc: 'Start of percent subsample (default: 0)'
  type: boolean?
  inputBinding:
    prefix: --start
- id: in_end
  doc: 'End of percent subsample (default: 100)'
  type: boolean?
  inputBinding:
    prefix: --end
- id: in_step
  doc: 'Step between --start and --end (default: 10)'
  type: boolean?
  inputBinding:
    prefix: --step
- id: in_cores
  doc: 'Cores for multiprocessing (default: 1)'
  type: boolean?
  inputBinding:
    prefix: --cores
- id: in_outdir
  doc: 'Output directory (default: subsamplebam_output)'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_prefix
  doc: 'Prefix for output files (default: prefix of .bam)'
  type: boolean?
  inputBinding:
    prefix: --prefix
- id: in_force
  doc: 'Force creation of subsampled .bam-files (default: only create if not existing)'
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_verbosity
  doc: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats,\
    \ 4:\ndebug, 5: spam) (default: 3)\n"
  type: long?
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Output directory (default: subsamplebam_output)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tobias:0.12.9--py36h29c9776_0
cwlVersion: v1.1
baseCommand:
- TOBIAS
- SubsampleBam
