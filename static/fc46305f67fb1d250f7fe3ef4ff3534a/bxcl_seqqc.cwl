class: CommandLineTool
id: bxcl_seqqc.cwl
inputs:
- id: files
  doc: F1    Pair of input FastQ files.
  type: string
  inputBinding:
    prefix: --files
- id: outdir
  doc: 'Output directory. (default: current directory)'
  type: File
  inputBinding:
    prefix: --outdir
- id: tmpdir
  doc: 'Temp directory. (default: system tmp location)'
  type: File
  inputBinding:
    prefix: --tmpdir
- id: threads
  doc: 'Max number of threads to use. NOTE: not allstages use all threads. (default:
    2)'
  type: string
  inputBinding:
    prefix: --threads
- id: adapt_seq
  doc: 'The adapter sequence to be trimmed from the FastQ file. (default: Illumina
    TruSeq Universal Adapter)'
  type: string
  inputBinding:
    prefix: --adaptseq
- id: qc_conf
  doc: 'Location of config file. (default: internal config)'
  type: string
  inputBinding:
    prefix: --qcconf
- id: trim
  doc: 'The type of trimming to be done on the paired sequences: [A]dapter or [Q]uality
    trimming, or [F]ull/both. WARNING: For standalone execution of runtrim only! (default:
    [F]ull)'
  type: string
  inputBinding:
    prefix: --trim
- id: print_config
  doc: Print example config files to current directory.
  type: boolean
  inputBinding:
    prefix: --printconfig
outputs: []
cwlVersion: v1.1
baseCommand:
- bxcl_seqqc
