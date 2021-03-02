class: CommandLineTool
id: Kinfold.cwl
inputs:
- id: in_full_help
  doc: Print help, including hidden options, and exit
  type: boolean?
  inputBinding:
    prefix: --full-help
- id: in_dangle
  doc: "<0|1|2> set dangling end model to (none|normal|double)\n(possible values=\"\
    0\", \"1\", \"2\" default=`2')"
  type: long?
  inputBinding:
    prefix: --dangle
- id: in_temp
  doc: simulation temperature  (default=`37')
  type: double?
  inputBinding:
    prefix: --Temp
- id: in_par
  doc: read energy-parameter-file
  type: File?
  inputBinding:
    prefix: --Par
- id: in_log_ml
  doc: "use logarithmic multiloop energies instead of linear\n(default=on)"
  type: boolean?
  inputBinding:
    prefix: --logML
- id: in_no_shift
  doc: turn off shift-moves  (default=off)
  type: boolean?
  inputBinding:
    prefix: --noShift
- id: in_no_lp
  doc: "forbid structures with isolated base-pairs\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --noLP
- id: in_seed
  doc: "set random number seed specify 3 integers as\nint=int=int  (default=`clock')"
  type: long?
  inputBinding:
    prefix: --seed
- id: in_time
  doc: set maxtime of simulation  (default=`500')
  type: double?
  inputBinding:
    prefix: --time
- id: in_num
  doc: set number of trajectories  (default=`1')
  type: long?
  inputBinding:
    prefix: --num
- id: in_start
  doc: "read start structure from stdin (otherwise use open\nchain)  (default=off)"
  type: boolean?
  inputBinding:
    prefix: --start
- id: in_stop
  doc: "read stop structure(s) from stdin (optherwise use MFE)\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --stop
- id: in_met
  doc: "use Metropolis rule for rates (not Kawasaki rule)\n(default=off)"
  type: boolean?
  inputBinding:
    prefix: --met
- id: in_fpt
  doc: "compute first passage time (stop when a stop-structure\nis reached)  (default=on)"
  type: boolean?
  inputBinding:
    prefix: --fpt
- id: in_grow
  doc: grow chain every <float> time units  (default=`0')
  type: double?
  inputBinding:
    prefix: --grow
- id: in_glen
  doc: initial size of growing chain  (default=`15')
  type: long?
  inputBinding:
    prefix: --glen
- id: in_log
  doc: set basename of log-file  (default=`kinout')
  type: File?
  inputBinding:
    prefix: --log
- id: in_silent
  doc: no output to stdout  (default=off)
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_verbose
  doc: more information to stdout  (default=off)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_lm_in
  doc: output only local minima to stdout  (default=off)
  type: boolean?
  inputBinding:
    prefix: --lmin
- id: in_cut
  doc: "output structures with E <= <float> to stdout\n(default=`20')"
  type: double?
  inputBinding:
    prefix: --cut
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- Kinfold
