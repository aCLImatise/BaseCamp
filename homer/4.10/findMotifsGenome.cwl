#!/usr/bin/env cwl-runner

baseCommand:
- findMotifsGenome.pl
class: CommandLineTool
cwlVersion: v1.0
id: findmotifsgenome.pl
inputs:
- doc: '<#>[,<#>,<#>...] (motif length, default=8,10,12) [NOTE: values greater 12
    may cause the program to run out of memory - in these cases decrease the number
    of sequences analyzed (-N), or try analyzing shorter sequence regions (i.e. -size
    100)]'
  id: len
  inputBinding:
    prefix: -len
  type: boolean
- doc: <#> (fragment size to use for motif finding, default=200) -size <#,#> (i.e.
    -size -100,50 will get sequences from -100 to +50 relative from center) -size
    given (uses the exact regions you give it)
  id: size
  inputBinding:
    prefix: -size
  type: boolean
- doc: '<#> (Number of motifs to optimize, default: 25)'
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: '<#> (global optimization: searches for strings with # mismatches, default:
    2)'
  id: mis
  inputBinding:
    prefix: -mis
  type: boolean
- doc: (don't search reverse strand for motifs)
  id: norev_opp
  inputBinding:
    prefix: -norevopp
  type: boolean
- doc: (don't search for de novo motif enrichment)
  id: no_motif
  inputBinding:
    prefix: -nomotif
  type: boolean
- doc: (output RNA motif logos and compare to RNA motif database, automatically sets
    -norevopp)
  id: rna
  inputBinding:
    prefix: -rna
  type: boolean
- doc: (This will cause the program to only scan for motifs)
  id: find
  inputBinding:
    prefix: -find
  type: string
- doc: '<vertebrates|insects|worms|plants|yeast|all> (check against motif collects,
    default: auto)'
  id: m_set
  inputBinding:
    prefix: -mset
  type: boolean
- doc: (just visualize de novo motifs, don't check similarity with known motifs)
  id: basic
  inputBinding:
    prefix: -basic
  type: boolean
- doc: "(scale sequence logos by information content, default: doesn't scale)"
  id: bits
  inputBinding:
    prefix: -bits
  type: boolean
- doc: (don't search for de novo vs. known motif similarity)
  id: no_check
  inputBinding:
    prefix: -nocheck
  type: boolean
- doc: (known motifs to check against de novo motifs,
  id: m_check
  inputBinding:
    prefix: -mcheck
  type: string
- doc: (allow adjustment of the degeneracy threshold for known motifs to improve p-value[dangerous])
  id: float
  inputBinding:
    prefix: -float
  type: boolean
- doc: "(don't search for known motif enrichment, default: -known)"
  id: no_known
  inputBinding:
    prefix: -noknown
  type: boolean
- doc: (known motifs to check for enrichment,
  id: m_known
  inputBinding:
    prefix: -mknown
  type: string
- doc: (omit humor)
  id: no_facts
  inputBinding:
    prefix: -nofacts
  type: boolean
- doc: (use weblogo/seqlogo/ghostscript to generate logos, default uses SVG now)
  id: seq_logo
  inputBinding:
    prefix: -seqlogo
  type: boolean
- doc: <#> (Number of sequences to use for motif finding, default=max(50k, 2x input)
  id: n
  inputBinding:
    prefix: -N
  type: boolean
- doc: '<#> (use local background, # of equal size regions around peaks to use i.e.
    2)'
  id: local
  inputBinding:
    prefix: -local
  type: boolean
- doc: '<#> (Remove redundant sequences matching greater than # percent, i.e. -redundant
    0.5)'
  id: redundant
  inputBinding:
    prefix: -redundant
  type: boolean
- doc: "<#> (maximum percentage of N's in sequence to consider for motif finding,\
    \ default: 0.7)"
  id: max_n
  inputBinding:
    prefix: -maxN
  type: boolean
- doc: '[motif file 2]... (motifs to mask before motif finding)'
  id: mask_motif
  inputBinding:
    prefix: -maskMotif
  type: string
- doc: '[motif file 2]... (motifs to optimize or change length of)'
  id: opt
  inputBinding:
    prefix: -opt
  type: string
- doc: (randomize target and background sequences labels)
  id: rand
  inputBinding:
    prefix: -rand
  type: boolean
- doc: (use file for target and background - first argument is list of peak ids for
    targets)
  id: ref
  inputBinding:
    prefix: -ref
  type: string
- doc: (perform analysis of individual oligo enrichment)
  id: oligo
  inputBinding:
    prefix: -oligo
  type: boolean
- doc: (Dump fasta files for target and background sequences for use with other programs)
  id: dump_fast_a
  inputBinding:
    prefix: -dumpFasta
  type: boolean
- doc: (force new background files to be created)
  id: pre_parse
  inputBinding:
    prefix: -preparse
  type: boolean
- doc: (location to search for preparsed file and/or place new files)
  id: pre_parsed_dir
  inputBinding:
    prefix: -preparsedDir
  type: Directory
- doc: (keep temporary files)
  id: keep_files
  inputBinding:
    prefix: -keepFiles
  type: boolean
- doc: '<#> (Calculate empirical FDR for de novo discovery #=number of randomizations)'
  id: fdr
  inputBinding:
    prefix: -fdr
  type: boolean
- doc: (use homer2 instead of original homer, default)
  id: home_r2
  inputBinding:
    prefix: -homer2
  type: boolean
- doc: '<#> (length of lower-order oligos to normalize in background, default: -nlen
    3) -nmax <#> (Max normalization iterations, default: 160) -neutral (weight sequences
    to neutral frequencies, i.e. 25%, 6.25%, etc.)'
  id: nlen
  inputBinding:
    prefix: -nlen
  type: boolean
- doc: <#> (lower-order oligo normalization for oligo table, use if -nlen isn't working
    well)
  id: olen
  inputBinding:
    prefix: -olen
  type: boolean
- doc: '<#> (Number of processors to use, default: 1)'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '<#> (Maximum expected motif instance per bp in random sequence, default: 0.01)'
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: '<#> (size in MB for statistics cache, default: 500)'
  id: cache
  inputBinding:
    prefix: -cache
  type: boolean
- doc: (skip full masking after finding motifs, similar to original homer)
  id: quick_mask
  inputBinding:
    prefix: -quickMask
  type: boolean
- doc: '<#> (stop looking for motifs when seed logp score gets above #, default: -10)'
  id: min_lp
  inputBinding:
    prefix: -minlp
  type: boolean
- doc: (to force the use of the original homer)
  id: home_r1
  inputBinding:
    prefix: -homer1
  type: boolean
- doc: '[low|med|high|allnight] (time spent on local optimization default: med)'
  id: depth
  inputBinding:
    prefix: -depth
  type: boolean
