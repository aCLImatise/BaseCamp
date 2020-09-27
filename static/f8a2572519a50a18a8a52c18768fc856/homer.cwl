class: CommandLineTool
id: homer.cwl
inputs:
- id: in_prot
  doc: ': Sequence type (-dna)'
  type: boolean
  inputBinding:
    prefix: -prot
- id: in__sequence_file
  doc: ': Sequence File'
  type: File
  inputBinding:
    prefix: -s
- id: in__groupstat_file
  doc: ': Group/Stat File'
  type: File
  inputBinding:
    prefix: -g
- id: in_mer
  doc: ': Mer File'
  type: File
  inputBinding:
    prefix: -mer
- id: in_pssm_motif_file
  doc: ': PSSM Motif File'
  type: File
  inputBinding:
    prefix: -m
- id: in_output_file_prefix
  doc: ': output file prefix'
  type: File
  inputBinding:
    prefix: -o
- id: in_seed
  doc: ': seed file'
  type: File
  inputBinding:
    prefix: -seed
- id: in_offset
  doc: '<#> : offset of sequence from TSS (-2000)'
  type: boolean
  inputBinding:
    prefix: -offset
- id: in_exact
  doc: ': remember mapping between mers and genes (default: approx)'
  type: boolean
  inputBinding:
    prefix: -exact
- id: in_weight_sequences_according
  doc: ': Weight sequences (according to addition columns in group file: 1st-gene
    2nd-sequence)'
  type: boolean
  inputBinding:
    prefix: -w
- id: in_test_sequences_sequences
  doc: ': Test all sequences as candidate motifs (default: only test target sequences)'
  type: boolean
  inputBinding:
    prefix: -T
- id: in_no_autoscale
  doc: ': Do not autoscale sequences to be equal in foreground and background'
  type: boolean
  inputBinding:
    prefix: -noautoscale
- id: in_freq_adjust
  doc: ': Compute log-odds using frequency, default (0.25)'
  type: boolean
  inputBinding:
    prefix: -freqAdjust
- id: in_dual
  doc: ': find dual motifs in the form A<gap>B where A and B can be rev-opposites'
  type: boolean
  inputBinding:
    prefix: -dual
- id: in_flip
  doc: ': find dual motifs in the form A<gap>B or B<gap>A'
  type: boolean
  inputBinding:
    prefix: -flip
- id: in_z_oops_approx
  doc: '<OFF,#(max to count)> : (counts multiple motifs per sequence | default: 2)'
  type: boolean
  inputBinding:
    prefix: -zoopsapprox
- id: in_norev_opp
  doc: ": don't search opposite strand (default->DNA:yes, Protein:no)"
  type: boolean
  inputBinding:
    prefix: -norevopp
- id: in_min
  doc: '<#> : min mer size (6)'
  type: boolean
  inputBinding:
    prefix: -min
- id: in_max
  doc: '<#> : max mer size [also standard mer size] (10)'
  type: boolean
  inputBinding:
    prefix: -max
- id: in_len
  doc: '<#> : Find motifs of length # (default=10)'
  type: boolean
  inputBinding:
    prefix: -len
- id: in_gap
  doc: "<#,#,#-#> : Find motifs with gaps(0)(i.e. -gap 3 -gap 2,4,5 -gap 1-10\nGaps\
    \ will only be in the center of motif and will only use even lengthed motifs"
  type: boolean
  inputBinding:
    prefix: -gap
- id: in_mis
  doc: '<#> : # of mismatches to check for degeneracy (1)'
  type: boolean
  inputBinding:
    prefix: -mis
- id: in_iupac
  doc: '<#> : # of IUPAC codes per mer that can be used during global optimization
    (0)'
  type: boolean
  inputBinding:
    prefix: -IUPAC
- id: in_iupac_type
  doc: "<1,2,or3> : Type of IUPAC symbols used\n1: (default) Only N is used\n2: Only\
    \ N and 2 bp symbols are used (i.e. R = A or G\n3: Full IUPAC code is used (includes\
    \ 3-way symbols)"
  type: boolean
  inputBinding:
    prefix: -iupactype
- id: in_number_seeds_check
  doc: '<#> : number of seeds to check during profile optimization(50)'
  type: boolean
  inputBinding:
    prefix: -S
- id: in_branch
  doc: '<#> : sets depth of optimization (closer to zero the more sensitive (0.5))'
  type: boolean
  inputBinding:
    prefix: -branch
- id: in_maximum_number_iterations
  doc: '<#> : maximum number of iterations during optimization (5)'
  type: boolean
  inputBinding:
    prefix: -I
- id: in_rm_align
  doc: ': DO NOT remove aligned seeds'
  type: boolean
  inputBinding:
    prefix: -rmalign
- id: in_max_neg
  doc: maximum percentage of negative genes that can contain the motif
  type: long
  inputBinding:
    prefix: -maxneg
- id: in_speed
  doc: ": Program will heuristically avoid performing exhaustive\ncalculations (default:\
    \ FAST)"
  type: string
  inputBinding:
    prefix: -speed
- id: in_alg
  doc: ": scoring algorithm (default: hypergeo)\nhypergeo - hypergeometric scoring\
    \ (ZOOPS)\nbinomial - binomical scoring [for variable length seq] (ZOOPS) (requires\
    \ exact)\napproxbinomial - binomical scoring [for variable length seq] (ZOOPS)\
    \ (requires exact)\nsitehypergeo - hypergeometric scoring across seq positions\
    \ (very slow)\nsitebinomial - binomial scoring across seq positions\nfisher <#>\
    \ - fisher exact test (slow, # scales exponentially)\n<# = largest repetition\
    \ to consider [default=2]>\nrank - group file must have sortable numeric value\n\
    freqdiff - used by most bayesian/nnet programs\nlogit - used by most bayesian/nnet\
    \ programs"
  type: long
  inputBinding:
    prefix: -alg
- id: in_markov_generate_using
  doc: "[method options...]\nmarkov <#> - generate hmm from target sequences using\
    \ a hmm of order #\nbmarkov <#> - generate hmm from background sequences using\
    \ a hmm of order #\nmosaic - generate mosaic hmm from background sequences **coming\
    \ soon**"
  type: string
  inputBinding:
    prefix: -b
- id: in_filtering_cutoff_ratio
  doc: ": filtering cutoff for ratio of N's in sequence (0.9)"
  type: double
  inputBinding:
    prefix: -N
- id: in_seq_less
  doc: '<#> : filter sequences shorter than #'
  type: boolean
  inputBinding:
    prefix: -seqless
- id: in_seq_more
  doc: '<#> : filter sequences longer than #'
  type: boolean
  inputBinding:
    prefix: -seqmore
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_prefix
  doc: ': output file prefix'
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_prefix)
cwlVersion: v1.1
baseCommand:
- homer
