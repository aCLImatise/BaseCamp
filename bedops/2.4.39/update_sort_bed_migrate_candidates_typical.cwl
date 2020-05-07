class: CommandLineTool
id: update_sort_bed_migrate_candidates_typical.cwl
inputs:
- id: resort_in_parallel_via_slur_m
  doc: '[ --slurm-memory <MB> ] [ --slurm-partition <SLURM partition> ] [ --slurm-workdir
    <working directory> ] [ --slurm-output <SLURM output directory> ] [ --slurm-error
    <SLURM error directory> ] '
  type: boolean
  inputBinding:
    prefix: --resort-in-parallel-via-slurm
outputs: []
cwlVersion: v1.1
baseCommand:
- update-sort-bed-migrate-candidates-typical
