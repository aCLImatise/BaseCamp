#!/usr/bin/env cwl-runner

baseCommand:
- Kinfold
class: CommandLineTool
cwlVersion: v1.0
id: kinfold
inputs:
- doc: Print help, including hidden options, and exit
  id: full_help
  inputBinding:
    prefix: --full-help
  type: boolean
- doc: <0|1|2> set dangling end model to (none|normal|double) (possible values="0",
    "1", "2" default=`2')
  id: dangle
  inputBinding:
    prefix: --dangle
  type: long
- doc: simulation temperature  (default=`37')
  id: temp
  inputBinding:
    prefix: --Temp
  type: double
- doc: read energy-parameter-file
  id: par
  inputBinding:
    prefix: --Par
  type: File
- doc: use logarithmic multiloop energies instead of linear (default=on)
  id: log_ml
  inputBinding:
    prefix: --logML
  type: boolean
- doc: turn off shift-moves  (default=off)
  id: no_shift
  inputBinding:
    prefix: --noShift
  type: boolean
- doc: forbid structures with isolated base-pairs (default=off)
  id: no_lp
  inputBinding:
    prefix: --noLP
  type: boolean
- doc: set random number seed specify 3 integers as int=int=int  (default=`clock')
  id: seed
  inputBinding:
    prefix: --seed
  type: string
- doc: set maxtime of simulation  (default=`500')
  id: time
  inputBinding:
    prefix: --time
  type: double
- doc: set number of trajectories  (default=`1')
  id: num
  inputBinding:
    prefix: --num
  type: long
- doc: read start structure from stdin (otherwise use open chain)  (default=off)
  id: start
  inputBinding:
    prefix: --start
  type: boolean
- doc: read stop structure(s) from stdin (optherwise use MFE) (default=off)
  id: stop
  inputBinding:
    prefix: --stop
  type: boolean
- doc: use Metropolis rule for rates (not Kawasaki rule) (default=off)
  id: met
  inputBinding:
    prefix: --met
  type: boolean
- doc: compute first passage time (stop when a stop-structure is reached)  (default=on)
  id: fpt
  inputBinding:
    prefix: --fpt
  type: boolean
- doc: grow chain every <float> time units  (default=`0')
  id: grow
  inputBinding:
    prefix: --grow
  type: double
- doc: initial size of growing chain  (default=`15')
  id: glen
  inputBinding:
    prefix: --glen
  type: long
- doc: set basename of log-file  (default=`kinout')
  id: log
  inputBinding:
    prefix: --log
  type: File
- doc: no output to stdout  (default=off)
  id: silent
  inputBinding:
    prefix: --silent
  type: boolean
- doc: more information to stdout  (default=off)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: output only local minima to stdout  (default=off)
  id: lm_in
  inputBinding:
    prefix: --lmin
  type: boolean
- doc: output structures with E <= <float> to stdout (default=`20')
  id: cut
  inputBinding:
    prefix: --cut
  type: double
