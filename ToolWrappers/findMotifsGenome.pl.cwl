class: CommandLineTool
id: findMotifsGenome.pl.cwl
inputs:
- id: in_mask
  doc: (mask repeats/lower case sequence, can also add 'r' to genome, i.e. mm9r)
  type: boolean
  inputBinding:
    prefix: -mask
- id: in_bg
  doc: "(genomic positions to be used as background, default=automatic)\nremoves background\
    \ positions overlapping with target positions unless -keepOverlappingBg is used\n\
    -chopify (chop up large background regions to the avg size of target regions)"
  type: File
  inputBinding:
    prefix: -bg
- id: in_len
  doc: "<#>[,<#>,<#>...] (motif length, default=8,10,12) [NOTE: values greater 12\
    \ may cause the program\nto run out of memory - in these cases decrease the number\
    \ of sequences analyzed (-N),\nor try analyzing shorter sequence regions (i.e.\
    \ -size 100)]"
  type: boolean
  inputBinding:
    prefix: -len
- id: in_number_optimize_default
  doc: '<#> (Number of motifs to optimize, default: 25)'
  type: boolean
  inputBinding:
    prefix: -S
- id: in_mis
  doc: '<#> (global optimization: searches for strings with # mismatches, default:
    2)'
  type: boolean
  inputBinding:
    prefix: -mis
- id: in_norev_opp
  doc: (don't search reverse strand for motifs)
  type: boolean
  inputBinding:
    prefix: -norevopp
- id: in_no_motif
  doc: (don't search for de novo motif enrichment)
  type: boolean
  inputBinding:
    prefix: -nomotif
- id: in_rna
  doc: (output RNA motif logos and compare to RNA motif database, automatically sets
    -norevopp)
  type: boolean
  inputBinding:
    prefix: -rna
- id: in_find
  doc: (This will cause the program to only scan for motifs)
  type: File
  inputBinding:
    prefix: -find
- id: in_m_set
  doc: '(check against motif collects, default: auto)'
  type: string
  inputBinding:
    prefix: -mset
- id: in_basic
  doc: (just visualize de novo motifs, don't check similarity with known motifs)
  type: boolean
  inputBinding:
    prefix: -basic
- id: in_bits
  doc: "(scale sequence logos by information content, default: doesn't scale)"
  type: boolean
  inputBinding:
    prefix: -bits
- id: in_no_check
  doc: (don't search for de novo vs. known motif similarity)
  type: boolean
  inputBinding:
    prefix: -nocheck
- id: in_m_check
  doc: (known motifs to check against de novo motifs,
  type: File
  inputBinding:
    prefix: -mcheck
- id: in_float
  doc: (allow adjustment of the degeneracy threshold for known motifs to improve p-value[dangerous])
  type: boolean
  inputBinding:
    prefix: -float
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
  doc: (use weblogo/seqlogo/ghostscript to generate logos, default uses SVG now)
  type: boolean
  inputBinding:
    prefix: -seqlogo
- id: in_gc
  doc: (use GC% for sequence content normalization, now the default)
  type: boolean
  inputBinding:
    prefix: -gc
- id: in_cpg
  doc: (use CpG% instead of GC% for sequence content normalization)
  type: boolean
  inputBinding:
    prefix: -cpg
- id: in_no_weight
  doc: (no CG correction)
  type: boolean
  inputBinding:
    prefix: -noweight
- id: in_number_sequences_use
  doc: <#> (Number of sequences to use for motif finding, default=max(50k, 2x input)
  type: boolean
  inputBinding:
    prefix: -N
- id: in_local
  doc: '<#> (use local background, # of equal size regions around peaks to use i.e.
    2)'
  type: boolean
  inputBinding:
    prefix: -local
- id: in_redundant
  doc: '<#> (Remove redundant sequences matching greater than # percent, i.e. -redundant
    0.5)'
  type: boolean
  inputBinding:
    prefix: -redundant
- id: in_max_n
  doc: "<#> (maximum percentage of N's in sequence to consider for motif finding,\
    \ default: 0.7)"
  type: boolean
  inputBinding:
    prefix: -maxN
- id: in_mask_motif
  doc: '[motif file 2]... (motifs to mask before motif finding)'
  type: long
  inputBinding:
    prefix: -maskMotif
- id: in_opt
  doc: '[motif file 2]... (motifs to optimize or change length of)'
  type: long
  inputBinding:
    prefix: -opt
- id: in_rand
  doc: (randomize target and background sequences labels)
  type: boolean
  inputBinding:
    prefix: -rand
- id: in_ref
  doc: (use file for target and background - first argument is list of peak ids for
    targets)
  type: File
  inputBinding:
    prefix: -ref
- id: in_oligo
  doc: (perform analysis of individual oligo enrichment)
  type: boolean
  inputBinding:
    prefix: -oligo
- id: in_dump_fast_a
  doc: (Dump fasta files for target and background sequences for use with other programs)
  type: boolean
  inputBinding:
    prefix: -dumpFasta
- id: in_pre_parse
  doc: (force new background files to be created)
  type: boolean
  inputBinding:
    prefix: -preparse
- id: in_pre_parsed_dir
  doc: (location to search for preparsed file and/or place new files)
  type: Directory
  inputBinding:
    prefix: -preparsedDir
- id: in_keep_files
  doc: (keep temporary files)
  type: boolean
  inputBinding:
    prefix: -keepFiles
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
  doc: '<#> (length of lower-order oligos to normalize in background, default: -nlen
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
- id: in_min_lp
  doc: '<#> (stop looking for motifs when seed logp score gets above #, default: -10)'
  type: boolean
  inputBinding:
    prefix: -minlp
- id: in_homer_one
  doc: (to force the use of the original homer)
  type: boolean
  inputBinding:
    prefix: -homer1
- id: in_depth
  doc: '[low|med|high|allnight] (time spent on local optimization default: med)'
  type: boolean
  inputBinding:
    prefix: -depth
- id: in_pos_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 2
- id: in_additional
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
- findMotifsGenome.pl
