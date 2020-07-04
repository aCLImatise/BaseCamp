version 1.0

task Jeprof {
  input {
    Boolean? cum
    String? base
    Boolean? interactive
    String? seconds
    File? add_lib
    String? lib_prefix
    Boolean? addresses
    Boolean? lines
    Boolean? functions
    Boolean? files
    Boolean? text
    Boolean? call_grind
    Boolean? gv
    Boolean? evince
    Boolean? web
    String? list
    String? dis_asm
    Boolean? symbols
    Boolean? dot
    Boolean? ps
    Boolean? pdf
    Boolean? svg
    Boolean? gif
    Boolean? raw
    Boolean? in_use_space
    Boolean? in_use_objects
    Boolean? alloc_space
    Boolean? alloc_objects
    Boolean? show_bytes
    Boolean? drop_negative
    Boolean? total_delay
    Boolean? contentions
    Boolean? mean_delay
    String? node_count
    String? node_fraction
    String? edge_fraction
    String? max_degree
    String? focus
    String? thread
    String? ignore
    String? scale
    Boolean? heap_check
    String? retain
    String? exclude
    Boolean? tools
    Boolean? test
    String je_prof_tmpdir
    String je_prof_tools
  }
  command <<<
    jeprof \
      ~{je_prof_tmpdir} \
      ~{je_prof_tools} \
      ~{true="--cum" false="" cum} \
      ~{if defined(base) then ("--base " +  '"' + base + '"') else ""} \
      ~{true="--interactive" false="" interactive} \
      ~{if defined(seconds) then ("--seconds " +  '"' + seconds + '"') else ""} \
      ~{if defined(add_lib) then ("--add_lib " +  '"' + add_lib + '"') else ""} \
      ~{if defined(lib_prefix) then ("--lib_prefix " +  '"' + lib_prefix + '"') else ""} \
      ~{true="--addresses" false="" addresses} \
      ~{true="--lines" false="" lines} \
      ~{true="--functions" false="" functions} \
      ~{true="--files" false="" files} \
      ~{true="--text" false="" text} \
      ~{true="--callgrind" false="" call_grind} \
      ~{true="--gv" false="" gv} \
      ~{true="--evince" false="" evince} \
      ~{true="--web" false="" web} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(dis_asm) then ("--disasm " +  '"' + dis_asm + '"') else ""} \
      ~{true="--symbols" false="" symbols} \
      ~{true="--dot" false="" dot} \
      ~{true="--ps" false="" ps} \
      ~{true="--pdf" false="" pdf} \
      ~{true="--svg" false="" svg} \
      ~{true="--gif" false="" gif} \
      ~{true="--raw" false="" raw} \
      ~{true="--inuse_space" false="" in_use_space} \
      ~{true="--inuse_objects" false="" in_use_objects} \
      ~{true="--alloc_space" false="" alloc_space} \
      ~{true="--alloc_objects" false="" alloc_objects} \
      ~{true="--show_bytes" false="" show_bytes} \
      ~{true="--drop_negative" false="" drop_negative} \
      ~{true="--total_delay" false="" total_delay} \
      ~{true="--contentions" false="" contentions} \
      ~{true="--mean_delay" false="" mean_delay} \
      ~{if defined(node_count) then ("--nodecount " +  '"' + node_count + '"') else ""} \
      ~{if defined(node_fraction) then ("--nodefraction " +  '"' + node_fraction + '"') else ""} \
      ~{if defined(edge_fraction) then ("--edgefraction " +  '"' + edge_fraction + '"') else ""} \
      ~{if defined(max_degree) then ("--maxdegree " +  '"' + max_degree + '"') else ""} \
      ~{if defined(focus) then ("--focus " +  '"' + focus + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{true="--heapcheck" false="" heap_check} \
      ~{if defined(retain) then ("--retain " +  '"' + retain + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{true="--tools" false="" tools} \
      ~{true="--test" false="" test}
  >>>
  parameter_meta {
    cum: "Sort by cumulative data"
    base: "Subtract <base> from <profile> before display"
    interactive: "Run in interactive mode (interactive \"help\" gives help) [default]"
    seconds: "Length of time for dynamic profiles [default=30 secs]"
    add_lib: "Read additional symbols and line info from the given library"
    lib_prefix: "Comma separated list of library path prefixes"
    addresses: "Report at address level"
    lines: "Report at source line level"
    functions: "Report at function level [default]"
    files: "Report at source file level"
    text: "Generate text report"
    call_grind: "Generate callgrind format to stdout"
    gv: "Generate Postscript and display"
    evince: "Generate PDF and display"
    web: "Generate SVG and display"
    list: "Generate source listing of matching routines"
    dis_asm: "Generate disassembly of matching routines"
    symbols: "Print demangled symbol names found at given addresses"
    dot: "Generate DOT file to stdout"
    ps: "Generate Postcript to stdout"
    pdf: "Generate PDF to stdout"
    svg: "Generate SVG to stdout"
    gif: "Generate GIF to stdout"
    raw: "Generate symbolized jeprof data (useful with remote fetch)"
    in_use_space: "Display in-use (mega)bytes [default]"
    in_use_objects: "Display in-use objects"
    alloc_space: "Display allocated (mega)bytes"
    alloc_objects: "Display allocated objects"
    show_bytes: "Display space in bytes"
    drop_negative: "Ignore negative differences"
    total_delay: "Display total delay at each region [default]"
    contentions: "Display number of delays at each region"
    mean_delay: "Display mean delay at each region"
    node_count: "Show at most so many nodes [default=80]"
    node_fraction: "Hide nodes below <f>*total [default=.005]"
    edge_fraction: "Hide edges below <f>*total [default=.001]"
    max_degree: "Max incoming/outgoing edges per node [default=8]"
    focus: "Focus on backtraces with nodes matching <regexp>"
    thread: "Show profile for thread <n>"
    ignore: "Ignore backtraces with nodes matching <regexp>"
    scale: "Set GV scaling [default=0]"
    heap_check: "Make nodes with non-0 object counts (i.e. direct leak generators) more visible"
    retain: "Retain only nodes that match <regexp>"
    exclude: "Exclude all nodes that match <regexp>"
    tools: "=<prefix or binary:fullpath>[,...]   $PATH for object tool pathnames"
    test: "Run unit tests"
    je_prof_tmpdir: "Profiles directory. Defaults to $HOME/jeprof"
    je_prof_tools: "Prefix for object tools pathnames"
  }
}