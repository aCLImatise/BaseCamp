class: CommandLineTool
id: MITObim.pl.cwl
inputs:
- id: in_start
  doc: iteration to start with (default=0, when using '-quick' reference)
  type: long?
  inputBinding:
    prefix: -start
- id: in_end
  doc: iteration to end with (default=startiteration, i.e. if not specified otherwise
    stop after 1 iteration)
  type: long?
  inputBinding:
    prefix: -end
- id: in_sample
  doc: sampleID (please don't use '.' in the sampleID). If resuming, the sampleID
    needs to be identical to that of the previous iteration / MIRA assembly.
  type: string?
  inputBinding:
    prefix: -sample
- id: in_ref
  doc: referenceID. If resuming, use the same as in previous iteration/initial MIRA
    assembly.
  type: string?
  inputBinding:
    prefix: -ref
- id: in_read_pool
  doc: readpool in fastq format (*.gz is also allowed). read pairs need to be interleaved
    for full functionality of the '-pair' option below.
  type: File?
  inputBinding:
    prefix: -readpool
- id: in_quick
  doc: reference sequence to be used as bait in fasta format
  type: File?
  inputBinding:
    prefix: -quick
- id: in_maf
  doc: extracts reference from maf file created by previous MITObim iteration/MIRA
    assembly (resume)
  type: File?
  inputBinding:
    prefix: -maf
- id: in_kb_a_it
  doc: 'set kmer for baiting stringency (default: 31)'
  type: long?
  inputBinding:
    prefix: --kbait
- id: in_platform
  doc: "specify sequencing platform (default: 'solexa'; other options: 'iontor', '454',\
    \ 'pacbio')"
  type: boolean?
  inputBinding:
    prefix: --platform
- id: in_de_novo
  doc: runs MIRA in denovo mode
  type: boolean?
  inputBinding:
    prefix: --denovo
- id: in_pair
  doc: 'extend readpool to contain full read pairs, even if only one member was baited
    (relies on /1 and /2 header convention for read pairs) (default: no).'
  type: boolean?
  inputBinding:
    prefix: --pair
- id: in_verbose
  doc: 'show detailed output of MIRA modules (default: no)'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_split
  doc: 'split reference at positions with more than 5N (default: no)'
  type: boolean?
  inputBinding:
    prefix: --split
- id: in_clean
  doc: 'retain only the last 2 iteration directories (default: no)'
  type: boolean?
  inputBinding:
    prefix: --clean
- id: in_trim_reads
  doc: 'trim data (default: no; we recommend to trim beforehand and feed MITObim with
    pre trimmed data)'
  type: boolean?
  inputBinding:
    prefix: --trimreads
- id: in_trim_overhang
  doc: "trim overhang up- and downstream of reference, i.e. don't extend the bait,\
    \ just re-assemble (default: no)"
  type: boolean?
  inputBinding:
    prefix: --trimoverhang
- id: in_mismatch
  doc: 'number of allowed mismatches in mapping - only for illumina data (default:
    15% of avg. read length)'
  type: long?
  inputBinding:
    prefix: --mismatch
- id: in_min_cov
  doc: 'minimum average coverage of contigs to be retained (default: 0 - off)'
  type: long?
  inputBinding:
    prefix: --min_cov
- id: in_min_len
  doc: 'minimum length of contig to be retained as backbone (default: 0 - off)'
  type: long?
  inputBinding:
    prefix: --min_len
- id: in_mira_path
  doc: full path to MIRA binaries (only needed if MIRA is not in PATH)
  type: File?
  inputBinding:
    prefix: --mirapath
- id: in_redirect_tmp
  doc: redirect temporary output to this location (useful in case you are running
    MITObim on an NFS mount)
  type: boolean?
  inputBinding:
    prefix: --redirect_tmp
- id: in_nfs_warn_only
  doc: allow MIRA to run on NFS mount without aborting -  warn only (expert option
    - see MIRA documentation 'check_nfs')
  type: boolean?
  inputBinding:
    prefix: --NFS_warn_only
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mitobim:1.9.1--0
cwlVersion: v1.1
baseCommand:
- MITObim.pl
