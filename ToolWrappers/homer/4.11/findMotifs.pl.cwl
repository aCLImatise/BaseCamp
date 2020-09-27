class: CommandLineTool
id: findMotifs.pl.cwl
inputs:
- id: in_len
  doc: "<#>[,<#>,<#>...] (motif length, default=8,10,12) [NOTE: values greater 12\
    \ may cause the program\nto run out of memmory - in these cases decrease the number\
    \ of sequences analyzed]"
  type: boolean
  inputBinding:
    prefix: -len
- id: in_bg
  doc: '(ids to use as background, default: all genes)'
  type: File
  inputBinding:
    prefix: -bg
- id: in_start
  doc: <#> (offset from TSS, default=-300) [max=based on Promoter Set]
  type: boolean
  inputBinding:
    prefix: -start
- id: in_end
  doc: <#> (offset from TSS, default=50) [max=based on Promoter Set]
  type: boolean
  inputBinding:
    prefix: -end
- id: in_rna
  doc: (output RNA motif logos and compare to RNA motif database, automatically sets
    -norevopp)
  type: boolean
  inputBinding:
    prefix: -rna
- id: in_mask_slash_no_mask
  doc: "(use/don't use repeatmasked files, default: -mask)"
  type: boolean
  inputBinding:
    prefix: -mask/-nomask
- id: in_number_optimize_default
  doc: '<#> (Number of motifs to optimize, default: 25)'
  type: boolean
  inputBinding:
    prefix: -S
- id: in_mis
  doc: '<#> (global optimization: searches for strings with # mismatches, default:
    1)'
  type: boolean
  inputBinding:
    prefix: -mis
- id: in_no_convert
  doc: (will not worry about converting input files into unigene ids)
  type: boolean
  inputBinding:
    prefix: -noconvert
- id: in_norev_opp
  doc: (do not search the reverse strand for motifs)
  type: boolean
  inputBinding:
    prefix: -norevopp
