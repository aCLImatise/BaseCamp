class: CommandLineTool
id: bcftools_mpileup.cwl
inputs:
- id: count_orphans
  doc: do not discard anomalous read pairs
  type: boolean
  inputBinding:
    prefix: --count-orphans
- id: bam_list
  doc: list of input BAM filenames, one per line
  type: File
  inputBinding:
    prefix: --bam-list
- id: no_baq
  doc: disable BAQ (per-Base Alignment Quality)
  type: boolean
  inputBinding:
    prefix: --no-BAQ
- id: adjust_mq
  doc: adjust mapping quality; recommended:50, disable:0 [0]
  type: long
  inputBinding:
    prefix: --adjust-MQ
- id: max_depth
  doc: max raw per-file depth; avoids excessive memory usage [250]
  type: long
  inputBinding:
    prefix: --max-depth
- id: redo_baq
  doc: recalculate BAQ on the fly, ignore existing BQs
  type: boolean
  inputBinding:
    prefix: --redo-BAQ
- id: fast_a_ref
  doc: faidx indexed reference sequence file
  type: File
  inputBinding:
    prefix: --fasta-ref
- id: no_reference
  doc: do not require fasta reference file
  type: boolean
  inputBinding:
    prefix: --no-reference
- id: read_groups
  doc: select or exclude read groups listed in the file
  type: File
  inputBinding:
    prefix: --read-groups
- id: min_mq
  doc: skip alignments with mapQ smaller than INT [0]
  type: long
  inputBinding:
    prefix: --min-MQ
- id: min_bq
  doc: skip bases with baseQ/BAQ smaller than INT [13]
  type: long
  inputBinding:
    prefix: --min-BQ
- id: regions
  doc: '[,...] comma separated list of regions in which pileup is generated'
  type: string
  inputBinding:
    prefix: --regions
- id: regions_file
  doc: restrict to regions listed in a file
  type: File
  inputBinding:
    prefix: --regions-file
- id: ignore_rg
  doc: ignore RG tags (one BAM = one sample)
  type: boolean
  inputBinding:
    prefix: --ignore-RG
- id: incl_flags
  doc: '|INT  required flags: skip reads with mask bits unset []'
  type: string
  inputBinding:
    prefix: --incl-flags
- id: excl_flags
  doc: '|INT  filter flags: skip reads with mask bits set [UNMAP,SECONDARY,QCFAIL,DUP]'
  type: string
  inputBinding:
    prefix: --excl-flags
- id: samples
  doc: comma separated list of samples to include
  type: string
  inputBinding:
    prefix: --samples
- id: samples_file
  doc: file of samples to include
  type: File
  inputBinding:
    prefix: --samples-file
- id: targets
  doc: '[,...] similar to -r but streams rather than index-jumps'
  type: string
  inputBinding:
    prefix: --targets
- id: targets_file
  doc: similar to -R but streams rather than index-jumps
  type: File
  inputBinding:
    prefix: --targets-file
- id: ignore_overlaps
  doc: disable read-pair overlap detection
  type: boolean
  inputBinding:
    prefix: --ignore-overlaps
- id: annotate
  doc: optional tags to output; '?' to list []
  type: string
  inputBinding:
    prefix: --annotate
- id: gvc_f
  doc: '[,...]    group non-variant sites into gVCF blocks according to minimum per-sample
    DP'
  type: long
  inputBinding:
    prefix: --gvcf
- id: no_version
  doc: do not append version and command line to the header
  type: boolean
  inputBinding:
    prefix: --no-version
- id: output
  doc: write output to FILE [standard output]
  type: File
  inputBinding:
    prefix: --output
- id: output_type
  doc: "'b' compressed BCF; 'u' uncompressed BCF; 'z' compressed VCF; 'v' uncompressed\
    \ VCF [v]"
  type: string
  inputBinding:
    prefix: --output-type
- id: threads
  doc: use multithreading with INT worker threads [0]
  type: long
  inputBinding:
    prefix: --threads
- id: ext_prob
  doc: Phred-scaled gap extension seq error probability [20]
  type: long
  inputBinding:
    prefix: --ext-prob
- id: gap_frac
  doc: minimum fraction of gapped reads [0.002]
  type: double
  inputBinding:
    prefix: --gap-frac
- id: tandem_qual
  doc: coefficient for homopolymer errors [100]
  type: long
  inputBinding:
    prefix: --tandem-qual
- id: skip_indels
  doc: do not perform indel calling
  type: boolean
  inputBinding:
    prefix: --skip-indels
- id: max_i_depth
  doc: maximum per-file depth for INDEL calling [250]
  type: long
  inputBinding:
    prefix: --max-idepth
- id: min_i_reads
  doc: minimum number gapped reads for indel candidates [1]
  type: long
  inputBinding:
    prefix: --min-ireads
- id: open_prob
  doc: Phred-scaled gap open seq error probability [40]
  type: long
  inputBinding:
    prefix: --open-prob
- id: per_sample_mf
  doc: apply -m and -F per-sample for increased sensitivity
  type: boolean
  inputBinding:
    prefix: --per-sample-mF
- id: platforms
  doc: comma separated list of platforms for indels [all]
  type: string
  inputBinding:
    prefix: --platforms
outputs: []
cwlVersion: v1.1
baseCommand:
- bcftools
- mpileup
