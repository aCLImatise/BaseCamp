#!/usr/bin/env cwl-runner

baseCommand:
- colmux
class: CommandLineTool
cwlVersion: v1.0
id: colmux
inputs:
- doc: addr[,addr]  comma separated list of address to connect or filename
  id: address
  inputBinding:
    prefix: -address
  type: boolean
- doc: string       collectl command string
  id: command
  inputBinding:
    prefix: -command
  type: boolean
- doc: number       minimum width to use for printing hostname [def=8]
  id: host_width
  inputBinding:
    prefix: -hostwidth
  type: boolean
- doc: number       limit displays to this number of lines
  id: lines
  inputBinding:
    prefix: -lines
  type: boolean
- doc: disable printing ALL escape sequences
  id: no_escape
  inputBinding:
    prefix: -noescape
  type: boolean
- doc: port         port remote collectl should use for communications
  id: port
  inputBinding:
    prefix: -port
  type: boolean
- doc: file         file containing ssh public key to pass with ssh -i
  id: ssh_key
  inputBinding:
    prefix: -sshkey
  type: boolean
- doc: preface collectl commands with 'sudo'
  id: sudo
  inputBinding:
    prefix: -sudo
  type: boolean
- doc: show column headers & numbering
  id: test
  inputBinding:
    prefix: -test
  type: boolean
- doc: name         sets initial username for ALL hosts
  id: username
  inputBinding:
    prefix: -username
  type: boolean
- doc: show version and exit
  id: version
  inputBinding:
    prefix: -version
  type: boolean
- doc: seconds      time to pause between playback output (fractions welcome)
  id: delay
  inputBinding:
    prefix: -delay
  type: boolean
- doc: move cursor home between playback samples (top-like)
  id: home
  inputBinding:
    prefix: -home
  type: boolean
- doc: 'pdsh-like address list only apply to local filenames '
  id: host_filter
  inputBinding:
    prefix: -hostfilter
  type:
  - string
- doc: do not sort output and ignore bolding and -lines
  id: no_sort
  inputBinding:
    prefix: -nosort
  type: boolean
- doc: include numbers over each column for easier identification
  id: col_help
  inputBinding:
    prefix: -colhelp
  type: boolean
- doc: num          select column number for sorting, see -test
  id: column
  inputBinding:
    prefix: -column
  type: boolean
- doc: DO print a final cr, see man page for why you could want this
  id: final_cr
  inputBinding:
    prefix: -finalcr
  type: boolean
- doc: :piece   allows you display a piece of a hostname based on char
  id: host_format
  inputBinding:
    prefix: -hostformat
  type: string
- doc: during file playback, disable highlighting of column names
  id: no_bold
  inputBinding:
    prefix: -nobold
  type: boolean
- doc: sort in decending order
  id: reverse
  inputBinding:
    prefix: -reverse
  type: boolean
- doc: do not include columns of zero
  id: zero
  inputBinding:
    prefix: -zero
  type: boolean
- doc: divide each column by 1000
  id: col1000
  inputBinding:
    prefix: -col1000
  type: boolean
- doc: divide each column by 1K (1024)
  id: col_k
  inputBinding:
    prefix: -colk
  type: boolean
- doc: convert each column to log10, except when -colnodiv see man page for details
  id: collog10
  inputBinding:
    prefix: -collog10
  type: boolean
- doc: nums         select which columns to display on 1 line, see -test
  id: cols
  inputBinding:
    prefix: -cols
  type: boolean
- doc: only print totals
  id: col_node_t
  inputBinding:
    prefix: -colnodet
  type: boolean
- doc: cols         do NOT apply colk or col1000 to comma-separated col numbers
  id: col_no_div
  inputBinding:
    prefix: -colnodiv
  type: boolean
- doc: do NOT include instance names in totals
  id: col_no_inst
  inputBinding:
    prefix: -colnoinst
  type: boolean
- doc: print totals for each column to the right
  id: col_total
  inputBinding:
    prefix: -coltotal
  type: boolean
- doc: width of each column [default=6]
  id: col_width
  inputBinding:
    prefix: -colwidth
  type: boolean
- doc: number       report latest value within number of intervals [def=2]
  id: age
  inputBinding:
    prefix: -age
  type: boolean
- doc: report negative numbers as 'val'
  id: neg_data_val
  inputBinding:
    prefix: -negdataval
  type: string
- doc: val          report this instead of -1 when no data seen within -age
  id: no_data_val
  inputBinding:
    prefix: -nodataval
  type: boolean
- doc: number       primarily for development/debugging, see source code
  id: debug
  inputBinding:
    prefix: -debug
  type: boolean
- doc: do not check hosts (ping/ssh/collectl) before connecting
  id: no_check
  inputBinding:
    prefix: -nocheck
  type: boolean
- doc: do not report warnings for mismatched collectl versions and unknown connections
  id: quiet
  inputBinding:
    prefix: -quiet
  type: boolean
- doc: if specified, ALL hosts must be pingable/ssh-able
  id: reachable
  inputBinding:
    prefix: -reachable
  type: boolean
- doc: path         use this path instead of /usr/bin/collectl for remote collectl
  id: col_bin
  inputBinding:
    prefix: -colbin
  type: boolean
- doc: secs         pass this in the ssh command as '-o ServerAliveInterval=secs'
    to prevent ssh exiting early from an inactive ssh connection
  id: keepalive
  inputBinding:
    prefix: -keepalive
  type: boolean
- doc: addr         tell collectl to connect back to this address. start with -deb
    1 to see address collectl told to use
  id: ret_addr
  inputBinding:
    prefix: -retaddr
  type: boolean
- doc: secs         use this timeout for remote collectl to connect back requires
    collectl V3.6.4 or better
  id: timeout
  inputBinding:
    prefix: -timeout
  type: boolean
- doc: secs         report remote systems times wider than this rang [def=1]
  id: time_range
  inputBinding:
    prefix: -timerange
  type: boolean
