class: CommandLineTool
id: sam_dump.2.10.8.cwl
inputs:
- id: in_unaligned
  doc: output unaligned reads along with aligned
  type: boolean?
  inputBinding:
    prefix: --unaligned
- id: in_cigar_long
  doc: output long version of CIGAR
  type: boolean?
  inputBinding:
    prefix: --cigar-long
- id: in_cigar_cg
  doc: output CG version of CIGAR
  type: boolean?
  inputBinding:
    prefix: --cigar-CG
- id: in_header
  doc: always reconstruct header
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_header_file
  doc: take all headers from this file
  type: File?
  inputBinding:
    prefix: --header-file
- id: in_no_header
  doc: do not output headers
  type: boolean?
  inputBinding:
    prefix: --no-header
- id: in_header_comment
  doc: "[,...] add comment to header. Use multiple times\nfor several lines. Use quotes"
  type: string?
  inputBinding:
    prefix: --header-comment
- id: in_aligned_region
  doc: "<name[:from-to]>[,...]\nFilter by position on genome. Name can\neither be\
    \ file specific name (ex: \"chr1\"\nor \"1\"). \"from\" and \"to\" (inclusive)\
    \ are\n1-based coordinates"
  type: boolean?
  inputBinding:
    prefix: --aligned-region
- id: in_mate_pair_distance
  doc: "<from-to|'unknown'>\nFilter by distance between matepairs. Use\n\"unknown\"\
    \ to find matepairs split\nbetween the references. Use from-to\n(inclusive) to\
    \ limit matepair distance\non the same reference"
  type: boolean?
  inputBinding:
    prefix: --matepair-distance
- id: in_seq_id
  doc: Print reference SEQ_ID in RNAME instead of
  type: boolean?
  inputBinding:
    prefix: --seqid
- id: in_bzip_two
  doc: Compress output using bzip2
  type: boolean?
  inputBinding:
    prefix: --bzip2
- id: in_spot_group
  doc: Add .SPOT_GROUP to QNAME
  type: boolean?
  inputBinding:
    prefix: --spot-group
- id: in_fast_q
  doc: Produce FastQ formatted output
  type: boolean?
  inputBinding:
    prefix: --fastq
- id: in_fast_a
  doc: Produce Fasta formatted output
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_prefix
  doc: 'Prefix QNAME: prefix.QNAME'
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_reverse
  doc: Reverse unaligned reads according to read
  type: boolean?
  inputBinding:
    prefix: --reverse
- id: in_xi
  doc: Output cSRA alignment id in XI column
  type: boolean?
  inputBinding:
    prefix: --XI
- id: in_qual_quant
  doc: "Quality scores quantization level string\nlike '1:10,10:20,20:30,30:-'"
  type: string?
  inputBinding:
    prefix: --qual-quant
- id: in_cg_evidence
  doc: Output CG evidence aligned to reference
  type: boolean?
  inputBinding:
    prefix: --CG-evidence
- id: in_cg_ev_dnb
  doc: Output CG evidence DNB's aligned to
  type: boolean?
  inputBinding:
    prefix: --CG_ev-dnb
- id: in_cg_sam
  doc: Output CG evidence DNB's aligned to
  type: boolean?
  inputBinding:
    prefix: --CG-SAM
- id: in_output_file
  doc: "print output into this file (instead of\nSTDOUT)"
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_output_buffer_size
  doc: size of output-buffer (dflt:32k, 0...off)
  type: long?
  inputBinding:
    prefix: --output-buffer-size
- id: in_cache_report
  doc: print report about mate-pair-cache
  type: boolean?
  inputBinding:
    prefix: --cachereport
- id: in_unaligned_spots_only
  doc: output reads for spots with no aligned
  type: boolean?
  inputBinding:
    prefix: --unaligned-spots-only
- id: in_min_mapq
  doc: min. mapq an alignment has to have, to be
  type: long?
  inputBinding:
    prefix: --min-mapq
- id: in_rna_splicing
  doc: "modify cigar-string (replace .D. with .N.)\nand add output flags (XS:A:+/-)\
    \ when\nrna-splicing is detected by match to\nspliceosome recognition sites"
  type: boolean?
  inputBinding:
    prefix: --rna-splicing
- id: in_rna_splice_level
  doc: "level of rna-splicing detection (0,1,2)\nwhen testing for spliceosome recognition\n\
    sites 0=perfect match, 1=one mismatch,\n2=two mismatches, one on each site"
  type: long?
  inputBinding:
    prefix: --rna-splice-level
- id: in_rna_splice_log
  doc: file, into which rna-splice events are
  type: File?
  inputBinding:
    prefix: --rna-splice-log
- id: in_ngc
  doc: <path> to ngc file
  type: File?
  inputBinding:
    prefix: --ngc
- id: in_perm
  doc: <path> to permission file
  type: File?
  inputBinding:
    prefix: --perm
- id: in_location
  doc: location in cloud
  type: string?
  inputBinding:
    prefix: --location
- id: in_cart
  doc: <path> to cart file
  type: File?
  inputBinding:
    prefix: --cart
- id: in_disable_multithreading
  doc: disable multithreading
  type: boolean?
  inputBinding:
    prefix: --disable-multithreading
- id: in_log_level
  doc: "Logging level as number or enum string.\nOne of\n(fatal|sys|int|err|warn|info|debug)\
    \ or\n(0-6) Current/default is warn"
  type: long?
  inputBinding:
    prefix: --log-level
- id: in_option_file
  doc: Read more options and parameters from the
  type: File?
  inputBinding:
    prefix: --option-file
- id: in___primary
  doc: -1|--primary                     output only primary alignments
  type: string
  inputBinding:
    position: 0
- id: in_name
  doc: -=|--hide-identical              Output '=' if base is identical to
  type: string
  inputBinding:
    position: 1
- id: in_gzip_output_using
  doc: --gzip                        Compress output using gzip
  type: string
  inputBinding:
    position: 2
- id: in_type
  doc: --cigar-cg-merge              Apply CG fixups to CIGAR/SEQ/QUAL and
  type: string
  inputBinding:
    position: 3
- id: in_evidence
  doc: --CG-mappings                 Output CG sequences aligned to reference
  type: string
  inputBinding:
    position: 0
- id: in_report_report_options
  doc: --report                      report options instead of executing
  type: string
  inputBinding:
    position: 1
- id: in__cgnames_prints
  doc: --CG-names                    prints cg-style spotgroup.spotid formed
  type: string
  inputBinding:
    position: 2
- id: in_names
  doc: --cursor-cache <size>         open cached cursor with this size
  type: string
  inputBinding:
    position: 3
- id: in_printed
  doc: --no-mate-cache               do not use mate-cache, slower but less
  type: string
  inputBinding:
    position: 4
- id: in_written
  doc: --with-md-flag                print MD-flag
  type: string
  inputBinding:
    position: 0
- id: in_file_dot
  doc: -h|--help                        print this message
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "print output into this file (instead of\nSTDOUT)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- sam-dump.2.10.8
