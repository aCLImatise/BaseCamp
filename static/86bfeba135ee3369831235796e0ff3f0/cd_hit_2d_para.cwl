class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cd_hit_2d_para.pl.cwl
inputs:
- id: input_filename_st
  doc: input filename for 1st db in fasta format, required
  type: boolean
  inputBinding:
    prefix: -i
- id: i_two
  doc: filename for 2nd db in fasta format, required
  type: string
  inputBinding:
    prefix: -i2
- id: output_filename_required
  doc: output filename, required
  type: boolean
  inputBinding:
    prefix: -o
- id: program
  doc: program, "cd-hit-2d" or "cd-hit-est-2d", default "cd-hit-2d"
  type: boolean
  inputBinding:
    prefix: --P
- id: filename_list_hosts
  doc: 'filename of list of hosts,  requred unless -Q or -L option is supplied '
  type: boolean
  inputBinding:
    prefix: --B
- id: number_when_running
  doc: number of cpus on local computer, default 0 when you are not running it over
    a cluster, you can use this option to divide a big clustering jobs into small
    pieces, I suggest you just use "--L 1" unless you have enough RAM for each cpu
  type: boolean
  inputBinding:
    prefix: --L
- id: number_split_st
  doc: Number of segments to split 1st db into, default 2
  type: boolean
  inputBinding:
    prefix: --S
- id: s_two
  doc: of segments to split 2nd db into, default 8
  type: string
  inputBinding:
    prefix: --S2
- id: number_jobs_submit
  doc: number of jobs to submit to queue queuing system, default 0 by default, the
    program use ssh mode to submit remote jobs
  type: boolean
  inputBinding:
    prefix: --Q
- id: type_queuing_system
  doc: type of queuing system, "PBS", "SGE" are supported, default PBS
  type: boolean
  inputBinding:
    prefix: --T
- id: restart_file_used
  doc: restart file, used after a crash of run
  type: boolean
  inputBinding:
    prefix: --R
outputs: []
cwlVersion: v1.1
baseCommand:
- cd-hit-2d-para.pl
