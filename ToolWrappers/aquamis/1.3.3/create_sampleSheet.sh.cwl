class: CommandLineTool
id: create_sampleSheet.sh.cwl
inputs:
- id: in_mode
  doc: ': Choose mode from illumina, ncbi, flex, assembly  (default: illumina)'
  type: boolean?
  inputBinding:
    prefix: --mode
- id: in_fast_xdir
  doc: ': Path to existing directory containing the fastq or fasta files (default:
    /)'
  type: boolean?
  inputBinding:
    prefix: --fastxDir
- id: in_outdir
  doc: ': Path to existing outDir (default: fastxDir)'
  type: boolean?
  inputBinding:
    prefix: --outDir
- id: in_no_check
  doc: ': Do not check consistency of sample sheet'
  type: boolean?
  inputBinding:
    prefix: --nocheck
- id: in_interactive
  doc: ': Ask before starting the program'
  type: boolean?
  inputBinding:
    prefix: --interactive
- id: in_force
  doc: ': Overwrite existing samples.tsv files in OutDir'
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_dry_run
  doc: ': Perform a dry-run'
  type: boolean?
  inputBinding:
    prefix: --dryrun
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/aquamis:1.3.3--0
cwlVersion: v1.1
baseCommand:
- create_sampleSheet.sh
