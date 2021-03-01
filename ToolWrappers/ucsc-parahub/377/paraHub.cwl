class: CommandLineTool
id: paraHub.cwl
inputs:
- id: in_spokes
  doc: Number of processes that feed jobs to nodes - default 30.
  type: long?
  inputBinding:
    prefix: -spokes
- id: in_job_check_period
  doc: Minutes between checking on job - default 10.
  type: long?
  inputBinding:
    prefix: -jobCheckPeriod
- id: in_machine_check_period
  doc: Minutes between checking on machine - default 20.
  type: long?
  inputBinding:
    prefix: -machineCheckPeriod
- id: in_subnet
  doc: Only accept connections from subnet (example 192.168).
  type: double?
  inputBinding:
    prefix: -subnet
- id: in_next_job_id
  doc: Starting job ID number.
  type: long?
  inputBinding:
    prefix: -nextJobId
- id: in_log_facility
  doc: Log to the specified syslog facility - default local0.
  type: long?
  inputBinding:
    prefix: -logFacility
- id: in_log_min_priority
  doc: "minimum syslog priority to log, also filters file logging.\ndefaults to \"\
    warn\""
  type: File?
  inputBinding:
    prefix: -logMinPriority
- id: in_log
  doc: Log to file instead of syslog.
  type: File?
  inputBinding:
    prefix: -log
- id: in_debug
  doc: Don't daemonize
  type: boolean?
  inputBinding:
    prefix: -debug
- id: in_no_resume
  doc: Don't try to reconnect with jobs running on nodes.
  type: boolean?
  inputBinding:
    prefix: -noResume
- id: in_ram_unit
  doc: "Number of bytes of RAM in the base unit used by the jobs.\nDefault is RAM\
    \ on node divided by number of cpus on node.\nShorthand expressions allow t,g,m,k\
    \ for tera, giga, mega, kilo.\ne.g. 4g = 4 Gigabytes."
  type: long?
  inputBinding:
    prefix: -ramUnit
- id: in_default_job_ram
  doc: "Number of ram units in a job has no specified ram usage.\nDefaults to 1.\n"
  type: long?
  inputBinding:
    prefix: -defaultJobRam
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- paraHub
