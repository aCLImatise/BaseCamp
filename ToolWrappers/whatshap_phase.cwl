class: CommandLineTool
id: whatshap_phase.cwl
inputs:
- id: in_output
  doc: "Output VCF file. Add .gz to the file name to get\ncompressed output. If omitted,\
    \ use standard output."
  type: File
  inputBinding:
    prefix: --output
- id: in_reference
  doc: "Reference file. Provide this to detect alleles through\nre-alignment. If no\
    \ index (.fai) exists, it will be\ncreated"
  type: File
  inputBinding:
    prefix: --reference
- id: in_no_reference
  doc: "Detect alleles without requiring a reference, at the\nexpense of phasing quality\
    \ (in particular for long\nreads)"
  type: boolean
  inputBinding:
    prefix: --no-reference
- id: in_tag
  doc: "Store phasing information with PS tag (standardized)\nor HP tag (used by GATK\
    \ ReadBackedPhasing) (default:\nPS)"
  type: string
  inputBinding:
    prefix: --tag
- id: in_output_read_list
  doc: Write reads that have been used for phasing to FILE.
  type: File
  inputBinding:
    prefix: --output-read-list
- id: in_algorithm
  doc: 'Phasing algorithm to use (default: whatshap)'
  type: string
  inputBinding:
    prefix: --algorithm
- id: in_merge_reads
  doc: "Merge reads which are likely to come from the same\nhaplotype (default: do\
    \ not merge reads)"
  type: boolean
  inputBinding:
    prefix: --merge-reads
- id: in_internal_downsampling
  doc: "Coverage reduction parameter in the internal core\nphasing algorithm. Higher\
    \ values increase runtime\n*exponentially* while possibly improving phasing\n\
    quality marginally. Avoid using this in the normal\ncase! (default: 15)"
  type: long
  inputBinding:
    prefix: --internal-downsampling
- id: in_mapping_quality
  doc: 'Minimum mapping quality (default: 20)'
  type: long
  inputBinding:
    prefix: --mapping-quality
- id: in_indels
  doc: 'Also phase indels (default: do not phase indels)'
  type: boolean
  inputBinding:
    prefix: --indels
- id: in_ignore_read_groups
  doc: "Ignore read groups in BAM/CRAM header and assume all\nreads come from the\
    \ same sample."
  type: boolean
  inputBinding:
    prefix: --ignore-read-groups
- id: in_sample
  doc: "Name of a sample to phase. If not given, all samples\nin the input VCF are\
    \ phased. Can be used multiple\ntimes."
  type: string
  inputBinding:
    prefix: --sample
- id: in_chromosome
  doc: "Name of chromosome to phase. If not given, all\nchromosomes in the input VCF\
    \ are phased. Can be used\nmultiple times."
  type: string
  inputBinding:
    prefix: --chromosome
- id: in_error_rate
  doc: "The probability that a nucleotide is wrong in read\nmerging model (default:\
    \ 0.15)."
  type: double
  inputBinding:
    prefix: --error-rate
- id: in_maximum_error_rate
  doc: "The maximum error rate of any edge of the read merging\ngraph before discarding\
    \ it (default: 0.25)."
  type: long
  inputBinding:
    prefix: --maximum-error-rate
- id: in_threshold
  doc: "The threshold of the ratio between the probabilities\nthat a pair of reads\
    \ come from the same haplotype and\ndifferent haplotypes in the read merging model\n\
    (default: 1000000)."
  type: long
  inputBinding:
    prefix: --threshold
- id: in_negative_threshold
  doc: "The threshold of the ratio between the probabilities\nthat a pair of reads\
    \ come from different haplotypes\nand the same haplotype in the read merging model\n\
    (default: 1000)."
  type: long
  inputBinding:
    prefix: --negative-threshold
- id: in_full_genotyping
  doc: "Completely re-genotype all variants based on read\ndata, ignores all genotype\
    \ data that might be present\nin the VCF (EXPERIMENTAL FEATURE)."
  type: boolean
  inputBinding:
    prefix: --full-genotyping
- id: in_distrust_genotypes
  doc: "Allow switching variants from hetero- to homozygous in\nan optimal solution\
    \ (see documentation)."
  type: boolean
  inputBinding:
    prefix: --distrust-genotypes
- id: in_include_homozygous
  doc: "Also work on homozygous variants, which might be\nturned to heterozygous"
  type: boolean
  inputBinding:
    prefix: --include-homozygous
- id: in_default_gq
  doc: "Default genotype quality used as cost of changing a\ngenotype when no genotype\
    \ likelihoods are available\n(default 30)"
  type: long
  inputBinding:
    prefix: --default-gq
- id: in_gl_regularize_r
  doc: "Constant (float) to be used to regularize genotype\nlikelihoods read from\
    \ input VCF (default None)."
  type: double
  inputBinding:
    prefix: --gl-regularizer
- id: in_changed_genotype_list
  doc: Write list of changed genotypes to FILE.
  type: File
  inputBinding:
    prefix: --changed-genotype-list
- id: in_ped
  doc: "Use pedigree information in PED file to improve\nphasing (switches to PedMEC\
    \ algorithm). Columns 2, 3,\n4 must refer to child, mother, and father sample\
    \ names\nas used in the VCF and BAM/CRAM. Other columns are\nignored."
  type: File
  inputBinding:
    prefix: --ped
- id: in_recombination_list
  doc: Write putative recombination events to FILE.
  type: File
  inputBinding:
    prefix: --recombination-list
- id: in_recomb_rate
  doc: "Recombination rate in cM/Mb (used with --ped). If\ngiven, a constant recombination\
    \ rate is assumed\n(default: 1.26cM/Mb)."
  type: double
  inputBinding:
    prefix: --recombrate
- id: in_gen_map
  doc: "File with genetic map (used with --ped) to be used\ninstead of constant recombination\
    \ rate, i.e. overrides\noption --recombrate."
  type: File
  inputBinding:
    prefix: --genmap
- id: in_no_genetic_haplo_typing
  doc: "Do not merge blocks that are not connected by reads\n(i.e. solely based on\
    \ genotype status). Default: when\nin --ped mode, merge all blocks that contain\
    \ at least\none homozygous genotype in at least one individual\ninto one block."
  type: boolean
  inputBinding:
    prefix: --no-genetic-haplotyping
- id: in_use_ped_samples
  doc: "Only work on samples mentioned in the provided PED\nfile.\n"
  type: boolean
  inputBinding:
    prefix: --use-ped-samples
- id: in_vcf
  doc: "VCF or BCF file with variants to be phased (can be\ngzip-compressed)"
  type: string
  inputBinding:
    position: 0
- id: in_phase_input
  doc: "BAM, CRAM, VCF or BCF file(s) with phase information,\neither through sequencing\
    \ reads (BAM, CRAM) or through\nphased blocks (VCF, BCF)"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output VCF file. Add .gz to the file name to get\ncompressed output. If omitted,\
    \ use standard output."
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- whatshap
- phase
