#!/usr/bin/env cwl-runner

baseCommand:
- csvtk
class: CommandLineTool
cwlVersion: v1.0
id: csvtk
inputs:
- doc: chunk size of CSV reader (default 50)
  id: chunk_size
  inputBinding:
    prefix: --chunk-size
  type: long
- doc: lines starting with commment-character will be ignored. if your header row
    starts with '#', please assign "-C" another rare symbol, e.g. '$' (default "#")
  id: comment_char
  inputBinding:
    prefix: --comment-char
  type: string
- doc: delimiting character of the input CSV file (default ",")
  id: delimiter
  inputBinding:
    prefix: --delimiter
  type: string
- doc: ignore empty rows
  id: ignore_empty_row
  inputBinding:
    prefix: --ignore-empty-row
  type: boolean
- doc: ignore illegal rows
  id: ignore_illegal_row
  inputBinding:
    prefix: --ignore-illegal-row
  type: boolean
- doc: file of input files list (one file per line), if given, they are appended to
    files from cli arguments
  id: in_file_list
  inputBinding:
    prefix: --infile-list
  type: string
- doc: if given, a quote may appear in an unquoted field and a non-doubled quote may
    appear in a quoted field
  id: lazy_quotes
  inputBinding:
    prefix: --lazy-quotes
  type: boolean
- doc: specifies that the input CSV file does not have header row
  id: no_header_row
  inputBinding:
    prefix: --no-header-row
  type: boolean
- doc: number of CPUs to use (default value depends on your computer) (default 8)
  id: num_cpus
  inputBinding:
    prefix: --num-cpus
  type: long
- doc: delimiting character of the output CSV file, e.g., -D $'\t' for tab (default
    ",")
  id: out_delimiter
  inputBinding:
    prefix: --out-delimiter
  type: string
- doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  id: out_file
  inputBinding:
    prefix: --out-file
  type: string
- doc: specifies that the output is delimited with tabs. Overrides "-D"
  id: out_tabs
  inputBinding:
    prefix: --out-tabs
  type: boolean
- doc: specifies that the input CSV file is delimited with tabs. Overrides "-d" and
    "-D"
  id: tabs
  inputBinding:
    prefix: --tabs
  type: boolean
