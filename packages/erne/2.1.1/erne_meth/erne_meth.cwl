class: CommandLineTool
id: erne_meth.cwl
inputs:
- id: in_fast_a
  doc: "reference fasta file (can be repeated several\ntime). [REQUIRED]"
  type: File
  inputBinding:
    prefix: --fasta
- id: in_input
  doc: BAM/SAM file generated with erne-bs5 [REQUIRED]
  type: File
  inputBinding:
    prefix: --input
- id: in_output_prefix
  doc: "prefix for output files (methylation analysis,\nreports). [REQUIRED]"
  type: string
  inputBinding:
    prefix: --output-prefix
- id: in_annotations_erne
  doc: "Generate methylation annotations in erne\nformat. Format is: <chr> <position>\
    \ <strand>\n<context> <#C+#T> <methyl_level> <mult_reads>,\nwhere methyl_level\
    \ = #C/(#C+#T) (or NA if\n#C+#T=0) and mult_reads is the number of\nmultiple reads\
    \ disambiguated that cover the\nposition (only if --disambiguation-mode is\nspecified,\
    \ NA otherwise). Coordinates are\n1-based. Default: disabled."
  type: boolean
  inputBinding:
    prefix: --annotations-erne
- id: in_annotations_bismark
  doc: "Generate methylation annotations in bismark\ncytosine format. Format is: <chr>\
    \ <position>\n<strand> <#C> <#T> <context> <detailed\ncontext>, where <position>\
    \ for - strand (Gs on\n+ strand) is computed as position of the\ncorresponding\
    \ G on + strand minus context\nlength plus one (context length = 2 for CG and\n\
    3 for CHG/CHH). Context is one of CG/CHG/CHH,\nwhile detailed context is the exact\
    \ 3 bases of\nthe context. Coordinates are 1-based. Default:\ndisabled."
  type: boolean
  inputBinding:
    prefix: --annotations-bismark
- id: in_annotations_epp
  doc: "Generate methylation annotations in the format\nas output files from the Epigenome\
    \ Processing\nPipeline (EPP) applied at the Broad Institute.\nFormat is (tab separated):\
    \ <chr name> <start\ncontext(included)> <end context(excluded)>\n<methylation\
    \ value and coverage as a string (\n'#C/(#T+#C)', '0/0' if not covered )>\n<methylation\
    \ in range [0,1000]> <strand>\n<context(CG/CHG/CHH)>. Coordinates are 0-based.\n\
    Default: disabled."
  type: boolean
  inputBinding:
    prefix: --annotations-epp
- id: in_compress
  doc: "Compress methylation annotations in the\nspecified format (example: --compress\
    \ bz).\nDefault: do not compress."
  type: string
  inputBinding:
    prefix: --compress
- id: in_write_bam
  doc: "write used alignments in a bam file. The bam\nfile is called 'output_prefix_alignments_used.b\n\
    am', where output_prefix is the prefix\nspecified with --output-prefix."
  type: File
  inputBinding:
    prefix: --write-bam
- id: in_target
  doc: "input bed file with targeted regions in the\nformat chr start_pos(included)\n\
    end_pos(excluded). If specified, ERNE-METH will\nproduce also target statistics\
    \ and three output\nfiles with extension _on_target.txt,\n_off_target.txt and\
    \ _out_target_cov_distributio\nn.txt containing informations about % of\ncovered\
    \ bases on target having a given minimum\ncoverage, number of covered bases off\
    \ target\nhaving a given minimum coverage, and a list of\ntriples <distance_from_target,\
    \ coverage,\nnumber_of_positions> respectively. Here,\ndistance_from_target is\
    \ the distance from the\nnearest target region, coverage is the coverage\nof that\
    \ position and number_of_positions is the\nnumber of positions having that coverage\
    \ and\ndistance_from_target."
  type: long
  inputBinding:
    prefix: --target
- id: in_extend_target
  doc: "Extend boundaries of the targeted regions by\narg positions (on both sides).\
    \ Useful to take\ninto account tails of aligned reads at the\nextremities of targeted\
    \ regions while computing\nstatistics. Default: 0."
  type: long
  inputBinding:
    prefix: --extend-target
- id: in_on_target_annotations
  doc: "In the annotations file print only on-target\npositions (included extended\
    \ positions, see\n--extend-target). Default: false (print all\npositions)."
  type: boolean
  inputBinding:
    prefix: --on-target-annotations
- id: in_print_only_covered
  doc: "In the annotations file print only covered\npositions. Default: false (print\
    \ all\ncytosines)."
  type: boolean
  inputBinding:
    prefix: --print-only-covered
- id: in_single_mode
  doc: "Modality 1: Use only single-mapping reads. This\nmodality is incompatible\
    \ with --multiple-mode.\nDefault: enabled."
  type: boolean
  inputBinding:
    prefix: --single-mode
