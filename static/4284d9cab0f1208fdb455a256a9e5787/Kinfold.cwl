class: CommandLineTool
id: Kinfold.cwl
inputs:
- id: full_help
  doc: Print help, including hidden options, and exit
  type: boolean
  inputBinding:
    prefix: --full-help
- id: dangle
  doc: <0|1|2> set dangling end model to (none|normal|double)   (possible values="0",
    "1", "2" default=`2')
  type: long
  inputBinding:
    prefix: --dangle
- id: temp
  doc: simulation temperature  (default=`37')
  type: double
  inputBinding:
    prefix: --Temp
- id: par
  doc: read energy-parameter-file
  type: File
  inputBinding:
    prefix: --Par
- id: log_ml
  doc: use logarithmic multiloop energies instead of linear   (default=on)
  type: boolean
  inputBinding:
    prefix: --logML
- id: no_shift
  doc: turn off shift-moves  (default=off)
  type: boolean
  inputBinding:
    prefix: --noShift
- id: no_lp
  doc: forbid structures with isolated base-pairs   (default=off)
  type: boolean
  inputBinding:
    prefix: --noLP
- id: seed
  doc: set random number seed specify 3 integers as  int=int=int  (default=`clock')
  type: string
  inputBinding:
    prefix: --seed
- id: time
  doc: set maxtime of simulation  (default=`500')
  type: double
  inputBinding:
    prefix: --time
- id: num
  doc: set number of trajectories  (default=`1')
  type: long
  inputBinding:
    prefix: --num
- id: start
  doc: read start structure from stdin (otherwise use open  chain)  (default=off)
  type: boolean
  inputBinding:
    prefix: --start
- id: stop
  doc: read stop structure(s) from stdin (optherwise use MFE)   (default=off)
  type: boolean
  inputBinding:
    prefix: --stop
- id: met
  doc: use Metropolis rule for rates (not Kawasaki rule)   (default=off)
  type: boolean
  inputBinding:
    prefix: --met
- id: fpt
  doc: compute first passage time (stop when a stop-structure  is reached)  (default=on)
  type: boolean
  inputBinding:
    prefix: --fpt
- id: grow
  doc: grow chain every <float> time units  (default=`0')
  type: double
  inputBinding:
    prefix: --grow
- id: glen
  doc: initial size of growing chain  (default=`15')
  type: long
  inputBinding:
    prefix: --glen
- id: log
  doc: set basename of log-file  (default=`kinout')
  type: File
  inputBinding:
    prefix: --log
- id: silent
  doc: no output to stdout  (default=off)
  type: boolean
  inputBinding:
    prefix: --silent
- id: verbose
  doc: more information to stdout  (default=off)
  type: boolean
  inputBinding:
    prefix: --verbose
- id: lm_in
  doc: output only local minima to stdout  (default=off)
  type: boolean
  inputBinding:
    prefix: --lmin
- id: cut
  doc: output structures with E <= <float> to stdout   (default=`20')
  type: double
  inputBinding:
    prefix: --cut
outputs: []
cwlVersion: v1.1
baseCommand:
- Kinfold
