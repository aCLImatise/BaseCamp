class: CommandLineTool
id: duplomap.cwl
inputs:
- id: in_input
  doc: Input reads in the sorted and indexed bam format.
  type: File?
  inputBinding:
    prefix: --input
- id: in_database
  doc: <FILE|DIR+>                        Database file or directory (multiple entries
    allowed).
  type: boolean?
  inputBinding:
    prefix: --database
- id: in_reference
  doc: Reference genome in the indexed fasta format.
  type: File?
  inputBinding:
    prefix: --reference
- id: in_output
  doc: Output directory.
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_threads
  doc: 'Number of threads to use. [default: 4]'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_force
  doc: Force work with non-empty output directory.
  type: Directory?
  inputBinding:
    prefix: --force
- id: in_continue
  doc: "Continue duplomap run in the same output directory. In that case duplomap\
    \ will skip already analyzed\nduplications clusters (be careful to use the same\
    \ command line arguments)."
  type: Directory?
  inputBinding:
    prefix: --continue
- id: in_iterations
  doc: 'Maximum number of iterations of EM-algorithm. [default: 100]'
  type: long?
  inputBinding:
    prefix: --iterations
- id: in_log
  doc: "Logging level in log files (stderr shows logs with info level and higher).\
    \ [default: debug]  [possible\nvalues: trace, debug, info, warning, error, critical,\
    \ none]"
  type: string?
  inputBinding:
    prefix: --log
- id: in_sam_tools
  doc: 'Path to Samtools executable. [default: samtools]'
  type: File?
  inputBinding:
    prefix: --samtools
- id: in_minimap_km_er
  doc: 'Minimap2 k-mer size. [default: 11]'
  type: long?
  inputBinding:
    prefix: --minimap-kmer
- id: in_preset
  doc: "Minimap2 alignment preset. Possible values: pacbio [pb] and nanopore [ont]\
    \ [default: pacbio]  [possible\nvalues: pacbio, pb, nanopore, ont]"
  type: long?
  inputBinding:
    prefix: --preset
- id: in_gt_prior
  doc: 'Reference genotype prior. [default: 0.95]'
  type: double?
  inputBinding:
    prefix: --gt-prior
- id: in_relative_padding
  doc: "Padding added to the sides of possible read locations. For example, for a\
    \ read with with length 3,000 and\nrelative-padding 0.01, possible locations would\
    \ be padded by 30 bp on both sides. [default: 0.01]"
  type: double?
  inputBinding:
    prefix: --relative-padding
- id: in_psv_complexity
  doc: "<FLOAT>\nKeep PSVs that have complexity higher than FLOAT[1] for substitutions\
    \ (0.6 by default), and FLOAT[2] for\nindels (0.8 by default)."
  type: double?
  inputBinding:
    prefix: --psv-complexity
- id: in_psv_size_diff
  doc: "Maximal difference in sizes of the PSV sequences (including anchors). PSVs\
    \ with bigger difference are not\nused, but influence pre-PSV LCS comparison.\
    \ [default: 10]"
  type: long?
  inputBinding:
    prefix: --psv-size-diff
- id: in_gt_min_mapq
  doc: 'Do not use reads with MAPQ lower than INT to determine genotype probabilities.
    [default: 30]'
  type: long?
  inputBinding:
    prefix: --gt-min-mapq
- id: in_read_psv_impact
  doc: "Maximal read-PSV impact. A single read cannot decrease genotype probability\
    \ of a PSV by more than 10^FLOAT,\nand a single PSV cannot affect location probabilities\
    \ by more than 10^FLOAT. [default: 3]"
  type: double?
  inputBinding:
    prefix: --read-psv-impact
- id: in_ambiguous
  doc: "<FLOAT>\nA read is aligned to a PSV ambiguously if local alignment probabilities\
    \ between the read and the PSV alleles\nare within FLOAT[1]-fold range (max(probabilities)\
    \ < min(probabilities) * FLOAT[1]). If the PSV has more\nthan FLOAT[2] percent\
    \ ambiguously aligned reads, it is not used.\n[default: 4 30]"
  type: double?
  inputBinding:
    prefix: --ambiguous
