class: CommandLineTool
id: sam_dump_orig.cwl
inputs:
- id: in_unaligned
  doc: Output unaligned reads along with aligned
  type: boolean?
  inputBinding:
    prefix: --unaligned
- id: in_cigar_long
  doc: Output long version of CIGAR
  type: boolean?
  inputBinding:
    prefix: --cigar-long
- id: in_cigar_cg
  doc: Output CG version of CIGAR
  type: boolean?
  inputBinding:
    prefix: --cigar-CG
- id: in_header
  doc: Always reconstruct header
  type: boolean?
  inputBinding:
    prefix: --header
- id: in_header_file
  doc: take all headers from this file
  type: File?
  inputBinding:
    prefix: --header-file
- id: in_no_header
  doc: Do not output headers
  type: boolean?
  inputBinding:
    prefix: --no-header
- id: in_header_comment
  doc: "Add comment to header. Use multiple times\nfor several lines. Use quotes"
  type: string?
  inputBinding:
    prefix: --header-comment
- id: in_aligned_region
  doc: "<name[:from-to]>  Filter by position on genome. Name can\neither be file specific\
    \ name (ex: \"chr1\" or\n\"1\"). \"from\" and \"to\" (inclusive) are\n1-based\
    \ coordinates"
  type: boolean?
  inputBinding:
    prefix: --aligned-region
- id: in_mate_pair_distance
  doc: "<from-to|'unknown'>  Filter by distance between\nmatepairs. Use \"unknown\"\
    \ to find matepairs\nsplit between the references. Use from-to\n(inclusive) to\
    \ limit matepair distance on\nthe same reference"
  type: boolean?
  inputBinding:
    prefix: --matepair-distance
- id: in_seq_id
  doc: Print reference SEQ_ID in RNAME instead of
  type: boolean?
  inputBinding:
    prefix: --seqid
- id: in_gzip
  doc: Compress output using gzip
  type: boolean?
  inputBinding:
    prefix: --gzip
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
  doc: "Quality scores quantization level\nstring like '1:10,10:20,20:30,30:-'"
  type: string?
  inputBinding:
    prefix: --qual-quant
- id: in_cg_evidence
  doc: Output CG evidence aligned to reference
  type: boolean?
  inputBinding:
    prefix: --CG-evidence
- id: in_cg_ev_dnb
  doc: Output CG evidence DNB's aligned to evidence
  type: boolean?
  inputBinding:
    prefix: --CG-ev-dnb
- id: in_cg_mappings
  doc: Output CG sequences aligned to reference
  type: boolean?
  inputBinding:
    prefix: --CG-mappings
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
  doc: size of output-buffer(dflt:32k, 0...off)
  type: boolean?
  inputBinding:
    prefix: --output-buffer-size
- id: in_cache_report
  doc: print report about mate-pair-cache
  type: boolean?
  inputBinding:
    prefix: --cachereport
- id: in_unaligned_spots_only
  doc: output reads for spots with no aligned reads
  type: boolean?
  inputBinding:
    prefix: --unaligned-spots-only
- id: in_cg_names
  doc: prints cg-style spotgroup.spotid formed
  type: boolean?
  inputBinding:
    prefix: --CG-names
- id: in_min_mapq
  doc: min. mapq an alignment has to have, to be
  type: boolean?
  inputBinding:
    prefix: --min-mapq
- id: in_rna_splicing
  doc: "modify cigar-string (replace .D. with .N.)\nand add output flags (XS:A:+/-)\
    \  when\nrna-splicing is detected by match to\nspliceosome recognition sites"
  type: boolean?
  inputBinding:
    prefix: --rna-splicing
- id: in_rna_splice_level
  doc: "level of rna-splicing detection (0,1,2) when\ntesting for spliceosome recognition\
    \ sites\n0=perfect match, 1=one mismatch, 2=two\nmismatches  one on each site"
  type: boolean?
  inputBinding:
    prefix: --rna-splice-level
- id: in_rna_splice_log
  doc: file, into which rna-splice events are
  type: boolean?
  inputBinding:
    prefix: --rna-splice-log
- id: in_with_md_flag
  doc: print MD-flag
  type: boolean?
  inputBinding:
    prefix: --with-md-flag
- id: in_ngc
  doc: PATH to ngc file
  type: File?
  inputBinding:
    prefix: --ngc
- id: in_verbose
  doc: "Increase the verbosity of the program\nstatus messages. Use multiple times\
    \ for more\nverbosity. Negates quiet."
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: "Turn off all status messages for the\nprogram. Negated by verbose."
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_option_file
  doc: Read more options and parameters from the
  type: File?
  inputBinding:
    prefix: --option-file
- id: in_reads
  doc: '-1|--primary                     Output only primary alignments '
  type: string
  inputBinding:
    position: 0
- id: in_name
  doc: "-=|--hide-identical              Output '=' if base is identical to reference "
  type: string
  inputBinding:
    position: 1
- id: in_type
  doc: '--cigar-CG-merge                 Apply CG fixups to CIGAR/SEQ/QUAL and '
  type: string
  inputBinding:
    position: 2
- id: in_reference
  doc: '--report                         report options instead of executing '
  type: string
  inputBinding:
    position: 0
- id: in_names
  doc: '--cursor-cache                   open cached cursor with this size '
  type: string
  inputBinding:
    position: 1
- id: in_printed
  doc: '--no-mate-cache                  do not use mate-cache, slower but less '
  type: string
  inputBinding:
    position: 2
- id: in_written
  doc: '--disable-multithreading         disable multithreading '
  type: string
  inputBinding:
    position: 0
- id: in_quit_dot
  doc: '-L|--log-level <level>           Logging level as number or enum string. One '
  type: string
  inputBinding:
    position: 1
- id: in_file_dot
  doc: 'sam-dump-orig : 2.10.9'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "print output into this file (instead of\nSTDOUT)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0
cwlVersion: v1.1
baseCommand:
- sam-dump-orig
