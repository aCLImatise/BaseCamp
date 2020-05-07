class: CommandLineTool
id: colmux.cwl
inputs:
- id: address
  doc: addr[,addr]  comma separated list of address to connect or filename
  type: boolean
  inputBinding:
    prefix: -address
- id: command
  doc: string       collectl command string
  type: boolean
  inputBinding:
    prefix: -command
- id: host_width
  doc: number       minimum width to use for printing hostname [def=8]
  type: boolean
  inputBinding:
    prefix: -hostwidth
- id: lines
  doc: number       limit displays to this number of lines
  type: boolean
  inputBinding:
    prefix: -lines
- id: no_escape
  doc: disable printing ALL escape sequences
  type: boolean
  inputBinding:
    prefix: -noescape
- id: port
  doc: port         port remote collectl should use for communications
  type: boolean
  inputBinding:
    prefix: -port
- id: ssh_key
  doc: file         file containing ssh public key to pass with ssh -i
  type: boolean
  inputBinding:
    prefix: -sshkey
- id: sudo
  doc: preface collectl commands with 'sudo'
  type: boolean
  inputBinding:
    prefix: -sudo
- id: test
  doc: show column headers & numbering
  type: boolean
  inputBinding:
    prefix: -test
- id: username
  doc: name         sets initial username for ALL hosts
  type: boolean
  inputBinding:
    prefix: -username
- id: version
  doc: show version and exit
  type: boolean
  inputBinding:
    prefix: -version
- id: delay
  doc: seconds      time to pause between playback output (fractions welcome)
  type: boolean
  inputBinding:
    prefix: -delay
- id: home
  doc: move cursor home between playback samples (top-like)
  type: boolean
  inputBinding:
    prefix: -home
- id: host_filter
  doc: 'pdsh-like address list only apply to local filenames '
  type:
  - string
  inputBinding:
    prefix: -hostfilter
- id: no_sort
  doc: do not sort output and ignore bolding and -lines
  type: boolean
  inputBinding:
    prefix: -nosort
- id: col_help
  doc: include numbers over each column for easier identification
  type: boolean
  inputBinding:
    prefix: -colhelp
- id: column
  doc: num          select column number for sorting, see -test
  type: boolean
  inputBinding:
    prefix: -column
- id: final_cr
  doc: DO print a final cr, see man page for why you could want this
  type: boolean
  inputBinding:
    prefix: -finalcr
- id: host_format
  doc: :piece   allows you display a piece of a hostname based on char
  type: string
  inputBinding:
    prefix: -hostformat
- id: no_bold
  doc: during file playback, disable highlighting of column names
  type: boolean
  inputBinding:
    prefix: -nobold
- id: reverse
  doc: sort in decending order
  type: boolean
  inputBinding:
    prefix: -reverse
- id: zero
  doc: do not include columns of zero
  type: boolean
  inputBinding:
    prefix: -zero
- id: col1000
  doc: divide each column by 1000
  type: boolean
  inputBinding:
    prefix: -col1000
- id: col_k
  doc: divide each column by 1K (1024)
  type: boolean
  inputBinding:
    prefix: -colk
- id: collog10
  doc: convert each column to log10, except when -colnodiv see man page for details
  type: boolean
  inputBinding:
    prefix: -collog10
- id: cols
  doc: nums         select which columns to display on 1 line, see -test
  type: boolean
  inputBinding:
    prefix: -cols
- id: col_node_t
  doc: only print totals
  type: boolean
  inputBinding:
    prefix: -colnodet
- id: col_no_div
  doc: cols         do NOT apply colk or col1000 to comma-separated col numbers
  type: boolean
  inputBinding:
    prefix: -colnodiv
- id: col_no_inst
  doc: do NOT include instance names in totals
  type: boolean
  inputBinding:
    prefix: -colnoinst
- id: col_total
  doc: print totals for each column to the right
  type: boolean
  inputBinding:
    prefix: -coltotal
- id: col_width
  doc: width of each column [default=6]
  type: boolean
  inputBinding:
    prefix: -colwidth
- id: age
  doc: number       report latest value within number of intervals [def=2]
  type: boolean
  inputBinding:
    prefix: -age
- id: neg_data_val
  doc: report negative numbers as 'val'
  type: string
  inputBinding:
    prefix: -negdataval
- id: no_data_val
  doc: val          report this instead of -1 when no data seen within -age
  type: boolean
  inputBinding:
    prefix: -nodataval
- id: debug
  doc: number       primarily for development/debugging, see source code
  type: boolean
  inputBinding:
    prefix: -debug
- id: no_check
  doc: do not check hosts (ping/ssh/collectl) before connecting
  type: boolean
  inputBinding:
    prefix: -nocheck
- id: quiet
  doc: do not report warnings for mismatched collectl versions and unknown connections
  type: boolean
  inputBinding:
    prefix: -quiet
- id: reachable
  doc: if specified, ALL hosts must be pingable/ssh-able
  type: boolean
  inputBinding:
    prefix: -reachable
- id: col_bin
  doc: path         use this path instead of /usr/bin/collectl for remote collectl
  type: boolean
  inputBinding:
    prefix: -colbin
- id: keepalive
  doc: secs         pass this in the ssh command as '-o ServerAliveInterval=secs'
    to prevent ssh exiting early from an inactive ssh connection
  type: boolean
  inputBinding:
    prefix: -keepalive
- id: ret_addr
  doc: addr         tell collectl to connect back to this address. start with -deb
    1 to see address collectl told to use
  type: boolean
  inputBinding:
    prefix: -retaddr
- id: timeout
  doc: secs         use this timeout for remote collectl to connect back requires
    collectl V3.6.4 or better
  type: boolean
  inputBinding:
    prefix: -timeout
- id: time_range
  doc: secs         report remote systems times wider than this rang [def=1]
  type: boolean
  inputBinding:
    prefix: -timerange
outputs: []
cwlVersion: v1.1
baseCommand:
- colmux
