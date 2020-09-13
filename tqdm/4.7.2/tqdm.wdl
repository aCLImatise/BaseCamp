version 1.0

task Tqdm {
  input {
    String? desc
    Int? total
    Boolean? leave
    Int? ncols
    Int? min_interval
    Int? max_interval
    Int? miniter_s
    Boolean? ascii
    Boolean? disable
    String? unit
    Boolean? unit_scale
    Boolean? dynamic_ncols
    Float? smoothing
    String? bar_format
    Int? initial
    Int? position
    Int? delim
    Int? buf_size
  }
  command <<<
    tqdm \
      ~{if defined(desc) then ("--desc " +  '"' + desc + '"') else ""} \
      ~{if defined(total) then ("--total " +  '"' + total + '"') else ""} \
      ~{if defined(leave) then ("--leave " +  '"' + leave + '"') else ""} \
      ~{if defined(ncols) then ("--ncols " +  '"' + ncols + '"') else ""} \
      ~{if defined(min_interval) then ("--mininterval " +  '"' + min_interval + '"') else ""} \
      ~{if defined(max_interval) then ("--maxinterval " +  '"' + max_interval + '"') else ""} \
      ~{if defined(miniter_s) then ("--miniters " +  '"' + miniter_s + '"') else ""} \
      ~{if defined(ascii) then ("--ascii " +  '"' + ascii + '"') else ""} \
      ~{if defined(disable) then ("--disable " +  '"' + disable + '"') else ""} \
      ~{if defined(unit) then ("--unit " +  '"' + unit + '"') else ""} \
      ~{if defined(unit_scale) then ("--unit_scale " +  '"' + unit_scale + '"') else ""} \
      ~{if defined(dynamic_ncols) then ("--dynamic_ncols " +  '"' + dynamic_ncols + '"') else ""} \
      ~{if defined(smoothing) then ("--smoothing " +  '"' + smoothing + '"') else ""} \
      ~{if defined(bar_format) then ("--bar_format " +  '"' + bar_format + '"') else ""} \
      ~{if defined(initial) then ("--initial " +  '"' + initial + '"') else ""} \
      ~{if defined(position) then ("--position " +  '"' + position + '"') else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if defined(buf_size) then ("--buf_size " +  '"' + buf_size + '"') else ""}
  >>>
  parameter_meta {
    desc: ": str, optional\\nPrefix for the progressbar."
    total: ": int, optional\\nThe number of expected iterations. If unspecified,\\nlen(iterable) is used if possible. As a last resort, only basic\\nprogress statistics are displayed (no ETA, no progressbar).\\nIf `gui` is True and this parameter needs subsequent updating,\\nspecify an initial arbitrary large positive integer,\\ne.g. int(9e9)."
    leave: ": bool, optional\\nIf [default: True], keeps all traces of the progressbar\\nupon termination of iteration."
    ncols: ": int, optional\\nThe width of the entire output message. If specified,\\ndynamically resizes the progressbar to stay within this bound.\\nIf unspecified, attempts to use environment width. The\\nfallback is a meter width of 10 and no limit for the counter and\\nstatistics. If 0, will not print any meter (only stats)."
    min_interval: ": float, optional\\nMinimum progress update interval, in seconds [default: 0.1]."
    max_interval: ": float, optional\\nMaximum progress update interval, in seconds [default: 10.0]."
    miniter_s: ": int, optional\\nMinimum progress update interval, in iterations.\\nIf specified, will set `mininterval` to 0."
    ascii: ": bool, optional\\nIf unspecified or False, use unicode (smooth blocks) to fill\\nthe meter. The fallback is to use ASCII characters `1-9 #`."
    disable: ": bool, optional\\nWhether to disable the entire progressbar wrapper\\n[default: False]."
    unit: ": str, optional\\nString that will be used to define the unit of each iteration\\n[default: it]."
    unit_scale: ": bool, optional\\nIf set, the number of iterations will be reduced/scaled\\nautomatically and a metric prefix following the\\nInternational System of Units standard will be added\\n(kilo, mega, etc.) [default: False]."
    dynamic_ncols: ": bool, optional\\nIf set, constantly alters `ncols` to the environment (allowing\\nfor window resizes) [default: False]."
    smoothing: ": float, optional\\nExponential moving average smoothing factor for speed estimates\\n(ignored in GUI mode). Ranges from 0 (average speed) to 1\\n(current/instantaneous speed) [default: 0.3]."
    bar_format: ": str, optional\\nSpecify a custom bar string formatting. May impact performance.\\nIf unspecified, will use '{l_bar}{bar}{r_bar}', where l_bar is\\n'{desc}{percentage:3.0f}%|' and r_bar is\\n'| {n_fmt}/{total_fmt} [{elapsed_str}<{remaining_str}, {rate_fmt}]'\\nPossible vars: bar, n, n_fmt, total, total_fmt, percentage,\\nrate, rate_fmt, elapsed, remaining, l_bar, r_bar, desc."
    initial: ": int, optional\\nThe initial counter value. Useful when restarting a progress\\nbar [default: 0]."
    position: ": int, optional\\nSpecify the line offset to print this bar (starting from 0)\\nAutomatic if unspecified.\\nUseful to manage multiple bars at once (eg, from threads)."
    delim: ": chr, optional\\nDelimiting character [default: '\\n']. Use '\\0' for null.\\nN.B.: on Windows systems, Python converts '\\n' to '\\r\\n'."
    buf_size: ": int, optional\\nString buffer size in bytes [default: 256]\\nused when `delim` is specified.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}