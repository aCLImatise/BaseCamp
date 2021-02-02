class: CommandLineTool
id: tqdm.cwl
inputs:
- id: in_desc
  doc: ": str, optional\nPrefix for the progressbar."
  type: string
  inputBinding:
    prefix: --desc
- id: in_total
  doc: ": int, optional\nThe number of expected iterations. If unspecified,\nlen(iterable)\
    \ is used if possible. As a last resort, only basic\nprogress statistics are displayed\
    \ (no ETA, no progressbar).\nIf `gui` is True and this parameter needs subsequent\
    \ updating,\nspecify an initial arbitrary large positive integer,\ne.g. int(9e9)."
  type: long
  inputBinding:
    prefix: --total
- id: in_leave
  doc: ": bool, optional\nIf [default: True], keeps all traces of the progressbar\n\
    upon termination of iteration."
  type: boolean
  inputBinding:
    prefix: --leave
- id: in_ncols
  doc: ": int, optional\nThe width of the entire output message. If specified,\ndynamically\
    \ resizes the progressbar to stay within this bound.\nIf unspecified, attempts\
    \ to use environment width. The\nfallback is a meter width of 10 and no limit\
    \ for the counter and\nstatistics. If 0, will not print any meter (only stats)."
  type: long
  inputBinding:
    prefix: --ncols
- id: in_min_interval
  doc: ": float, optional\nMinimum progress update interval, in seconds [default:\
    \ 0.1]."
  type: long
  inputBinding:
    prefix: --mininterval
- id: in_max_interval
  doc: ": float, optional\nMaximum progress update interval, in seconds [default:\
    \ 10.0]."
  type: long
  inputBinding:
    prefix: --maxinterval
- id: in_miniter_s
  doc: ": int, optional\nMinimum progress update interval, in iterations.\nIf specified,\
    \ will set `mininterval` to 0."
  type: long
  inputBinding:
    prefix: --miniters
- id: in_ascii
  doc: ": bool, optional\nIf unspecified or False, use unicode (smooth blocks) to\
    \ fill\nthe meter. The fallback is to use ASCII characters `1-9 #`."
  type: boolean
  inputBinding:
    prefix: --ascii
- id: in_disable
  doc: ": bool, optional\nWhether to disable the entire progressbar wrapper\n[default:\
    \ False]."
  type: boolean
  inputBinding:
    prefix: --disable
- id: in_unit
  doc: ": str, optional\nString that will be used to define the unit of each iteration\n\
    [default: it]."
  type: string
  inputBinding:
    prefix: --unit
- id: in_unit_scale
  doc: ": bool, optional\nIf set, the number of iterations will be reduced/scaled\n\
    automatically and a metric prefix following the\nInternational System of Units\
    \ standard will be added\n(kilo, mega, etc.) [default: False]."
  type: boolean
  inputBinding:
    prefix: --unit_scale
- id: in_dynamic_ncols
  doc: ": bool, optional\nIf set, constantly alters `ncols` to the environment (allowing\n\
    for window resizes) [default: False]."
  type: boolean
  inputBinding:
    prefix: --dynamic_ncols
- id: in_smoothing
  doc: ": float, optional\nExponential moving average smoothing factor for speed estimates\n\
    (ignored in GUI mode). Ranges from 0 (average speed) to 1\n(current/instantaneous\
    \ speed) [default: 0.3]."
  type: double
  inputBinding:
    prefix: --smoothing
- id: in_bar_format
  doc: ": str, optional\nSpecify a custom bar string formatting. May impact performance.\n\
    If unspecified, will use '{l_bar}{bar}{r_bar}', where l_bar is\n'{desc}{percentage:3.0f}%|'\
    \ and r_bar is\n'| {n_fmt}/{total_fmt} [{elapsed_str}<{remaining_str}, {rate_fmt}]'\n\
    Possible vars: bar, n, n_fmt, total, total_fmt, percentage,\nrate, rate_fmt, elapsed,\
    \ remaining, l_bar, r_bar, desc."
  type: string
  inputBinding:
    prefix: --bar_format
- id: in_initial
  doc: ": int, optional\nThe initial counter value. Useful when restarting a progress\n\
    bar [default: 0]."
  type: long
  inputBinding:
    prefix: --initial
- id: in_position
  doc: ": int, optional\nSpecify the line offset to print this bar (starting from\
    \ 0)\nAutomatic if unspecified.\nUseful to manage multiple bars at once (eg, from\
    \ threads)."
  type: long
  inputBinding:
    prefix: --position
- id: in_delim
  doc: ": chr, optional\nDelimiting character [default: '\\n']. Use '\\0' for null.\n\
    N.B.: on Windows systems, Python converts '\\n' to '\\r\\n'."
  type: long
  inputBinding:
    prefix: --delim
- id: in_buf_size
  doc: ": int, optional\nString buffer size in bytes [default: 256]\nused when `delim`\
    \ is specified.\n"
  type: long
  inputBinding:
    prefix: --buf_size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tqdm
