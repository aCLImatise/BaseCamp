class: CommandLineTool
id: bcftools_mpileup.cwl
inputs:
- id: in_illumina_one_dot_three
  doc: +      quality is in the Illumina-1.3+ encoding
  type: boolean?
  inputBinding:
    prefix: --illumina1.3
- id: in_count_orphans
  doc: do not discard anomalous read pairs
  type: boolean?
  inputBinding:
    prefix: --count-orphans
- id: in_bam_list
  doc: list of input BAM filenames, one per line
  type: File?
  inputBinding:
    prefix: --bam-list
- id: in_no_baq
  doc: disable BAQ (per-Base Alignment Quality)
  type: boolean?
  inputBinding:
    prefix: --no-BAQ
- id: in_adjust_mq
  doc: adjust mapping quality [0]
  type: long?
  inputBinding:
    prefix: --adjust-MQ
- id: in_max_depth
  doc: max raw per-file depth; avoids excessive memory usage [250]
  type: long?
  inputBinding:
    prefix: --max-depth
- id: in_redo_baq
  doc: recalculate BAQ on the fly, ignore existing BQs
  type: boolean?
  inputBinding:
    prefix: --redo-BAQ
- id: in_fast_a_ref
  doc: faidx indexed reference sequence file
  type: File?
  inputBinding:
    prefix: --fasta-ref
- id: in_no_reference
  doc: do not require fasta reference file
  type: boolean?
  inputBinding:
    prefix: --no-reference
- id: in_read_groups
  doc: select or exclude read groups listed in the file
  type: File?
  inputBinding:
    prefix: --read-groups
- id: in_min_mq
  doc: skip alignments with mapQ smaller than INT [0]
  type: long?
  inputBinding:
    prefix: --min-MQ
- id: in_min_bq
  doc: skip bases with baseQ/BAQ smaller than INT [13]
  type: long?
  inputBinding:
    prefix: --min-BQ
- id: in_regions
  doc: '[,...] comma separated list of regions in which pileup is generated'
  type: string?
  inputBinding:
    prefix: --regions
- id: in_regions_file
  doc: restrict to regions listed in a file
  type: File?
  inputBinding:
    prefix: --regions-file
- id: in_ignore_rg
  doc: ignore RG tags (one BAM = one sample)
  type: boolean?
  inputBinding:
    prefix: --ignore-RG
- id: in_incl_flags
  doc: '|INT  required flags: skip reads with mask bits unset []'
  type: long?
  inputBinding:
    prefix: --incl-flags
- id: in_excl_flags
  doc: "|INT  filter flags: skip reads with mask bits set\n[UNMAP,SECONDARY,QCFAIL,DUP]"
  type: long?
  inputBinding:
    prefix: --excl-flags
- id: in_samples
  doc: comma separated list of samples to include
  type: string?
  inputBinding:
    prefix: --samples
- id: in_samples_file
  doc: file of samples to include
  type: File?
  inputBinding:
    prefix: --samples-file
- id: in_targets
  doc: '[,...] similar to -r but streams rather than index-jumps'
  type: string?
  inputBinding:
    prefix: --targets
- id: in_targets_file
  doc: similar to -R but streams rather than index-jumps
  type: File?
  inputBinding:
    prefix: --targets-file
- id: in_ignore_overlaps
  doc: disable read-pair overlap detection
  type: boolean?
  inputBinding:
    prefix: --ignore-overlaps
- id: in_annotate
  doc: optional tags to output; '?' to list available tags []
  type: string?
  inputBinding:
    prefix: --annotate
- id: in_gvc_f
  doc: "[,...]    group non-variant sites into gVCF blocks according\nto minimum per-sample\
    \ DP"
  type: long?
  inputBinding:
    prefix: --gvcf
- id: in_no_version
  doc: do not append version and command line to the header
  type: boolean?
  inputBinding:
    prefix: --no-version
- id: in_output
  doc: write output to FILE [standard output]
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_type
  doc: "'b' compressed BCF; 'u' uncompressed BCF;\n'z' compressed VCF; 'v' uncompressed\
    \ VCF [v]"
  type: string?
  inputBinding:
    prefix: --output-type
- id: in_threads
  doc: use multithreading with INT worker threads [0]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_ext_prob
  doc: Phred-scaled gap extension seq error probability [20]
  type: long?
  inputBinding:
    prefix: --ext-prob
- id: in_gap_frac
  doc: minimum fraction of gapped reads [0.002]
  type: double?
  inputBinding:
    prefix: --gap-frac
- id: in_tandem_qual
  doc: coefficient for homopolymer errors [100]
  type: long?
  inputBinding:
    prefix: --tandem-qual
- id: in_skip_indels
  doc: do not perform indel calling
  type: boolean?
  inputBinding:
    prefix: --skip-indels
- id: in_max_i_depth
  doc: maximum per-file depth for INDEL calling [250]
  type: long?
  inputBinding:
    prefix: --max-idepth
- id: in_min_i_reads
  doc: minimum number gapped reads for indel candidates [1]
  type: long?
  inputBinding:
    prefix: --min-ireads
- id: in_open_prob
  doc: Phred-scaled gap open seq error probability [40]
  type: long?
  inputBinding:
    prefix: --open-prob
- id: in_per_sample_mf
  doc: apply -m and -F per-sample for increased sensitivity
  type: boolean?
  inputBinding:
    prefix: --per-sample-mF
- id: in_platforms
  doc: comma separated list of platforms for indels [all]
  type: string?
  inputBinding:
    prefix: --platforms
- id: in_in_one_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: write output to FILE [standard output]
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bcftools:1.12--h3f113a9_0
cwlVersion: v1.1
baseCommand:
- bcftools
- mpileup
