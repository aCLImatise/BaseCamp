class: CommandLineTool
id: verifybamid2.cwl
inputs:
- id: in_bam_file
  doc: '[STR: Empty]        : [String] Bam or Cram file for the sample[Required if
    --PileupFile not specified]'
  type: boolean?
  inputBinding:
    prefix: --BamFile
- id: in_pile_up_file
  doc: '[STR: Empty]        : [String] Pileup file for the sample[Required if --BamFile
    not specified]'
  type: boolean?
  inputBinding:
    prefix: --PileupFile
- id: in_reference
  doc: '[STR: Empty]        : [String] Reference file[Required]'
  type: boolean?
  inputBinding:
    prefix: --Reference
- id: in_svd_prefix
  doc: '[STR: Empty]        : [String] SVD related files prefix(normally shared by
    .UD, .mu and .bed files)[Required]'
  type: boolean?
  inputBinding:
    prefix: --SVDPrefix
- id: in_output
  doc: '[STR: result]       : [String] Prefix of output files[optional]'
  type: boolean?
  inputBinding:
    prefix: --Output
- id: in_within_ancestry
  doc: '[FLG: OFF]          : [Bool] Enabling withinAncestry assume target sample
    and contamination source are from the same populations,[default:BetweenAncestry]
    otherwise'
  type: boolean?
  inputBinding:
    prefix: --WithinAncestry
- id: in_disable_sanity_check
  doc: '[FLG: OFF]          : [Bool] Disable marker quality sanity check(no marker
    filtering)[default:false]'
  type: boolean?
  inputBinding:
    prefix: --DisableSanityCheck
- id: in_num_pc
  doc: '[INT: 2]            : [Int] Set number of PCs to infer Allele Frequency[optional]'
  type: boolean?
  inputBinding:
    prefix: --NumPC
- id: in_fix_pc
  doc: '[STR: Empty]        : [String] Input fixed PCs to estimate Alpha[format PC1:PC2:PC3...]'
  type: boolean?
  inputBinding:
    prefix: --FixPC
- id: in_fix_alpha
  doc: '[FLT: -1.0e+00]     : [Double] Input fixed Alpha to estimate PC coordinates'
  type: boolean?
  inputBinding:
    prefix: --FixAlpha
- id: in_known_af
  doc: '[STR: Empty]        : [String] known allele frequency file (chr  pos     freq)[Optional]'
  type: boolean?
  inputBinding:
    prefix: --KnownAF
- id: in_num_thread
  doc: '[INT: 4]            : [Int] Set number of threads in likelihood calculation[default:4]'
  type: boolean?
  inputBinding:
    prefix: --NumThread
- id: in_seed
  doc: '[INT: 12345]        : [Int] Random number seed[default:12345]'
  type: boolean?
  inputBinding:
    prefix: --Seed
- id: in_epsilon
  doc: '[FLT: 1.0e-08]      : [Double] Minimization procedure convergence threshold,
    usually a trade-off bettween accuracy and running time[default:1e-10]'
  type: boolean?
  inputBinding:
    prefix: --Epsilon
- id: in_output_pile_up
  doc: '[FLG: OFF]          : [Bool] If output temp pileup file'
  type: boolean?
  inputBinding:
    prefix: --OutputPileup
- id: in_verbose
  doc: '[FLG: OFF]          : [Bool] If print the progress of the method on the screen'
  type: boolean?
  inputBinding:
    prefix: --Verbose
- id: in_ref_vcf
  doc: "[STR: Empty]        : [String] VCF file from which to extract reference panel's\
    \ genotype matrix[Required if no SVD files available]"
  type: boolean?
  inputBinding:
    prefix: --RefVCF
- id: in_min_bq
  doc: '[INT: 13]           : [Int] skip bases with baseQ/BAQ smaller than min-BQ'
  type: boolean?
  inputBinding:
    prefix: --min-BQ
- id: in_min_mq
  doc: '[INT: 2]            : [Int] skip alignments with mapQ smaller than min-MQ'
  type: boolean?
  inputBinding:
    prefix: --min-MQ
- id: in_adjust_mq
  doc: '[INT: 40]           : [Int] adjust mapping quality; recommended:50, disable:0'
  type: boolean?
  inputBinding:
    prefix: --adjust-MQ
- id: in_max_depth
  doc: '[INT: 8000]         : [Int] max per-file depth'
  type: boolean?
  inputBinding:
    prefix: --max-depth
- id: in_no_orphans
  doc: '[FLG: OFF]          : [Bool] do not use anomalous read pairs'
  type: boolean?
  inputBinding:
    prefix: --no-orphans
- id: in_incl_flags
  doc: '[INT: 1040]         : [Int] required flags: skip reads with mask bits unset'
  type: boolean?
  inputBinding:
    prefix: --incl-flags
- id: in_excl_flags
  doc: '[INT: 1796]         : [Int] filter flags: skip reads with mask bits set'
  type: boolean?
  inputBinding:
    prefix: --excl-flags
- id: in_ud_path
  doc: '[STR: Empty]        : [String] UD matrix file from SVD result of genotype
    matrix'
  type: boolean?
  inputBinding:
    prefix: --UDPath
- id: in_mean_path
  doc: '[STR: Empty]        : [String] Mean matrix file of genotype matrix'
  type: boolean?
  inputBinding:
    prefix: --MeanPath
- id: in_bed_path
  doc: '[STR: Empty]        : [String] Bed file for markers used in this analysis,1
    based pos(chr        pos-1   pos     refAllele       altAllele)[Required]'
  type: boolean?
  inputBinding:
    prefix: --BedPath
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/verifybamid2:2.0.1--h32f71e1_0
cwlVersion: v1.1
baseCommand:
- verifybamid2
