version 1.0

task Colmux {
  input {
    Array[String] address
    Boolean? string_collectl_string
    Boolean? host_width
    Boolean? lines
    Boolean? no_escape
    Boolean? port
    Boolean? ssh_key
    Boolean? sudo
    Boolean? test
    Boolean? username
    Boolean? version
    Boolean? delay
    Boolean? home
    Array[String] host_filter
    Boolean? no_sort
    Boolean? col_help
    Boolean? column
    Boolean? final_cr
    String? host_format
    Boolean? no_bold
    Boolean? reverse
    Boolean? include_columns_zero
    Boolean? col_one_zero_zero_zero
    Boolean? col_k
    Boolean? collo_gone_zero
    Boolean? cols
    Boolean? col_node_t
    Boolean? col_no_div
    Boolean? col_no_inst
    Boolean? col_total
    Boolean? col_width
    Boolean? age
    String? neg_data_val
    Boolean? no_data_val
    Boolean? debug
    Boolean? no_check
    Boolean? quiet
    Boolean? reachable
    Boolean? col_bin
    Boolean? keepalive
    Boolean? ret_addr
    Boolean? timeout
    Boolean? time_range
    Boolean? switches
  }
  command <<<
    colmux \
      ~{if defined(address) then ("-address " +  '"' + address + '"') else ""} \
      ~{true="-command" false="" string_collectl_string} \
      ~{true="-hostwidth" false="" host_width} \
      ~{true="-lines" false="" lines} \
      ~{true="-noescape" false="" no_escape} \
      ~{true="-port" false="" port} \
      ~{true="-sshkey" false="" ssh_key} \
      ~{true="-sudo" false="" sudo} \
      ~{true="-test" false="" test} \
      ~{true="-username" false="" username} \
      ~{true="-version" false="" version} \
      ~{true="-delay" false="" delay} \
      ~{true="-home" false="" home} \
      ~{if defined(host_filter) then ("-hostfilter " +  '"' + host_filter + '"') else ""} \
      ~{true="-nosort" false="" no_sort} \
      ~{true="-colhelp" false="" col_help} \
      ~{true="-column" false="" column} \
      ~{true="-finalcr" false="" final_cr} \
      ~{if defined(host_format) then ("-hostformat " +  '"' + host_format + '"') else ""} \
      ~{true="-nobold" false="" no_bold} \
      ~{true="-reverse" false="" reverse} \
      ~{true="-zero" false="" include_columns_zero} \
      ~{true="-col1000" false="" col_one_zero_zero_zero} \
      ~{true="-colk" false="" col_k} \
      ~{true="-collog10" false="" collo_gone_zero} \
      ~{true="-cols" false="" cols} \
      ~{true="-colnodet" false="" col_node_t} \
      ~{true="-colnodiv" false="" col_no_div} \
      ~{true="-colnoinst" false="" col_no_inst} \
      ~{true="-coltotal" false="" col_total} \
      ~{true="-colwidth" false="" col_width} \
      ~{true="-age" false="" age} \
      ~{if defined(neg_data_val) then ("-negdataval " +  '"' + neg_data_val + '"') else ""} \
      ~{true="-nodataval" false="" no_data_val} \
      ~{true="-debug" false="" debug} \
      ~{true="-nocheck" false="" no_check} \
      ~{true="-quiet" false="" quiet} \
      ~{true="-reachable" false="" reachable} \
      ~{true="-colbin" false="" col_bin} \
      ~{true="-keepalive" false="" keepalive} \
      ~{true="-retaddr" false="" ret_addr} \
      ~{true="-timeout" false="" timeout} \
      ~{true="-timerange" false="" time_range} \
      ~{true="-switches" false="" switches}
  >>>
  parameter_meta {
    address: "comma separated list of address to connect or filename"
    string_collectl_string: "string       collectl command string"
    host_width: "number       minimum width to use for printing hostname [def=8]"
    lines: "number       limit displays to this number of lines"
    no_escape: "disable printing ALL escape sequences"
    port: "port         port remote collectl should use for communications"
    ssh_key: "file         file containing ssh public key to pass with ssh -i"
    sudo: "preface collectl commands with 'sudo'"
    test: "show column headers & numbering"
    username: "name         sets initial username for ALL hosts"
    version: "show version and exit"
    delay: "seconds      time to pause between playback output (fractions welcome)"
    home: "move cursor home between playback samples (top-like)"
    host_filter: "pdsh-like address list only apply to local filenames "
    no_sort: "do not sort output and ignore bolding and -lines"
    col_help: "include numbers over each column for easier identification"
    column: "num          select column number for sorting, see -test"
    final_cr: "DO print a final cr, see man page for why you could want this"
    host_format: ":piece   allows you display a piece of a hostname based on char"
    no_bold: "during file playback, disable highlighting of column names"
    reverse: "sort in decending order"
    include_columns_zero: "do not include columns of zero"
    col_one_zero_zero_zero: "divide each column by 1000"
    col_k: "divide each column by 1K (1024)"
    collo_gone_zero: "convert each column to log10, except when -colnodiv see man page for details"
    cols: "nums         select which columns to display on 1 line, see -test"
    col_node_t: "only print totals"
    col_no_div: "cols         do NOT apply colk or col1000 to comma-separated col numbers"
    col_no_inst: "do NOT include instance names in totals"
    col_total: "print totals for each column to the right"
    col_width: "width of each column [default=6]"
    age: "number       report latest value within number of intervals [def=2]"
    neg_data_val: "report negative numbers as 'val'"
    no_data_val: "val          report this instead of -1 when no data seen within -age"
    debug: "number       primarily for development/debugging, see source code"
    no_check: "do not check hosts (ping/ssh/collectl) before connecting"
    quiet: "do not report warnings for mismatched collectl versions and unknown connections"
    reachable: "if specified, ALL hosts must be pingable/ssh-able"
    col_bin: "path         use this path instead of /usr/bin/collectl for remote collectl"
    keepalive: "secs         pass this in the ssh command as '-o ServerAliveInterval=secs' to prevent ssh exiting early from an inactive ssh connection"
    ret_addr: "addr         tell collectl to connect back to this address. start with -deb 1 to see address collectl told to use"
    timeout: "secs         use this timeout for remote collectl to connect back requires collectl V3.6.4 or better"
    time_range: "secs         report remote systems times wider than this rang [def=1]"
    switches: ""
  }
}