- id: in_multiple_mode
  doc: "Modality 2: With paired end, if one mate is\nsingle and the other multiple,\
    \ use the primary\nalignment for the multiple-mapping read.\nDefault: disabled"
  type: boolean
  inputBinding:
    prefix: --multiple-mode
- id: in_disambiguation_mode
  doc: "Modality 3: Use methylation information to\ndisambiguate multiple-mapping\
    \ reads. WARNING:\ncan be used only on bam files produced with the\noption --print-all\
    \ and single-end reads.\nDefault: disabled."
  type: boolean
  inputBinding:
    prefix: --disambiguation-mode
- id: in_use_first
  doc: "Use only the first arg alignments (or pairs if\npaired-end) in the input file.\
    \ If set to 0, use\nall alignments. Default: 0."
  type: File
  inputBinding:
    prefix: --use-first
- id: in_de_duplicate
  doc: "Automatically remove PCR duplicates while\ncalling methylation. An alignment\
    \ is considered\nduplicate if another alignment with same\nchromosome, starting\
    \ position and orientation\nhas already been processed. Given a set of\nduplicates,\
    \ only the first N appearing in the\ninput file will be used for the methylation\n\
    call, where N is specified with the option\n--allowed-duplicates. For paired-end\
    \ reads, a\npair is considered duplicate if and only if\nanother pair with same\
    \ chromosome, starting\nposition and orientation (for both reads) has\nbeen aligned\
    \ before. Default: false."
  type: boolean
  inputBinding:
    prefix: --deduplicate
- id: in_allowed_duplicates
  doc: "If --deduplicate is specified, keep the first\narg duplicate alignments for\
    \ a read/pair (in\nthe order seen in the bam file). Default: 1."
  type: File
  inputBinding:
    prefix: --allowed-duplicates
- id: in_disable_un_proper_pair
  doc: "With paired end reads, discard unproper pairs\n(alignments on different strand/chromosome).\n\
    Unproper pairs could reflect structural\nvariations. Default: disabled (accept\
    \ unproper\npairs)."
  type: boolean
  inputBinding:
    prefix: --disable-unproper-pair
- id: in_max_coverage
  doc: "Do not increment Cytosine coverage counters if\ncoverage of a Cytosine is\
    \ > arg. Can be used to\nnormalize read depth across multiple samples.\nDefault:\
    \ 2^16-1."
  type: long
  inputBinding:
    prefix: --max-coverage
- id: in_coverage_threshold
  doc: "If the coverage of a cytosine in the reference\nis < arg then it is considered\
    \ as not covered.\nDefault: 1."
  type: long
  inputBinding:
    prefix: --coverage-threshold
- id: in_error_threshold
  doc: "(only with --disambiguation-mode) use an\nalignment for the methylation pattern\
    \ extension\nonly if its average methylation distance per\ncytosine is less or\
    \ equal this value in %.\nDefault: 100."
  type: long
  inputBinding:
    prefix: --error-threshold
- id: in_delta_m
  doc: "(only with --disambiguation-mode) During\ndisambiguation phase if there are\
    \ multiple\nalignments for a read then extend the\nmethylation profile with the\
    \ best one ONLY if\nits methylation distance is at least by arg\nsmaller than\
    \ the second best one. High values\nguarantee higher reliability. Default: 0."
  type: long
  inputBinding:
    prefix: --delta-m
- id: in_min_c_cov
  doc: "(only with --disambiguation-mode) Lower bound\nfor the minimum number of cytosines\
    \ in an\nalignment that must be covered by the\nmethylation pattern to process\
    \ the alignment.\nWhen C_cov reaches this value, the algorithm is\nterminated.\
    \ Default: 10."
  type: long
  inputBinding:
    prefix: --min-C-cov
- id: in_max_c_cov
  doc: "(only with --disambiguation-mode) Upper bound\nfor the minimum number of cytosines\
    \ in an\nalignment that must be covered by the\nmethylation pattern to process\
    \ the alignment.\nThis is the starting value for C_cov. Default:\n20."
  type: long
  inputBinding:
    prefix: --max-C-cov
- id: in_aligned_reads_thr
  doc: "(only with --disambiguation-mode) If during a\ncycle less or equal than arg\
    \ reads have been\ndisambiguated then decrement C_cov. Default: 10"
  type: long
  inputBinding:
    prefix: --aligned-reads-thr
- id: in_contamination_reference
  doc: "reference file to use for contamination check\n(in ERNE format)\n"
  type: File
  inputBinding:
    prefix: --contamination-reference
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_bam
  doc: "write used alignments in a bam file. The bam\nfile is called 'output_prefix_alignments_used.b\n\
    am', where output_prefix is the prefix\nspecified with --output-prefix."
  type: File
  outputBinding:
    glob: $(inputs.in_write_bam)
cwlVersion: v1.1
baseCommand:
- erne-meth
