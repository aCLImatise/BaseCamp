class: CommandLineTool
id: findMotifsGenome.pl.cwl
inputs:
- id: len
  doc: '<#>[,<#>,<#>...] (motif length, default=8,10,12) [NOTE: values greater 12
    may cause the program to run out of memory - in these cases decrease the number
    of sequences analyzed (-N), or try analyzing shorter sequence regions (i.e. -size
    100)]'
  type: boolean
  inputBinding:
    prefix: -len
- id: size
  doc: <#> (fragment size to use for motif finding, default=200) -size <#,#> (i.e.
    -size -100,50 will get sequences from -100 to +50 relative from center) -size
    given (uses the exact regions you give it)
  type: boolean
  inputBinding:
    prefix: -size
- id: s
  doc: '<#> (Number of motifs to optimize, default: 25)'
  type: boolean
  inputBinding:
    prefix: -S
- id: mis
  doc: '<#> (global optimization: searches for strings with # mismatches, default:
    2)'
  type: boolean
  inputBinding:
    prefix: -mis
- id: norev_opp
  doc: (don't search reverse strand for motifs)
  type: boolean
  inputBinding:
    prefix: -norevopp
- id: no_motif
  doc: (don't search for de novo motif enrichment)
  type: boolean
  inputBinding:
    prefix: -nomotif
- id: rna
  doc: (output RNA motif logos and compare to RNA motif database, automatically sets
    -norevopp)
  type: boolean
  inputBinding:
    prefix: -rna
- id: find
  doc: (This will cause the program to only scan for motifs)
  type: string
  inputBinding:
    prefix: -find
- id: m_set
  doc: '<vertebrates|insects|worms|plants|yeast|all> (check against motif collects,
    default: auto)'
  type: boolean
  inputBinding:
    prefix: -mset
- id: basic
  doc: (just visualize de novo motifs, don't check similarity with known motifs)
  type: boolean
  inputBinding:
    prefix: -basic
- id: bits
  doc: "(scale sequence logos by information content, default: doesn't scale)"
  type: boolean
  inputBinding:
    prefix: -bits
- id: no_check
  doc: (don't search for de novo vs. known motif similarity)
  type: boolean
  inputBinding:
    prefix: -nocheck
- id: m_check
  doc: (known motifs to check against de novo motifs,
  type: string
  inputBinding:
    prefix: -mcheck
- id: float
  doc: (allow adjustment of the degeneracy threshold for known motifs to improve p-value[dangerous])
  type: boolean
  inputBinding:
    prefix: -float
- id: no_known
  doc: "(don't search for known motif enrichment, default: -known)"
  type: boolean
  inputBinding:
    prefix: -noknown
- id: m_known
  doc: (known motifs to check for enrichment,
  type: string
  inputBinding:
    prefix: -mknown
- id: no_facts
  doc: (omit humor)
  type: boolean
  inputBinding:
    prefix: -nofacts
- id: seq_logo
  doc: (use weblogo/seqlogo/ghostscript to generate logos, default uses SVG now)
  type: boolean
  inputBinding:
    prefix: -seqlogo
- id: n
  doc: <#> (Number of sequences to use for motif finding, default=max(50k, 2x input)
  type: boolean
  inputBinding:
    prefix: -N
- id: local
  doc: '<#> (use local background, # of equal size regions around peaks to use i.e.
    2)'
  type: boolean
  inputBinding:
    prefix: -local
- id: redundant
  doc: '<#> (Remove redundant sequences matching greater than # percent, i.e. -redundant
    0.5)'
  type: boolean
  inputBinding:
    prefix: -redundant
- id: max_n
  doc: "<#> (maximum percentage of N's in sequence to consider for motif finding,\
    \ default: 0.7)"
  type: boolean
  inputBinding:
    prefix: -maxN
- id: mask_motif
  doc: '[motif file 2]... (motifs to mask before motif finding)'
  type: string
  inputBinding:
    prefix: -maskMotif
- id: opt
  doc: '[motif file 2]... (motifs to optimize or change length of)'
  type: string
  inputBinding:
    prefix: -opt
- id: rand
  doc: (randomize target and background sequences labels)
  type: boolean
  inputBinding:
    prefix: -rand
- id: ref
  doc: (use file for target and background - first argument is list of peak ids for
    targets)
  type: string
  inputBinding:
    prefix: -ref
- id: oligo
  doc: (perform analysis of individual oligo enrichment)
  type: boolean
  inputBinding:
    prefix: -oligo
- id: dump_fast_a
  doc: (Dump fasta files for target and background sequences for use with other programs)
  type: boolean
  inputBinding:
    prefix: -dumpFasta
- id: pre_parse
  doc: (force new background files to be created)
  type: boolean
  inputBinding:
    prefix: -preparse
- id: pre_parsed_dir
  doc: (location to search for preparsed file and/or place new files)
  type: Directory
  inputBinding:
    prefix: -preparsedDir
- id: keep_files
  doc: (keep temporary files)
  type: boolean
  inputBinding:
    prefix: -keepFiles
- id: fdr
  doc: '<#> (Calculate empirical FDR for de novo discovery #=number of randomizations)'
  type: boolean
  inputBinding:
    prefix: -fdr
- id: home_r2
  doc: (use homer2 instead of original homer, default)
  type: boolean
  inputBinding:
    prefix: -homer2
- id: nlen
  doc: '<#> (length of lower-order oligos to normalize in background, default: -nlen
    3) -nmax <#> (Max normalization iterations, default: 160) -neutral (weight sequences
    to neutral frequencies, i.e. 25%, 6.25%, etc.)'
  type: boolean
  inputBinding:
    prefix: -nlen
- id: olen
  doc: <#> (lower-order oligo normalization for oligo table, use if -nlen isn't working
    well)
  type: boolean
  inputBinding:
    prefix: -olen
- id: p
  doc: '<#> (Number of processors to use, default: 1)'
  type: boolean
  inputBinding:
    prefix: -p
- id: e
  doc: '<#> (Maximum expected motif instance per bp in random sequence, default: 0.01)'
  type: boolean
  inputBinding:
    prefix: -e
- id: cache
  doc: '<#> (size in MB for statistics cache, default: 500)'
  type: boolean
  inputBinding:
    prefix: -cache
- id: quick_mask
  doc: (skip full masking after finding motifs, similar to original homer)
  type: boolean
  inputBinding:
    prefix: -quickMask
- id: min_lp
  doc: '<#> (stop looking for motifs when seed logp score gets above #, default: -10)'
  type: boolean
  inputBinding:
    prefix: -minlp
- id: home_r1
  doc: (to force the use of the original homer)
  type: boolean
  inputBinding:
    prefix: -homer1
- id: depth
  doc: '[low|med|high|allnight] (time spent on local optimization default: med)'
  type: boolean
  inputBinding:
    prefix: -depth
outputs: []
cwlVersion: v1.1
baseCommand:
- findMotifsGenome.pl
