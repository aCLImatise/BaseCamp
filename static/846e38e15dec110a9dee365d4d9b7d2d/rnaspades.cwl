class: CommandLineTool
id: rnaspades.py.cwl
inputs:
- id: spade_spy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: o
  doc: directory to store all the resulting files (required)
  type: string
  inputBinding:
    prefix: -o
- id: ion_torrent
  doc: this flag is required for IonTorrent data
  type: boolean
  inputBinding:
    prefix: --iontorrent
- id: test
  doc: runs SPAdes on toy dataset
  type: boolean
  inputBinding:
    prefix: --test
- id: s
  doc: file with unpaired reads
  type: File
  inputBinding:
    prefix: -s
- id: merged
  doc: file with merged forward and reverse paired-end reads
  type: File
  inputBinding:
    prefix: --merged
- id: pe_12
  doc: <#> <filename>      file with interlaced reads for paired-end library number
    <#>. Older deprecated syntax is -pe<#>-12 <filename>
  type: boolean
  inputBinding:
    prefix: --pe-12
- id: pe_1
  doc: <#> <filename>       file with forward reads for paired-end library number
    <#>. Older deprecated syntax is -pe<#>-1 <filename>
  type: boolean
  inputBinding:
    prefix: --pe-1
- id: pe_2
  doc: <#> <filename>       file with reverse reads for paired-end library number
    <#>. Older deprecated syntax is -pe<#>-2 <filename>
  type: boolean
  inputBinding:
    prefix: --pe-2
- id: pe_s
  doc: <#> <filename>       file with unpaired reads for paired-end library number
    <#>. Older deprecated syntax is -pe<#>-s <filename>
  type: boolean
  inputBinding:
    prefix: --pe-s
- id: pe_m
  doc: <#> <filename>       file with merged reads for paired-end library number <#>.
    Older deprecated syntax is -pe<#>-m <filename>
  type: boolean
  inputBinding:
    prefix: --pe-m
- id: pe_or
  doc: <#> <or>            orientation of reads for paired-end library number <#>  (<or>
    = fr, rf, ff). Older deprecated syntax is -pe<#>-<or>
  type: boolean
  inputBinding:
    prefix: --pe-or
- id: s
  doc: <#> <filename>          file with unpaired reads for single reads library number
    <#>. Older deprecated syntax is --s<#> <filename>
  type: boolean
  inputBinding:
    prefix: --s
- id: pac_bio
  doc: file with PacBio reads
  type: File
  inputBinding:
    prefix: --pacbio
- id: nano_pore
  doc: file with Nanopore reads
  type: File
  inputBinding:
    prefix: --nanopore
- id: trusted_contigs
  doc: file with trusted contigs
  type: File
  inputBinding:
    prefix: --trusted-contigs
- id: untrusted_contigs
  doc: file with untrusted contigs
  type: File
  inputBinding:
    prefix: --untrusted-contigs
- id: fl_rna
  doc: file with PacBio/Nanopore/contigs that capture full-length transcripts
  type: File
  inputBinding:
    prefix: --fl-rna
- id: ss
  doc: strand specific data, <type> = fr (normal) and rf (antisense). Older deprecated
    syntax is --ss-<type>
  type: string
  inputBinding:
    prefix: --ss
- id: checkpoints
  doc: save intermediate check-points ('last', 'all')
  type: string
  inputBinding:
    prefix: --checkpoints
- id: continue
  doc: continue run from the last available check-point
  type: boolean
  inputBinding:
    prefix: --continue
- id: restart_from
  doc: restart run with updated options and from the specified check-point ('as',
    'k<int>', 'last')
  type: string
  inputBinding:
    prefix: --restart-from
- id: disable_gzip_output
  doc: forces error correction not to compress the corrected reads
  type: boolean
  inputBinding:
    prefix: --disable-gzip-output
- id: disable_rr
  doc: disables repeat resolution stage of assembling
  type: boolean
  inputBinding:
    prefix: --disable-rr
- id: dataset
  doc: file with dataset description in YAML format
  type: File
  inputBinding:
    prefix: --dataset
- id: threads
  doc: 'number of threads. [default: 16]'
  type: long
  inputBinding:
    prefix: --threads
- id: memory
  doc: 'RAM limit for SPAdes in Gb (terminates if exceeded). [default: 250]'
  type: long
  inputBinding:
    prefix: --memory
- id: tmp_dir
  doc: 'directory for temporary files. [default: <output_dir>/tmp]'
  type: string
  inputBinding:
    prefix: --tmp-dir
- id: k
  doc: "[<int> ...]        list of k-mer sizes (must be odd and less than 128) [default:\
    \ 'auto']"
  type: long
  inputBinding:
    prefix: -k
- id: phred_offset
  doc: '<33 or 64>   PHRED quality offset in the input reads (33 or 64), [default:
    auto-detect]'
  type: boolean
  inputBinding:
    prefix: --phred-offset
outputs: []
cwlVersion: v1.1
baseCommand:
- rnaspades.py
