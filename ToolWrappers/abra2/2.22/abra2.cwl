class: CommandLineTool
id: abra2.cwl
inputs:
- id: in_am_q
  doc: "Set mapq for alignments that map\nequally well to reference and an\nABRA generated\
    \ contig.  default of\n-1 disables (default: -1)"
  type: long?
  inputBinding:
    prefix: --amq
- id: in_ca
  doc: "Contig anchor [M_bases_at_contig_edge,\nmax_mismatches_near_edge] (default:\n\
    10,2)"
  type: boolean?
  inputBinding:
    prefix: --ca
- id: in_cl
  doc: "Compression level of output bam file\n(s) (default: 5)"
  type: File?
  inputBinding:
    prefix: --cl
- id: in_cons
  doc: "Use positional consensus sequence when\naligning high quality soft clipping"
  type: boolean?
  inputBinding:
    prefix: --cons
- id: in_contigs
  doc: "Optional file to which assembled\ncontigs are written"
  type: boolean?
  inputBinding:
    prefix: --contigs
- id: in_dist
  doc: 'Max read move distance (default: 1000)'
  type: long?
  inputBinding:
    prefix: --dist
- id: in_gc
  doc: "If specified, only reprocess regions\nthat contain at least one contig\ncontaining\
    \ an indel or splice\n(experimental)"
  type: boolean?
  inputBinding:
    prefix: --gc
- id: in_gkl
  doc: "If specified, use the GKL Intel\nDeflater."
  type: boolean?
  inputBinding:
    prefix: --gkl
- id: in_gtf
  doc: GTF file defining exons and transcripts
  type: boolean?
  inputBinding:
    prefix: --gtf
- id: in_in
  doc: "Required list of input sam or bam file\n(s) separated by comma"
  type: boolean?
  inputBinding:
    prefix: --in
- id: in_in_vcf
  doc: "VCF containing known (or suspected)\nvariant sites.  Very large files\nshould\
    \ be avoided."
  type: boolean?
  inputBinding:
    prefix: --in-vcf
- id: in_index
  doc: "Enable BAM index generation when\noutputting sorted alignments (may\nrequire\
    \ additonal memory)"
  type: boolean?
  inputBinding:
    prefix: --index
- id: in_junctions
  doc: Splice junctions definition file
  type: boolean?
  inputBinding:
    prefix: --junctions
- id: in_keep_tmp
  doc: Do not delete the temporary directory
  type: boolean?
  inputBinding:
    prefix: --keep-tmp
- id: in_km_er
  doc: "Optional assembly kmer size(delimit\nwith commas if multiple sizes\nspecified)"
  type: boolean?
  inputBinding:
    prefix: --kmer
- id: in_log
  doc: "Logging level (trace,debug,info,warn,\nerror) (default: info)"
  type: boolean?
  inputBinding:
    prefix: --log
- id: in_mac
  doc: 'Max assembled contigs (default: 64)'
  type: long?
  inputBinding:
    prefix: --mac
- id: in_mad
  doc: "Regions with average depth exceeding\nthis value will be downsampled\n(default:\
    \ 1000)"
  type: long?
  inputBinding:
    prefix: --mad
- id: in_mapq
  doc: "[Integer]                        Minimum mapping quality for a read to\nbe\
    \ used in assembly and be eligible\nfor realignment (default: 20)"
  type: boolean?
  inputBinding:
    prefix: --mapq
- id: in_max_n
  doc: "[Integer]                        Maximum pre-pruned nodes in regional\nassembly\
    \ (default: 150000)"
  type: boolean?
  inputBinding:
    prefix: --maxn
- id: in_mbq
  doc: "[Integer]                         Minimum base quality for inclusion in\n\
    assembly.  This value is compared\nagainst the sum of base qualities\nper kmer\
    \ position (default: 20)"
  type: boolean?
  inputBinding:
    prefix: --mbq
- id: in_mcl
  doc: "[Integer]                         Assembly minimum contig length\n(default:\
    \ -1)"
  type: boolean?
  inputBinding:
    prefix: --mcl
- id: in_mcr
  doc: "Max number of cached reads per sample\nper thread (default: 1000000)"
  type: long?
  inputBinding:
    prefix: --mcr
- id: in_mer
  doc: "Min edge pruning ratio.  Default value\nis appropriate for relatively\nsensitive\
    \ somatic cases.  May be\nincreased for improved speed in\ngermline only cases.\
    \ (default: 0.01)"
  type: long?
  inputBinding:
    prefix: --mer
- id: in_mmr
  doc: "Max allowed mismatch rate when mapping\nreads back to contigs (default: 0.05)"
  type: long?
  inputBinding:
    prefix: --mmr
- id: in_mnf
  doc: "Assembly minimum node frequency\n(default: 1)"
  type: long?
  inputBinding:
    prefix: --mnf