- id: in_copy_num_perc
  doc: "Do not realign reads that overlap high copy number regions by more than FLOAT\
    \ %. High copy number regions\nare defined in duplomap-prepare with --skip-copy-num.\
    \ [default: 50]"
  type: double?
  inputBinding:
    prefix: --copy-num-perc
- id: in_unknown_regions
  doc: "How to process reads that overlap unknown regions in the reference:\nrealign\
    \  - Realign a read and assign appropriate MAPQ,\nkeep-old - Keep an old alignment\
    \ and MAPQ,\nmapq0    - Keep an old alignment and set MAPQ to 0.\n[default: realign]\
    \  [possible values: realign, keep-old, mapq0]"
  type: long?
  inputBinding:
    prefix: --unknown-regions
- id: in_filtering_km_er
  doc: 'k-mer size used for filtering possible location for a read. [default: 11]'
  type: long?
  inputBinding:
    prefix: --filtering-kmer
- id: in_filtering_p_value
  doc: "We compare LCS paths of a read and its possible locations. If location A is\
    \ better than location B with p-\nvalue lower than FLOAT, location B may be discarded.\
    \ [default: 1e-4]"
  type: double?
  inputBinding:
    prefix: --filtering-p-value
- id: in_max_locations
  doc: "Maximal number of locations after filtering. If read can align to more than\
    \ INT locations, it will get the\noriginal alignment and MAPQ 0. [default: 50]"
  type: long?
  inputBinding:
    prefix: --max-locations
- id: in_conflicts_p_value
  doc: "Each read is put through Binomial test with the number of conflicting PSVs\
    \ out of all homozygous PSVs. All\nreads that fail the test are assigned low MAPQ.\
    \ The threshold p-value is divided by the number of reads in\neach component according\
    \ to the Bonferroni correction. [default: 0.05]"
  type: double?
  inputBinding:
    prefix: --conflicts-p-value
- id: in_min_conflicts
  doc: 'Minimal number of conflicts between a read and PSVs to discard the read. [default:
    5]'
  type: long?
  inputBinding:
    prefix: --min-conflicts
- id: in_skip_mapq
  doc: "Skip reads with mapping quality at least INT in the original alignment. These\
    \ reads will be used to estimate\ngenotypes, but will not be realigned. [default:\
    \ none]"
  type: long?
  inputBinding:
    prefix: --skip-mapq
- id: in_secondary
  doc: "Output at most INT secondary alignments for each realigned read. Use \"all\"\
    \ to output all secondary\nalignments. [default: 0]"
  type: long?
  inputBinding:
    prefix: --secondary
- id: in_first
  doc: "<INT>\nUse first INT[1] databases and first INT[2] reads for each database.\
    \ Use all databases/reads when INT = 0."
  type: long?
  inputBinding:
    prefix: --first
- id: in_generated
  doc: Reads are generated and the true position is known.
  type: boolean?
  inputBinding:
    prefix: --generated
- id: in_skip_unique
  doc: Do not output reads from unique (not duplicated) regions.
  type: boolean?
  inputBinding:
    prefix: --skip-unique
- id: in_skip_vcf
  doc: Do not output vcf file with genotyped PSVs.
  type: File?
  inputBinding:
    prefix: --skip-vcf
- id: in_keep
  doc: Do not clean, keep all output files.
  type: boolean?
  inputBinding:
    prefix: --keep
- id: in_default_hmm
  doc: Use default HMM parameters (instead of estimating using reads).
  type: boolean?
  inputBinding:
    prefix: --default-hmm
- id: in_output_debug
  doc: Output additional CSV files.
  type: boolean?
  inputBinding:
    prefix: --output-debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output directory.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_force
  doc: Force work with non-empty output directory.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_force)
- id: out_continue
  doc: "Continue duplomap run in the same output directory. In that case duplomap\
    \ will skip already analyzed\nduplications clusters (be careful to use the same\
    \ command line arguments)."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_continue)
- id: out_skip_vcf
  doc: Do not output vcf file with genotyped PSVs.
  type: File?
  outputBinding:
    glob: $(inputs.in_skip_vcf)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/duplomap:0.9.5--hed695b0_0
cwlVersion: v1.1
baseCommand:
- duplomap
