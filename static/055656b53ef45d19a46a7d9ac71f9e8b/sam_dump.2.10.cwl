class: CommandLineTool
id: sam_dump.2.10.3.cwl
inputs:
- id: cigar_cg
  doc: output CG version of CIGAR
  type: boolean
  inputBinding:
    prefix: --cigar-CG
- id: header
  doc: always reconstruct header
  type: boolean
  inputBinding:
    prefix: --header
- id: header_file
  doc: take all headers from this file
  type: File
  inputBinding:
    prefix: --header-file
- id: no_header
  doc: do not output headers
  type: boolean
  inputBinding:
    prefix: --no-header
- id: header_comment
  doc: '[,...] add comment to header. Use multiple times for several lines. Use quotes'
  type: string
  inputBinding:
    prefix: --header-comment
- id: aligned_region
  doc: '<name[:from-to]>[,...] Filter by position on genome. Name can either be file
    specific name (ex: "chr1" or "1"). "from" and "to" (inclusive) are 1-based coordinates'
  type: boolean
  inputBinding:
    prefix: --aligned-region
- id: mate_pair_distance
  doc: <from-to|'unknown'> Filter by distance between matepairs. Use "unknown" to
    find matepairs split between the references. Use from-to (inclusive) to limit
    matepair distance on the same reference
  type: boolean
  inputBinding:
    prefix: --matepair-distance
- id: seq_id
  doc: Print reference SEQ_ID in RNAME instead of NAME
  type: boolean
  inputBinding:
    prefix: --seqid
- id: gzip
  doc: Compress output using gzip
  type: boolean
  inputBinding:
    prefix: --gzip
- id: bzip2
  doc: Compress output using bzip2
  type: boolean
  inputBinding:
    prefix: --bzip2
- id: spot_group
  doc: Add .SPOT_GROUP to QNAME
  type: boolean
  inputBinding:
    prefix: --spot-group
- id: fast_q
  doc: Produce FastQ formatted output
  type: boolean
  inputBinding:
    prefix: --fastq
- id: fast_a
  doc: Produce Fasta formatted output
  type: boolean
  inputBinding:
    prefix: --fasta
- id: prefix
  doc: 'Prefix QNAME: prefix.QNAME'
  type: string
  inputBinding:
    prefix: --prefix
- id: reverse
  doc: Reverse unaligned reads according to read type
  type: boolean
  inputBinding:
    prefix: --reverse
- id: cigar_cg_merge
  doc: Apply CG fixups to CIGAR/SEQ/QUAL and outputs CG-specific columns
  type: boolean
  inputBinding:
    prefix: --cigar-cg-merge
- id: xi
  doc: Output cSRA alignment id in XI column
  type: boolean
  inputBinding:
    prefix: --XI
- id: qual_quant
  doc: Quality scores quantization level string like '1:10,10:20,20:30,30:-'
  type: string
  inputBinding:
    prefix: --qual-quant
- id: cg_evidence
  doc: Output CG evidence aligned to reference
  type: boolean
  inputBinding:
    prefix: --CG-evidence
- id: cg_ev_dnb
  doc: Output CG evidence DNB's aligned to evidence
  type: boolean
  inputBinding:
    prefix: --CG_ev-dnb
- id: cg_mappings
  doc: Output CG sequences aligned to reference
  type: boolean
  inputBinding:
    prefix: --CG-mappings
- id: cg_sam
  doc: Output CG evidence DNB's aligned to reference
  type: boolean
  inputBinding:
    prefix: --CG-SAM
- id: report
  doc: report options instead of executing
  type: boolean
  inputBinding:
    prefix: --report
- id: output_file
  doc: print output into this file (instead of STDOUT)
  type: File
  inputBinding:
    prefix: --output-file
- id: output_buffer_size
  doc: size of output-buffer (dflt:32k, 0...off)
  type: long
  inputBinding:
    prefix: --output-buffer-size
- id: cache_report
  doc: print report about mate-pair-cache
  type: boolean
  inputBinding:
    prefix: --cachereport
- id: unaligned_spots_only
  doc: output reads for spots with no aligned reads
  type: boolean
  inputBinding:
    prefix: --unaligned-spots-only
- id: cg_names
  doc: prints cg-style spotgroup.spotid formed names
  type: boolean
  inputBinding:
    prefix: --CG-names
- id: cursor_cache
  doc: open cached cursor with this size
  type: long
  inputBinding:
    prefix: --cursor-cache
- id: min_mapq
  doc: min. mapq an alignment has to have, to be printed
  type: string
  inputBinding:
    prefix: --min-mapq
- id: no_mate_cache
  doc: do not use mate-cache, slower but less memory usage
  type: boolean
  inputBinding:
    prefix: --no-mate-cache
- id: rna_splicing
  doc: modify cigar-string (replace .D. with .N.) and add output flags (XS:A:+/-)
    when rna-splicing is detected by match to spliceosome recognition sites
  type: boolean
  inputBinding:
    prefix: --rna-splicing
- id: rna_splice_level
  doc: level of rna-splicing detection (0,1,2) when testing for spliceosome recognition
    sites 0=perfect match, 1=one mismatch, 2=two mismatches, one on each site
  type: string
  inputBinding:
    prefix: --rna-splice-level
- id: rna_splice_log
  doc: file, into which rna-splice events are written
  type: File
  inputBinding:
    prefix: --rna-splice-log
- id: with_md_flag
  doc: print MD-flag
  type: boolean
  inputBinding:
    prefix: --with-md-flag
- id: ngc
  doc: <path> to ngc file
  type: File
  inputBinding:
    prefix: --ngc
- id: perm
  doc: <path> to permission file
  type: File
  inputBinding:
    prefix: --perm
- id: location
  doc: location in cloud
  type: string
  inputBinding:
    prefix: --location
- id: cart
  doc: <path> to cart file
  type: File
  inputBinding:
    prefix: --cart
- id: disable_multithreading
  doc: disable multithreading
  type: boolean
  inputBinding:
    prefix: --disable-multithreading
- id: log_level
  doc: Logging level as number or enum string. One of (fatal|sys|int|err|warn|info|debug)
    or (0-6) Current/default is warn
  type: string
  inputBinding:
    prefix: --log-level
- id: option_file
  doc: Read more options and parameters from the file.
  type: File
  inputBinding:
    prefix: --option-file
outputs: []
cwlVersion: v1.1
baseCommand:
- sam-dump.2.10.3
