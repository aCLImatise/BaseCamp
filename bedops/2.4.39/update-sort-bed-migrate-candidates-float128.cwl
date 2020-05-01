#!/usr/bin/env cwl-runner

baseCommand:
- update-sort-bed-migrate-candidates-float128
class: CommandLineTool
cwlVersion: v1.0
id: update-sort-bed-migrate-candidates-float128
inputs:
- doc: '[ --slurm-memory <MB> ] [ --slurm-partition <SLURM partition> ] [ --slurm-workdir
    <working directory> ] [ --slurm-output <SLURM output directory> ] [ --slurm-error
    <SLURM error directory> ] '
  id: resort_in_parallel_via_slur_m
  inputBinding:
    prefix: --resort-in-parallel-via-slurm
  type: boolean
