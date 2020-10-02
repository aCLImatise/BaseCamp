class: CommandLineTool
id: jgi_summarize_bam_contig_depths.cwl
inputs:
- id: in_output_depth
  doc: 'arg  The file to put the contig by bam depth matrix (default: STDOUT)'
  type: boolean
  inputBinding:
    prefix: --outputDepth
- id: in_percent_identity
  doc: 'arg  The minimum end-to-end % identity of qualifying reads (default: 97)'
  type: boolean
  inputBinding:
    prefix: --percentIdentity
- id: in_paired_contigs
  doc: 'arg  The file to output the sparse matrix of contigs which paired reads span
    (default: none)'
  type: File
  inputBinding:
    prefix: --pairedContigs
- id: in_unmapped_fast_q
  doc: arg  The prefix to output unmapped reads from each bam file suffixed by 'bamfile.bam.fastq.gz'
  type: File
  inputBinding:
    prefix: --unmappedFastq
- id: in_no_intra_depth_variance
  doc: Do not include variance from mean depth along the contig
  type: boolean
  inputBinding:
    prefix: --noIntraDepthVariance
- id: in_show_depth
  doc: Output a .depth file per bam for each contig base
  type: File
  inputBinding:
    prefix: --showDepth
- id: in_min_map_qual
  doc: 'arg  The minimum mapping quality necessary to count the read as mapped (default:
    0)'
  type: boolean
  inputBinding:
    prefix: --minMapQual
- id: in_weight_map_qual
  doc: 'arg  Weight per-base depth based on the MQ of the read (i.e uniqueness) (default:
    0.0 (disabled))'
  type: boolean
  inputBinding:
    prefix: --weightMapQual
- id: in_include_edge_bases
  doc: When calculating depth & variance, include the 1-readlength edges (off by default)
  type: boolean
  inputBinding:
    prefix: --includeEdgeBases
- id: in_max_edge_bases
  doc: When calculating depth & variance, and not --includeEdgeBases, the maximum
    length (default:75)
  type: boolean
  inputBinding:
    prefix: --maxEdgeBases
- id: in_reference_fast_a
  doc: arg  The reference file.  (It must be the same fasta that bams used)
  type: boolean
  inputBinding:
    prefix: --referenceFasta
- id: in_output_gc
  doc: arg  The file to print the gc coverage histogram
  type: boolean
  inputBinding:
    prefix: --outputGC
- id: in_gc_window
  doc: arg  The sliding window size for GC calculations
  type: boolean
  inputBinding:
    prefix: --gcWindow
- id: in_output_read_stats
  doc: arg  The file to print the per read statistics
  type: boolean
  inputBinding:
    prefix: --outputReadStats
- id: in_output_km_ers
  doc: arg  The file to print the perfect kmer counts
  type: boolean
  inputBinding:
    prefix: --outputKmers
- id: in_shred_length
  doc: arg  The maximum length of the shreds
  type: boolean
  inputBinding:
    prefix: --shredLength
- id: in_shred_depth
  doc: arg  The depth to generate overlapping shreds
  type: boolean
  inputBinding:
    prefix: --shredDepth
- id: in_min_contig_length
  doc: arg  The mimimum length of contig to include for mapping and shredding
  type: boolean
  inputBinding:
    prefix: --minContigLength
- id: in_min_contig_depth
  doc: arg  The minimum depth along contig at which to break the contig
  type: boolean
  inputBinding:
    prefix: --minContigDepth
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_sorted_bam_one
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_sorted_bam_two
  doc: ''
  type: long
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_paired_contigs
  doc: 'arg  The file to output the sparse matrix of contigs which paired reads span
    (default: none)'
  type: File
  outputBinding:
    glob: $(inputs.in_paired_contigs)
- id: out_unmapped_fast_q
  doc: arg  The prefix to output unmapped reads from each bam file suffixed by 'bamfile.bam.fastq.gz'
  type: File
  outputBinding:
    glob: $(inputs.in_unmapped_fast_q)
- id: out_show_depth
  doc: Output a .depth file per bam for each contig base
  type: File
  outputBinding:
    glob: $(inputs.in_show_depth)
cwlVersion: v1.1
baseCommand:
- jgi_summarize_bam_contig_depths
