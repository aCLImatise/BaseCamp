class: CommandLineTool
id: csvtk_watch.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: bins
  doc: number of histogram bins (default -1)
  type: long
  inputBinding:
    prefix: --bins
- id: delay
  doc: sleep this many seconds after plotting (default 1)
  type: long
  inputBinding:
    prefix: --delay
- id: dump
  doc: print histogram data to stderr instead of plotting
  type: boolean
  inputBinding:
    prefix: --dump
- id: field
  doc: field to watch
  type: string
  inputBinding:
    prefix: --field
- id: image
  doc: save histogram to this PDF/image file
  type: string
  inputBinding:
    prefix: --image
- id: log
  doc: log10(x+1) transform numeric values
  type: boolean
  inputBinding:
    prefix: --log
- id: pass
  doc: passthrough mode (forward input to output)
  type: boolean
  inputBinding:
    prefix: --pass
- id: print_freq
  doc: print/report after this many records (-1 for print after EOF) (default -1)
  type: long
  inputBinding:
    prefix: --print-freq
- id: quiet
  doc: supress all plotting to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: reset
  doc: reset histogram after every report
  type: boolean
  inputBinding:
    prefix: --reset
- id: chunk_size
  doc: chunk size of CSV reader (default 50)
  type: long
  inputBinding:
    prefix: --chunk-size
- id: comment_char
  doc: lines starting with commment-character will be ignored. if your header row
    starts with '#', please assign "-C" another rare symbol, e.g. '$' (default "#")
  type: string
  inputBinding:
    prefix: --comment-char
- id: delimiter
  doc: delimiting character of the input CSV file (default ",")
  type: string
  inputBinding:
    prefix: --delimiter
- id: ignore_empty_row
  doc: ignore empty rows
  type: boolean
  inputBinding:
    prefix: --ignore-empty-row
- id: ignore_illegal_row
  doc: ignore illegal rows
  type: boolean
  inputBinding:
    prefix: --ignore-illegal-row
- id: in_file_list
  doc: file of input files list (one file per line), if given, they are appended to
    files from cli arguments
  type: string
  inputBinding:
    prefix: --infile-list
- id: lazy_quotes
  doc: if given, a quote may appear in an unquoted field and a non-doubled quote may
    appear in a quoted field
  type: boolean
  inputBinding:
    prefix: --lazy-quotes
- id: no_header_row
  doc: specifies that the input CSV file does not have header row
  type: boolean
  inputBinding:
    prefix: --no-header-row
- id: num_cpus
  doc: number of CPUs to use (default value depends on your computer) (default 8)
  type: long
  inputBinding:
    prefix: --num-cpus
- id: out_delimiter
  doc: delimiting character of the output CSV file, e.g., -D $'\t' for tab (default
    ",")
  type: string
  inputBinding:
    prefix: --out-delimiter
- id: out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: string
  inputBinding:
    prefix: --out-file
- id: out_tabs
  doc: specifies that the output is delimited with tabs. Overrides "-D"
  type: boolean
  inputBinding:
    prefix: --out-tabs
- id: tabs
  doc: specifies that the input CSV file is delimited with tabs. Overrides "-d" and
    "-D"
  type: boolean
  inputBinding:
    prefix: --tabs
outputs: []
cwlVersion: v1.1
baseCommand:
- csvtk
- watch
