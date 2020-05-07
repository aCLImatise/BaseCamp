class: CommandLineTool
id: spades.py.cwl
inputs:
- id: o
  doc: directory to store all the resulting files (required)
  type: string
  inputBinding:
    prefix: -o
- id: isolate
  doc: this flag is highly recommended for high-coverage isolate and multi-cell data
  type: boolean
  inputBinding:
    prefix: --isolate
- id: sc
  doc: this flag is required for MDA (single-cell) data
  type: boolean
  inputBinding:
    prefix: --sc
- id: meta
  doc: this flag is required for metagenomic sample data
  type: boolean
  inputBinding:
    prefix: --meta
- id: bio
  doc: this flag is required for biosyntheticSPAdes mode
  type: boolean
  inputBinding:
    prefix: --bio
- id: rna
  doc: this flag is required for RNA-Seq data
  type: boolean
  inputBinding:
    prefix: --rna
- id: plasmid
  doc: runs plasmidSPAdes pipeline for plasmid detection
  type: boolean
  inputBinding:
    prefix: --plasmid
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
- id: mp_12
  doc: <#> <filename>      file with interlaced reads for mate-pair library number
    <#>. Older deprecated syntax is -mp<#>-12 <filename>
  type: boolean
  inputBinding:
    prefix: --mp-12
- id: mp_1
  doc: <#> <filename>       file with forward reads for mate-pair library number <#>.
    Older deprecated syntax is -mp<#>-1 <filename>
  type: boolean
  inputBinding:
    prefix: --mp-1
- id: mp_2
  doc: <#> <filename>       file with reverse reads for mate-pair library number <#>.
    Older deprecated syntax is -mp<#>-2 <filename>
  type: boolean
  inputBinding:
    prefix: --mp-2
- id: mp_s
  doc: <#> <filename>       file with unpaired reads for mate-pair library number
    <#>. Older deprecated syntax is -mp<#>-s <filename>
  type: boolean
  inputBinding:
    prefix: --mp-s
- id: mp_or
  doc: <#> <or>            orientation of reads for mate-pair library number <#>  (<or>
    = fr, rf, ff). Older deprecated syntax is -mp<#>-<or>
  type: boolean
  inputBinding:
    prefix: --mp-or
- id: hq_mp_12
  doc: <#> <filename>    file with interlaced reads for high-quality mate-pair library
    number <#>. Older deprecated syntax is -hqmp<#>-12 <filename>
  type: boolean
  inputBinding:
    prefix: --hqmp-12
- id: hq_mp_1
  doc: <#> <filename>     file with forward reads for high-quality mate-pair library
    number <#>. Older deprecated syntax is -hqmp<#>-1 <filename>
  type: boolean
  inputBinding:
    prefix: --hqmp-1
- id: hq_mp_2
  doc: <#> <filename>     file with reverse reads for high-quality mate-pair library
    number <#>. Older deprecated syntax is -hqmp<#>-2 <filename>
  type: boolean
  inputBinding:
    prefix: --hqmp-2
- id: hq_mp_s
  doc: <#> <filename>     file with unpaired reads for high-quality mate-pair library
    number <#>. Older deprecated syntax is -hqmp<#>-s <filename>
  type: boolean
  inputBinding:
    prefix: --hqmp-s
- id: hq_mp_or
  doc: <#> <or>          orientation of reads for high-quality mate-pair library number
    <#>  (<or> = fr, rf, ff). Older deprecated syntax is -hqmp<#>-<or>
  type: boolean
  inputBinding:
    prefix: --hqmp-or
- id: nx_mate_1
  doc: <#> <filename>   file with forward reads for Lucigen NxMate library number
    <#>. Older deprecated syntax is -nxmate<#>-1 <filename>
  type: boolean
  inputBinding:
    prefix: --nxmate-1
- id: nx_mate_2
  doc: <#> <filename>   file with reverse reads for Lucigen NxMate library number
    <#>. Older deprecated syntax is -nxmate<#>-2 <filename>
  type: boolean
  inputBinding:
    prefix: --nxmate-2
- id: sanger
  doc: file with Sanger reads
  type: File
  inputBinding:
    prefix: --sanger
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
- id: t_slr
  doc: file with TSLR-contigs
  type: File
  inputBinding:
    prefix: --tslr
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
- id: only_error_correction
  doc: runs only read error correction (without assembling)
  type: boolean
  inputBinding:
    prefix: --only-error-correction
- id: only_assembler
  doc: runs only assembling (without read error correction)
  type: boolean
  inputBinding:
    prefix: --only-assembler
- id: careful
  doc: tries to reduce number of mismatches and short indels
  type: boolean
  inputBinding:
    prefix: --careful
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
  doc: restart run with updated options and from the specified check-point ('ec',
    'as', 'k<int>', 'mc', 'last')
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
- id: cov_cut_off
  doc: "coverage cutoff value (a positive float number, or 'auto', or 'off') [default:\
    \ 'off']"
  type: double
  inputBinding:
    prefix: --cov-cutoff
- id: phred_offset
  doc: '<33 or 64>   PHRED quality offset in the input reads (33 or 64), [default:
    auto-detect]'
  type: boolean
  inputBinding:
    prefix: --phred-offset
outputs: []
cwlVersion: v1.1
baseCommand:
- spades.py
