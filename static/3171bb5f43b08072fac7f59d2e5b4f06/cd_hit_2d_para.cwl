class: CommandLineTool
id: cd_hit_2d_para.pl.cwl
inputs:
- id: i
  doc: input filename for 1st db in fasta format, required
  type: boolean
  inputBinding:
    prefix: -i
- id: i2
  doc: filename for 2nd db in fasta format, required
  type: string
  inputBinding:
    prefix: -i2
- id: o
  doc: output filename, required
  type: boolean
  inputBinding:
    prefix: -o
- id: p
  doc: program, "cd-hit-2d" or "cd-hit-est-2d", default "cd-hit-2d"
  type: boolean
  inputBinding:
    prefix: --P
- id: b
  doc: 'filename of list of hosts,  requred unless -Q or -L option is supplied '
  type: boolean
  inputBinding:
    prefix: --B
- id: l
  doc: number of cpus on local computer, default 0 when you are not running it over
    a cluster, you can use this option to divide a big clustering jobs into small
    pieces, I suggest you just use "--L 1" unless you have enough RAM for each cpu
  type: boolean
  inputBinding:
    prefix: --L
- id: s
  doc: Number of segments to split 1st db into, default 2
  type: boolean
  inputBinding:
    prefix: --S
- id: s2
  doc: of segments to split 2nd db into, default 8
  type: string
  inputBinding:
    prefix: --S2
- id: q
  doc: number of jobs to submit to queue queuing system, default 0 by default, the
    program use ssh mode to submit remote jobs
  type: boolean
  inputBinding:
    prefix: --Q
- id: t
  doc: type of queuing system, "PBS", "SGE" are supported, default PBS
  type: boolean
  inputBinding:
    prefix: --T
- id: r
  doc: restart file, used after a crash of run
  type: boolean
  inputBinding:
    prefix: --R
outputs: []
cwlVersion: v1.1
baseCommand:
- cd-hit-2d-para.pl
