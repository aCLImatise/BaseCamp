class: CommandLineTool
id: nanopolish_variants.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_snps
  doc: only call SNPs
  type: boolean
  inputBinding:
    prefix: --snps
- id: in_consensus
  doc: run in consensus calling mode
  type: boolean
  inputBinding:
    prefix: --consensus
- id: in_fix_homopolymers
  doc: run the experimental homopolymer caller
  type: boolean
  inputBinding:
    prefix: --fix-homopolymers
- id: in_faster
  doc: minimize compute time while slightly reducing consensus accuracy
  type: boolean
  inputBinding:
    prefix: --faster
- id: in_window
  doc: 'find variants in window STR (format: <chromsome_name>:<start>-<end>)'
  type: string
  inputBinding:
    prefix: --window
- id: in_reads
  doc: the ONT reads are in fasta FILE
  type: File
  inputBinding:
    prefix: --reads
- id: in_bam
  doc: the reads aligned to the reference genome are in bam FILE
  type: File
  inputBinding:
    prefix: --bam
- id: in_event_bam
  doc: the events aligned to the reference genome are in bam FILE
  type: File
  inputBinding:
    prefix: --event-bam
- id: in_genome
  doc: the reference genome is in FILE
  type: File
  inputBinding:
    prefix: --genome
- id: in_ploidy
  doc: the ploidy level of the sequenced genome
  type: long
  inputBinding:
    prefix: --ploidy
- id: in_methylation_aware
  doc: 'turn on methylation aware polishing and test motifs given in STR (example:
    -q dcm,dam)'
  type: string
  inputBinding:
    prefix: --methylation-aware
- id: in_genotype
  doc: call genotypes for the variants in the vcf FILE
  type: File
  inputBinding:
    prefix: --genotype
- id: in_outfile
  doc: 'write result to FILE [default: stdout]'
  type: File
  inputBinding:
    prefix: --outfile
- id: in_threads
  doc: 'use NUM threads (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_min_candidate_frequency
  doc: extract candidate variants from the aligned reads when the variant frequency
    is at least F (default 0.2)
  type: long
  inputBinding:
    prefix: --min-candidate-frequency
- id: in_in_del_bias
  doc: "bias HMM transition parameters to favor insertions (F<1) or deletions (F>1).\n\
    this value is automatically set depending on --consensus, but can be manually\
    \ set if spurious indels are called"
  type: long
  inputBinding:
    prefix: --indel-bias
- id: in_min_candidate_depth
  doc: 'extract candidate variants from the aligned reads when the depth is at least
    D (default: 20)'
  type: long
  inputBinding:
    prefix: --min-candidate-depth
- id: in_max_haplotypes
  doc: 'consider at most N haplotype combinations (default: 1000)'
  type: long
  inputBinding:
    prefix: --max-haplotypes
- id: in_min_flanking_sequence
  doc: 'distance from alignment end to calculate variants (default: 30)'
  type: long
  inputBinding:
    prefix: --min-flanking-sequence
- id: in_max_rounds
  doc: 'perform N rounds of consensus sequence improvement (default: 50)'
  type: long
  inputBinding:
    prefix: --max-rounds
- id: in_candidates
  doc: read variant candidates from VCF, rather than discovering them from aligned
    reads
  type: string
  inputBinding:
    prefix: --candidates
- id: in_read_group
  doc: only use alignments with read group tag RG
  type: string
  inputBinding:
    prefix: --read-group
- id: in_alternative_base_calls_bam
  doc: "if an alternative basecaller was used that does not output event annotations\n\
    then use basecalled sequences from FILE. The signal-level events will still be\
    \ taken from the -b bam."
  type: File
  inputBinding:
    prefix: --alternative-basecalls-bam
- id: in_calculate_all_support
  doc: when making a call, also calculate the support of the 3 other possible bases
  type: boolean
  inputBinding:
    prefix: --calculate-all-support
- id: in_models_fof_n
  doc: read alternative k-mer models from FILE
  type: File
  inputBinding:
    prefix: --models-fofn
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_alternative_base_calls_bam
  doc: "if an alternative basecaller was used that does not output event annotations\n\
    then use basecalled sequences from FILE. The signal-level events will still be\
    \ taken from the -b bam."
  type: File
  outputBinding:
    glob: $(inputs.in_alternative_base_calls_bam)
cwlVersion: v1.1
baseCommand:
- nanopolish
- variants
