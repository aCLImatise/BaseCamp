class: CommandLineTool
id: rnaspades.py.cwl
inputs:
- id: in_directory_store_files
  doc: directory to store all the resulting files (required)
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_ion_torrent
  doc: this flag is required for IonTorrent data
  type: boolean?
  inputBinding:
    prefix: --iontorrent
- id: in_test
  doc: runs SPAdes on toy dataset
  type: boolean?
  inputBinding:
    prefix: --test
- id: in_file_interlaced_pairedend
  doc: file with interlaced forward and reverse paired-end reads
  type: File?
  inputBinding:
    prefix: --12
- id: in_file_forward_pairedend
  doc: file with forward paired-end reads
  type: File?
  inputBinding:
    prefix: '-1'
- id: in_file_reverse_pairedend
  doc: file with reverse paired-end reads
  type: File?
  inputBinding:
    prefix: '-2'
- id: in_file_unpaired_reads
  doc: file with unpaired reads
  type: File?
  inputBinding:
    prefix: -s
- id: in_merged
  doc: file with merged forward and reverse paired-end reads
  type: File?
  inputBinding:
    prefix: --merged
- id: in_pe_one_two
  doc: "<#> <filename>      file with interlaced reads for paired-end library number\
    \ <#>.\nOlder deprecated syntax is -pe<#>-12 <filename>"
  type: boolean?
  inputBinding:
    prefix: --pe-12
- id: in_pe_one
  doc: "<#> <filename>       file with forward reads for paired-end library number\
    \ <#>.\nOlder deprecated syntax is -pe<#>-1 <filename>"
  type: boolean?
  inputBinding:
    prefix: --pe-1
- id: in_pe_two
  doc: "<#> <filename>       file with reverse reads for paired-end library number\
    \ <#>.\nOlder deprecated syntax is -pe<#>-2 <filename>"
  type: boolean?
  inputBinding:
    prefix: --pe-2
- id: in_pe_s
  doc: "<#> <filename>       file with unpaired reads for paired-end library number\
    \ <#>.\nOlder deprecated syntax is -pe<#>-s <filename>"
  type: boolean?
  inputBinding:
    prefix: --pe-s
- id: in_pe_m
  doc: "<#> <filename>       file with merged reads for paired-end library number\
    \ <#>.\nOlder deprecated syntax is -pe<#>-m <filename>"
  type: boolean?
  inputBinding:
    prefix: --pe-m
- id: in_pe_or
  doc: "<#> <or>            orientation of reads for paired-end library number <#>\n\
    (<or> = fr, rf, ff).\nOlder deprecated syntax is -pe<#>-<or>"
  type: boolean?
  inputBinding:
    prefix: --pe-or
- id: in_pac_bio
  doc: file with PacBio reads
  type: File?
  inputBinding:
    prefix: --pacbio
- id: in_nano_pore
  doc: file with Nanopore reads
  type: File?
  inputBinding:
    prefix: --nanopore
- id: in_trusted_contigs
  doc: file with trusted contigs
  type: File?
  inputBinding:
    prefix: --trusted-contigs
- id: in_untrusted_contigs
  doc: file with untrusted contigs
  type: File?
  inputBinding:
    prefix: --untrusted-contigs
- id: in_fl_rna
  doc: file with PacBio/Nanopore/contigs that capture full-length transcripts
  type: File?
  inputBinding:
    prefix: --fl-rna
- id: in_ss
  doc: "strand specific data, <type> = fr (normal) and rf (antisense).\nOlder deprecated\
    \ syntax is --ss-<type>"
  type: string?
  inputBinding:
    prefix: --ss
- id: in_checkpoints
  doc: save intermediate check-points ('last', 'all')
  type: string?
  inputBinding:
    prefix: --checkpoints
- id: in_continue
  doc: continue run from the last available check-point (only -o should be specified)
  type: boolean?
  inputBinding:
    prefix: --continue
- id: in_restart_from
  doc: "restart run with updated options and from the specified check-point\n('as',\
    \ 'k<int>', 'last')"
  type: long?
  inputBinding:
    prefix: --restart-from
- id: in_disable_gzip_output
  doc: forces error correction not to compress the corrected reads
  type: boolean?
  inputBinding:
    prefix: --disable-gzip-output
- id: in_disable_rr
  doc: disables repeat resolution stage of assembling
  type: boolean?
  inputBinding:
    prefix: --disable-rr
- id: in_dataset
  doc: file with dataset description in YAML format
  type: File?
  inputBinding:
    prefix: --dataset
- id: in_threads
  doc: 'number of threads. [default: 16]'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_memory
  doc: 'RAM limit for SPAdes in Gb (terminates if exceeded). [default: 250]'
  type: long?
  inputBinding:
    prefix: --memory
- id: in_tmp_dir
  doc: 'directory for temporary files. [default: <output_dir>/tmp]'
  type: Directory?
  inputBinding:
    prefix: --tmp-dir
- id: in_list_kmer_sizes
  doc: "[<int> ...]        list of k-mer sizes (must be odd and less than 128)\n[default:\
    \ 'auto']"
  type: long?
  inputBinding:
    prefix: -k
- id: in_phred_offset
  doc: "PHRED quality offset in the input reads (33 or 64),\n[default: auto-detect]\n"
  type: long?
  inputBinding:
    prefix: --phred-offset
- id: in_spades_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pathracer:3.15.0.dev--h2d02072_0
cwlVersion: v1.1
baseCommand:
- rnaspades.py
