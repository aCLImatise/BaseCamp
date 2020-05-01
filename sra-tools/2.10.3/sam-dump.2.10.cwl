#!/usr/bin/env cwl-runner

baseCommand:
- sam-dump.2.10.3
class: CommandLineTool
cwlVersion: v1.0
id: sam-dump.2.10.3
inputs:
- doc: output CG version of CIGAR
  id: cigar_cg
  inputBinding:
    prefix: --cigar-CG
  type: boolean
- doc: always reconstruct header
  id: header
  inputBinding:
    prefix: --header
  type: boolean
- doc: take all headers from this file
  id: header_file
  inputBinding:
    prefix: --header-file
  type: File
- doc: do not output headers
  id: no_header
  inputBinding:
    prefix: --no-header
  type: boolean
- doc: '[,...] add comment to header. Use multiple times for several lines. Use quotes'
  id: header_comment
  inputBinding:
    prefix: --header-comment
  type: string
- doc: '<name[:from-to]>[,...] Filter by position on genome. Name can either be file
    specific name (ex: "chr1" or "1"). "from" and "to" (inclusive) are 1-based coordinates'
  id: aligned_region
  inputBinding:
    prefix: --aligned-region
  type: boolean
- doc: <from-to|'unknown'> Filter by distance between matepairs. Use "unknown" to
    find matepairs split between the references. Use from-to (inclusive) to limit
    matepair distance on the same reference
  id: mate_pair_distance
  inputBinding:
    prefix: --matepair-distance
  type: boolean
- doc: Print reference SEQ_ID in RNAME instead of NAME
  id: seq_id
  inputBinding:
    prefix: --seqid
  type: boolean
- doc: Compress output using gzip
  id: gzip
  inputBinding:
    prefix: --gzip
  type: boolean
- doc: Compress output using bzip2
  id: bzip2
  inputBinding:
    prefix: --bzip2
  type: boolean
- doc: Add .SPOT_GROUP to QNAME
  id: spot_group
  inputBinding:
    prefix: --spot-group
  type: boolean
- doc: Produce FastQ formatted output
  id: fast_q
  inputBinding:
    prefix: --fastq
  type: boolean
- doc: Produce Fasta formatted output
  id: fast_a
  inputBinding:
    prefix: --fasta
  type: boolean
- doc: 'Prefix QNAME: prefix.QNAME'
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: Reverse unaligned reads according to read type
  id: reverse
  inputBinding:
    prefix: --reverse
  type: boolean
- doc: Apply CG fixups to CIGAR/SEQ/QUAL and outputs CG-specific columns
  id: cigar_cg_merge
  inputBinding:
    prefix: --cigar-cg-merge
  type: boolean
- doc: Output cSRA alignment id in XI column
  id: xi
  inputBinding:
    prefix: --XI
  type: boolean
- doc: Quality scores quantization level string like '1:10,10:20,20:30,30:-'
  id: qual_quant
  inputBinding:
    prefix: --qual-quant
  type: string
- doc: Output CG evidence aligned to reference
  id: cg_evidence
  inputBinding:
    prefix: --CG-evidence
  type: boolean
- doc: Output CG evidence DNB's aligned to evidence
  id: cg_ev_dnb
  inputBinding:
    prefix: --CG_ev-dnb
  type: boolean
- doc: Output CG sequences aligned to reference
  id: cg_mappings
  inputBinding:
    prefix: --CG-mappings
  type: boolean
- doc: Output CG evidence DNB's aligned to reference
  id: cg_sam
  inputBinding:
    prefix: --CG-SAM
  type: boolean
- doc: report options instead of executing
  id: report
  inputBinding:
    prefix: --report
  type: boolean
- doc: print output into this file (instead of STDOUT)
  id: output_file
  inputBinding:
    prefix: --output-file
  type: File
- doc: size of output-buffer (dflt:32k, 0...off)
  id: output_buffer_size
  inputBinding:
    prefix: --output-buffer-size
  type: long
- doc: print report about mate-pair-cache
  id: cache_report
  inputBinding:
    prefix: --cachereport
  type: boolean
- doc: output reads for spots with no aligned reads
  id: unaligned_spots_only
  inputBinding:
    prefix: --unaligned-spots-only
  type: boolean
- doc: prints cg-style spotgroup.spotid formed names
  id: cg_names
  inputBinding:
    prefix: --CG-names
  type: boolean
- doc: open cached cursor with this size
  id: cursor_cache
  inputBinding:
    prefix: --cursor-cache
  type: long
- doc: min. mapq an alignment has to have, to be printed
  id: min_mapq
  inputBinding:
    prefix: --min-mapq
  type: string
- doc: do not use mate-cache, slower but less memory usage
  id: no_mate_cache
  inputBinding:
    prefix: --no-mate-cache
  type: boolean
- doc: modify cigar-string (replace .D. with .N.) and add output flags (XS:A:+/-)
    when rna-splicing is detected by match to spliceosome recognition sites
  id: rna_splicing
  inputBinding:
    prefix: --rna-splicing
  type: boolean
- doc: level of rna-splicing detection (0,1,2) when testing for spliceosome recognition
    sites 0=perfect match, 1=one mismatch, 2=two mismatches, one on each site
  id: rna_splice_level
  inputBinding:
    prefix: --rna-splice-level
  type: string
- doc: file, into which rna-splice events are written
  id: rna_splice_log
  inputBinding:
    prefix: --rna-splice-log
  type: File
- doc: print MD-flag
  id: with_md_flag
  inputBinding:
    prefix: --with-md-flag
  type: boolean
- doc: <path> to ngc file
  id: ngc
  inputBinding:
    prefix: --ngc
  type: File
- doc: <path> to permission file
  id: perm
  inputBinding:
    prefix: --perm
  type: File
- doc: location in cloud
  id: location
  inputBinding:
    prefix: --location
  type: string
- doc: <path> to cart file
  id: cart
  inputBinding:
    prefix: --cart
  type: File
- doc: disable multithreading
  id: disable_multithreading
  inputBinding:
    prefix: --disable-multithreading
  type: boolean
- doc: Logging level as number or enum string. One of (fatal|sys|int|err|warn|info|debug)
    or (0-6) Current/default is warn
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: Read more options and parameters from the file.
  id: option_file
  inputBinding:
    prefix: --option-file
  type: File
