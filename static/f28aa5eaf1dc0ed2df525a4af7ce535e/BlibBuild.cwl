class: CommandLineTool
id: BlibBuild.cwl
inputs:
- id: o
  doc: Overwrite existing library. Default append.
  type: boolean
  inputBinding:
    prefix: -o
- id: s
  doc: <filename>    Read from file as though it were stdin.
  type: boolean
  inputBinding:
    prefix: -S
- id: s
  doc: Result file names from stdin. e.g. ls *sqt | BlibBuild -s new.blib.
  type: boolean
  inputBinding:
    prefix: -s
- id: u
  doc: Ignore peptides except those with the unmodified sequences from stdin.
  type: boolean
  inputBinding:
    prefix: -u
- id: u
  doc: Ignore peptides except those with the modified sequences from stdin.
  type: boolean
  inputBinding:
    prefix: -U
- id: h
  doc: Use more than one decimal place when describing mass modifications.
  type: boolean
  inputBinding:
    prefix: -H
- id: c
  doc: <file size>   Minimum file size required to use caching for .dat files.  Specifiy
    units as B,K,G or M.  Default 800M.
  type: boolean
  inputBinding:
    prefix: -C
- id: c
  doc: Score threshold (0-1) for PSMs to be included in library. Higher threshold
    is more exclusive.
  type: string
  inputBinding:
    prefix: -c
- id: v
  doc: <level>       Level of output to stderr (silent, error, status, warn).  Default
    status.
  type: boolean
  inputBinding:
    prefix: -v
- id: l
  doc: Write status and warning messages to log file.
  type: boolean
  inputBinding:
    prefix: -L
- id: m
  doc: SQLite memory cache size in Megs. Default 250M.
  type: long
  inputBinding:
    prefix: -m
- id: l
  doc: ZLib compression level (0-?). Default 3.
  type: string
  inputBinding:
    prefix: -l
- id: i
  doc: LSID library ID. Default uses file name.
  type: string
  inputBinding:
    prefix: -i
- id: a
  doc: LSID authority. Default proteome.gs.washington.edu.
  type: string
  inputBinding:
    prefix: -a
- id: x
  doc: Specify the path of XML modifications file for parsing MaxQuant files.
  type: File
  inputBinding:
    prefix: -x
- id: p
  doc: Specify pusher interval for Waters final_fragment.csv files.
  type: double
  inputBinding:
    prefix: -P
- id: d
  doc: '[<filename>]   Document the .blib format by writing SQLite commands to a file,
    or stdout if no filename is given.'
  type: boolean
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- BlibBuild
