#!/usr/bin/env cwl-runner

baseCommand:
- findMotifs.pl
class: CommandLineTool
cwlVersion: v1.0
id: findmotifs.pl
inputs:
- doc: '<#>[,<#>,<#>...] (motif length, default=8,10,12) [NOTE: values greater 12
    may cause the program to run out of memmory - in these cases decrease the number
    of sequences analyzed]'
  id: len
  inputBinding:
    prefix: -len
  type: boolean
- doc: '(ids to use as background, default: all genes)'
  id: bg
  inputBinding:
    prefix: -bg
  type: string
- doc: <#> (offset from TSS, default=-300) [max=based on Promoter Set]
  id: start
  inputBinding:
    prefix: -start
  type: boolean
- doc: <#> (offset from TSS, default=50) [max=based on Promoter Set]
  id: end
  inputBinding:
    prefix: -end
  type: boolean
- doc: (output RNA motif logos and compare to RNA motif database, automatically sets
    -norevopp)
  id: rna
  inputBinding:
    prefix: -rna
  type: boolean
- doc: "/-nomask (use/don't use repeatmasked files, default: -mask)"
  id: mask
  inputBinding:
    prefix: -mask
  type: boolean
- doc: '<#> (Number of motifs to optimize, default: 25)'
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: '<#> (global optimization: searches for strings with # mismatches, default:
    1)'
  id: mis
  inputBinding:
    prefix: -mis
  type: boolean
- doc: (will not worry about converting input files into unigene ids)
  id: no_convert
  inputBinding:
    prefix: -noconvert
  type: boolean
- doc: (do not search the reverse strand for motifs)
  id: norev_opp
  inputBinding:
    prefix: -norevopp
  type: boolean
- doc: (don't search for de novo motif enrichment)
  id: no_motif
  inputBinding:
    prefix: -nomotif
  type: boolean
- doc: (This will cause the program to only scan for motifs)
  id: find
  inputBinding:
    prefix: -find
  type: string
- doc: (do not include promoter sequence in motif search)
  id: enhancers_only
  inputBinding:
    prefix: -enhancersOnly
  type: boolean
- doc: (This is recommended for fasta based analysis)
  id: fast_abg
  inputBinding:
    prefix: -fastaBg
  type: string
- doc: '<vertebrates|insects|worms|plants|yeast|all> (check against motif collects,
    default: auto)'
  id: m_set
  inputBinding:
    prefix: -mset
  type: boolean
- doc: (don't check de novo motifs for similarity to known motifs)
  id: basic
  inputBinding:
    prefix: -basic
  type: boolean
- doc: "(scale sequence logos by information content, default: doesn't scale)"
  id: bits
  inputBinding:
    prefix: -bits
  type: boolean
- doc: (don't check for similarity between novo motif motifs and known motifs)
  id: no_check
  inputBinding:
    prefix: -nocheck
  type: boolean
- doc: (known motifs to check against de novo motifs,
  id: m_check
  inputBinding:
    prefix: -mcheck
  type: string
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
- doc: (uses weblogo/seqlogo/ghostscript to visualize motifs, default uses SVG)
  id: seq_logo
  inputBinding:
    prefix: -seqlogo
  type: boolean
- doc: (use binomial distribution to calculate p-values, hypergeometric is default)
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: (don't search for gene ontology enrichment)
  id: no_go
  inputBinding:
    prefix: -nogo
  type: boolean
- doc: (Convert IDs to human for GO analysis)
  id: human_go
  inputBinding:
    prefix: -humanGO
  type: boolean
- doc: '[ont.genes] ... (custom ontologies for GO analysis)'
  id: ontology
  inputBinding:
    prefix: -ontology
  type: string
- doc: (no CG correction)
  id: no_weight
  inputBinding:
    prefix: -noweight
  type: boolean
- doc: (Don't remove predetermined redundant promoters/sequences)
  id: no_redun
  inputBinding:
    prefix: -noredun
  type: boolean
- doc: (input file is a group file, i.e. 1st column = id, 2nd = 0 or 1 [1=target,0=back])
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: (use CpG% instead of GC% for sequence normalization)
  id: cpg
  inputBinding:
    prefix: -cpg
  type: boolean
- doc: (randomize labels for target and backgound sequences)
  id: rand
  inputBinding:
    prefix: -rand
  type: boolean
- doc: '[motif file 2] ... (motifs to mask before motif finding)'
  id: mask_motif
  inputBinding:
    prefix: -maskMotif
  type: string
- doc: '[motif file 2] ... (motifs to optimize/change length)'
  id: opt
  inputBinding:
    prefix: -opt
  type: string
- doc: (will produce peak file of promoters to use with findMotifsGenome.pl)
  id: peaks
  inputBinding:
    prefix: -peaks
  type: boolean
- doc: (no warnings)
  id: nowarn
  inputBinding:
    prefix: -nowarn
  type: boolean
- doc: (don't delete temporary files)
  id: keep_files
  inputBinding:
    prefix: -keepFiles
  type: boolean
- doc: (create target.fa and background.fa files)
  id: dump_fast_a
  inputBinding:
    prefix: -dumpFasta
  type: boolean
- doc: '<#> (remove sequences shorter than #, default: 0)'
  id: min
  inputBinding:
    prefix: -min
  type: boolean
- doc: '<#> (remove sequences longer than #, default: 1e10)'
  id: max
  inputBinding:
    prefix: -max
  type: boolean
- doc: (rerun homer using old seq files etc. with new options and ignores input list,
    organism)
  id: reuse
  inputBinding:
    prefix: -reuse
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
- doc: '<#> (length of lower-order oligos to normalize - general sequences, default:
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
- doc: (to force the use of the original homer)
  id: home_r1
  inputBinding:
    prefix: -homer1
  type: boolean
- doc: '<#> (stop looking for motifs when seed logp score gets above #, default: -10)'
  id: min_lp
  inputBinding:
    prefix: -minlp
  type: boolean
- doc: (allow adjustment of the degeneracy threshold for known motifs to improve p-value[dangerous])
  id: float
  inputBinding:
    prefix: -float
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