- id: in_mrn
  doc: "Reads with noise score exceeding this\nvalue are not remapped.\nnumMismatches+(numIndels*2)\
    \ <\nreadLength*mnr (default: 0.1)"
  type: double?
  inputBinding:
    prefix: --mrn
- id: in_mrr
  doc: "Regions containing more reads than\nthis value are not processed.  Use\n-1\
    \ to disable. (default: 1000000)"
  type: long?
  inputBinding:
    prefix: --mrr
- id: in_msr
  doc: "Max reads to keep in memory per sample\nduring the sort phase.  When this\n\
    value is exceeded, sort spills to\ndisk (default: 1000000)"
  type: long?
  inputBinding:
    prefix: --msr
- id: in_no_edge_ci
  doc: "If specified, do not update alignments\nfor reads that have a complex indel\n\
    at the read edge.  i.e. Do not allow\nalignments like: 90M10D10I"
  type: boolean?
  inputBinding:
    prefix: --no-edge-ci
- id: in_no_ndn
  doc: "If specified, do not allow adjacent N-\nD-N cigar elements"
  type: boolean?
  inputBinding:
    prefix: --no-ndn
- id: in_no_sort
  doc: Do not attempt to sort final output
  type: boolean?
  inputBinding:
    prefix: --nosort
- id: in_out
  doc: "Required list of output sam or bam file\n(s) separated by comma"
  type: File?
  inputBinding:
    prefix: --out
- id: in_rcf
  doc: "Minimum read candidate fraction for\ntriggering assembly (default: 0.01)"
  type: double?
  inputBinding:
    prefix: --rcf
- id: in_ref
  doc: Genome reference location
  type: boolean?
  inputBinding:
    prefix: --ref
- id: in_sa
  doc: Skip assembly
  type: boolean?
  inputBinding:
    prefix: --sa
- id: in_sc
  doc: "Soft clip contig args [max_contigs,\nmin_base_qual,frac_high_qual_bases,\n\
    min_soft_clip_len] (default:\n16,13,80,15)"
  type: boolean?
  inputBinding:
    prefix: --sc
- id: in_sga
  doc: "Scoring used for contig alignments\n(match, mismatch_penalty,\ngap_open_penalty,\n\
    gap_extend_penalty) (default:\n8,32,48,1)"
  type: boolean?
  inputBinding:
    prefix: --sga
- id: in_single
  doc: Input is single end
  type: boolean?
  inputBinding:
    prefix: --single
- id: in_skip
  doc: "If no target specified, skip\nrealignment of chromosomes matching\nspecified\
    \ regex.  Skipped reads are\noutput without modification.\nSpecify none to disable.\
    \ (default:\nGL.*|hs37d5|chr.*random|chrUn.\n*|chrEBV|CMV|HBV|HCV.*|HIV.\n*|KSHV|HTLV.*|MCV|SV40|HPV.*)"
  type: boolean?
  inputBinding:
    prefix: --skip
- id: in_sobs
  doc: "Do not use observed indels in original\nalignments to generate contigs"
  type: boolean?
  inputBinding:
    prefix: --sobs
- id: in_ssc
  doc: "Skip usage of soft clipped sequences\nas putative contigs"
  type: boolean?
  inputBinding:
    prefix: --ssc
- id: in_sua
  doc: "Do not use unmapped reads anchored by\nmate to trigger assembly.  These\n\
    reads are still eligible to\ncontribute to assembly"
  type: boolean?
  inputBinding:
    prefix: --sua
- id: in_target_km_ers
  doc: "BED-like file containing target\nregions with per region kmer sizes\nin 4th\
    \ column"
  type: boolean?
  inputBinding:
    prefix: --target-kmers
- id: in_targets
  doc: BED file containing target regions
  type: boolean?
  inputBinding:
    prefix: --targets
- id: in_threads
  doc: 'Number of threads (default: 4)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_tmpdir
  doc: "Set the temp directory (overrides java.\nio.tmpdir)"
  type: boolean?
  inputBinding:
    prefix: --tmpdir
- id: in_u_jac
  doc: "If specified, use junction permuations\nas contigs (Experimental - may use\n\
    excessive memory and compute times)"
  type: boolean?
  inputBinding:
    prefix: --ujac
- id: in_und_up
  doc: Unset duplicate flag
  type: boolean?
  inputBinding:
    prefix: --undup
- id: in_ws
  doc: "Processing window size and overlap\n(size,overlap) (default: 400,200)"
  type: boolean?
  inputBinding:
    prefix: --ws
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_cl
  doc: "Compression level of output bam file\n(s) (default: 5)"
  type: File?
  outputBinding:
    glob: $(inputs.in_cl)
- id: out_out
  doc: "Required list of output sam or bam file\n(s) separated by comma"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- abra2