- id: in_no_motif
  doc: (don't search for de novo motif enrichment)
  type: boolean
  inputBinding:
    prefix: -nomotif
- id: in_find
  doc: (This will cause the program to only scan for motifs)
  type: File
  inputBinding:
    prefix: -find
- id: in_enhancers
  doc: "<genome verion>\n(enhancers to include in search space, peaks/sequences should\
    \ be named with a gene ID\nIf multiple enhancers per gene, use the same gene ID,\
    \ and all will be included)"
  type: File
  inputBinding:
    prefix: -enhancers
- id: in_enhancers_only
  doc: (do not include promoter sequence in motif search)
  type: boolean
  inputBinding:
    prefix: -enhancersOnly
- id: in_fast_abg
  doc: (This is recommended for fasta based analysis)
  type: File
  inputBinding:
    prefix: -fastaBg
- id: in_chop_if_y
  doc: "(chops up background regions to match size of target regions)\ni.e. if background\
    \ is a full genome or all mRNAs"
  type: boolean
  inputBinding:
    prefix: -chopify
- id: in_m_set
  doc: '(check against motif collects, default: auto)'
  type: string
  inputBinding:
    prefix: -mset
- id: in_basic
  doc: (don't check de novo motifs for similarity to known motifs)
  type: boolean
  inputBinding:
    prefix: -basic
- id: in_bits
  doc: "(scale sequence logos by information content, default: doesn't scale)"
  type: boolean
  inputBinding:
    prefix: -bits
- id: in_no_check
  doc: (don't check for similarity between novo motif motifs and known motifs)
  type: boolean
  inputBinding:
    prefix: -nocheck
- id: in_m_check
  doc: (known motifs to check against de novo motifs,
  type: File
  inputBinding:
    prefix: -mcheck
- id: in_no_known
  doc: "(don't search for known motif enrichment, default: -known)"
  type: boolean
  inputBinding:
    prefix: -noknown
- id: in_m_known
  doc: (known motifs to check for enrichment,
  type: File
  inputBinding:
    prefix: -mknown
- id: in_no_facts
  doc: (omit humor)
  type: boolean
  inputBinding:
    prefix: -nofacts
- id: in_seq_logo
  doc: (uses weblogo/seqlogo/ghostscript to visualize motifs, default uses SVG)
  type: boolean
  inputBinding:
    prefix: -seqlogo
- id: in_use_binomial_distribution
  doc: (use binomial distribution to calculate p-values, hypergeometric is default)
  type: boolean
  inputBinding:
    prefix: -b
- id: in_no_go
  doc: (don't search for gene ontology enrichment)
  type: boolean
  inputBinding:
    prefix: -nogo
- id: in_human_go
  doc: (Convert IDs to human for GO analysis)
  type: boolean
  inputBinding:
    prefix: -humanGO
- id: in_ontology
  doc: '[ont.genes] ... (custom ontologies for GO analysis)'
  type: string
  inputBinding:
    prefix: -ontology
- id: in_no_weight
  doc: (no CG correction)
  type: boolean
  inputBinding:
    prefix: -noweight
- id: in_no_redun
  doc: (Don't remove predetermined redundant promoters/sequences)
  type: boolean
  inputBinding:
    prefix: -noredun
- id: in_input_file_group
  doc: (input file is a group file, i.e. 1st column = id, 2nd = 0 or 1 [1=target,0=back])
  type: boolean
  inputBinding:
    prefix: -g
- id: in_cpg
  doc: (use CpG% instead of GC% for sequence normalization)
  type: boolean
  inputBinding:
    prefix: -cpg
- id: in_rand
  doc: (randomize labels for target and backgound sequences)
  type: boolean
  inputBinding:
    prefix: -rand
- id: in_mask_motif
  doc: '[motif file 2] ... (motifs to mask before motif finding)'
  type: long
  inputBinding:
    prefix: -maskMotif
- id: in_opt
  doc: '[motif file 2] ... (motifs to optimize/change length)'
  type: long
  inputBinding:
    prefix: -opt
- id: in_peaks
  doc: (will produce peak file of promoters to use with findMotifsGenome.pl)
  type: boolean
  inputBinding:
    prefix: -peaks
- id: in_nowarn
  doc: (no warnings)
  type: boolean
  inputBinding:
    prefix: -nowarn
- id: in_keep_files
  doc: (don't delete temporary files)
  type: boolean
  inputBinding:
    prefix: -keepFiles
- id: in_dump_fast_a
  doc: (create target.fa and background.fa files)
  type: boolean
  inputBinding:
    prefix: -dumpFasta
- id: in_min
  doc: '<#> (remove sequences shorter than #, default: 0)'
  type: boolean
  inputBinding:
    prefix: -min
- id: in_max
  doc: '<#> (remove sequences longer than #, default: 1e10)'
  type: boolean
  inputBinding:
    prefix: -max
- id: in_reuse
  doc: "(rerun homer using old seq files etc. with new options\nand ignores input\
    \ list, organism)"
  type: boolean
  inputBinding:
    prefix: -reuse
- id: in_fdr
  doc: '<#> (Calculate empirical FDR for de novo discovery #=number of randomizations)'
  type: boolean
  inputBinding:
    prefix: -fdr
- id: in_homer_two
  doc: (use homer2 instead of original homer, default)
  type: boolean
  inputBinding:
    prefix: -homer2
- id: in_nlen
  doc: '<#> (length of lower-order oligos to normalize - general sequences, default:
    3)'
  type: boolean
  inputBinding:
    prefix: -nlen
- id: in_nmax
  doc: '<#> (Max normalization iterations, default: 160)'
  type: boolean
  inputBinding:
    prefix: -nmax
- id: in_neutral
  doc: (weight sequences to neutral frequencies, i.e. 25%, 6.25%, etc.)
  type: boolean
  inputBinding:
    prefix: -neutral
- id: in_olen
  doc: <#> (lower-order oligo normalization for oligo table, use if -nlen isn't working
    well)
  type: boolean
  inputBinding:
    prefix: -olen
- id: in_number_use_default
  doc: '<#> (Number of processors to use, default: 1)'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_maximum_expected_motif
  doc: '<#> (Maximum expected motif instance per bp in random sequence, default: 0.01)'
  type: boolean
  inputBinding:
    prefix: -e
- id: in_cache
  doc: '<#> (size in MB for statistics cache, default: 500)'
  type: boolean
  inputBinding:
    prefix: -cache
- id: in_quick_mask
  doc: (skip full masking after finding motifs, similar to original homer)
  type: boolean
  inputBinding:
    prefix: -quickMask
- id: in_homer_one
  doc: (to force the use of the original homer)
  type: boolean
  inputBinding:
    prefix: -homer1
- id: in_min_lp
  doc: '<#> (stop looking for motifs when seed logp score gets above #, default: -10)'
  type: boolean
  inputBinding:
    prefix: -minlp
- id: in_float
  doc: (allow adjustment of the degeneracy threshold for known motifs to improve p-value[dangerous])
  type: boolean
  inputBinding:
    prefix: -float
- id: in_depth
  doc: '[low|med|high|allnight] (time spent on local optimization default: med)'
  type: boolean
  inputBinding:
    prefix: -depth
- id: in_input_list
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_promoter_set
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 2
- id: in_addi_to_inal
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: ''
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- findMotifs.pl
