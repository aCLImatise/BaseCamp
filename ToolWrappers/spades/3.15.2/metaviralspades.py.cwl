class: CommandLineTool
id: metaviralspades.py.cwl
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
- id: in_mp_one_two
  doc: "<#> <filename>      file with interlaced reads for mate-pair library number\
    \ <#>.\nOlder deprecated syntax is -mp<#>-12 <filename>"
  type: boolean?
  inputBinding:
    prefix: --mp-12
- id: in_mp_one
  doc: "<#> <filename>       file with forward reads for mate-pair library number\
    \ <#>.\nOlder deprecated syntax is -mp<#>-1 <filename>"
  type: boolean?
  inputBinding:
    prefix: --mp-1
- id: in_mp_two
  doc: "<#> <filename>       file with reverse reads for mate-pair library number\
    \ <#>.\nOlder deprecated syntax is -mp<#>-2 <filename>"
  type: boolean?
  inputBinding:
    prefix: --mp-2
- id: in_mp_s
  doc: "<#> <filename>       file with unpaired reads for mate-pair library number\
    \ <#>.\nOlder deprecated syntax is -mp<#>-s <filename>"
  type: boolean?
  inputBinding:
    prefix: --mp-s
- id: in_mp_or
  doc: "<#> <or>            orientation of reads for mate-pair library number <#>\n\
    (<or> = fr, rf, ff).\nOlder deprecated syntax is -mp<#>-<or>"
  type: boolean?
  inputBinding:
    prefix: --mp-or
- id: in_hq_mp_one_two
  doc: "<#> <filename>    file with interlaced reads for high-quality mate-pair library\
    \ number <#>.\nOlder deprecated syntax is -hqmp<#>-12 <filename>"
  type: boolean?
  inputBinding:
    prefix: --hqmp-12
- id: in_hq_mp_one
  doc: "<#> <filename>     file with forward reads for high-quality mate-pair library\
    \ number <#>.\nOlder deprecated syntax is -hqmp<#>-1 <filename>"
  type: boolean?
  inputBinding:
    prefix: --hqmp-1
- id: in_hq_mp_two
  doc: "<#> <filename>     file with reverse reads for high-quality mate-pair library\
    \ number <#>.\nOlder deprecated syntax is -hqmp<#>-2 <filename>"
  type: boolean?
  inputBinding:
    prefix: --hqmp-2
- id: in_hq_mp_s
  doc: "<#> <filename>     file with unpaired reads for high-quality mate-pair library\
    \ number <#>.\nOlder deprecated syntax is -hqmp<#>-s <filename>"
  type: boolean?
  inputBinding:
    prefix: --hqmp-s
- id: in_hq_mp_or
  doc: "<#> <or>          orientation of reads for high-quality mate-pair library\
    \ number <#>\n(<or> = fr, rf, ff).\nOlder deprecated syntax is -hqmp<#>-<or>"
  type: boolean?
  inputBinding:
    prefix: --hqmp-or
- id: in_sanger
  doc: file with Sanger reads
  type: File?
  inputBinding:
    prefix: --sanger
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
- id: in_assembly_graph
  doc: file with assembly graph
  type: File?
  inputBinding:
    prefix: --assembly-graph
- id: in_only_error_correction
  doc: runs only read error correction (without assembling)
  type: boolean?
  inputBinding:
    prefix: --only-error-correction
- id: in_only_assembler
  doc: runs only assembling (without read error correction)
  type: boolean?
  inputBinding:
    prefix: --only-assembler
- id: in_careful
  doc: tries to reduce number of mismatches and short indels
  type: boolean?
  inputBinding:
    prefix: --careful
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
  doc: "restart run with updated options and from the specified check-point\n('ec',\
    \ 'as', 'k<int>', 'mc', 'last')"
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
- id: in_cov_cut_off
  doc: "coverage cutoff value (a positive float number, or 'auto', or 'off')\n[default:\
    \ 'off']"
  type: double?
  inputBinding:
    prefix: --cov-cutoff
- id: in_phred_offset
  doc: "PHRED quality offset in the input reads (33 or 64),\n[default: auto-detect]"
  type: long?
  inputBinding:
    prefix: --phred-offset
- id: in_custom_hmms
  doc: "directory with custom hmms that replace default ones,\n[default: None]\n"
  type: Directory?
  inputBinding:
    prefix: --custom-hmms
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
  dockerPull: quay.io/biocontainers/spades:3.15.2--h633aebb_0
cwlVersion: v1.1
baseCommand:
- metaviralspades.py
