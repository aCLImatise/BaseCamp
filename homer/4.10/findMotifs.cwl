class: CommandLineTool
id: findMotifs.pl.cwl
inputs:
- id: len
  doc: '<#>[,<#>,<#>...] (motif length, default=8,10,12) [NOTE: values greater 12
    may cause the program to run out of memmory - in these cases decrease the number
    of sequences analyzed]'
  type: boolean
  inputBinding:
    prefix: -len
- id: bg
  doc: '(ids to use as background, default: all genes)'
  type: string
  inputBinding:
    prefix: -bg
- id: start
  doc: <#> (offset from TSS, default=-300) [max=based on Promoter Set]
  type: boolean
  inputBinding:
    prefix: -start
- id: end
  doc: <#> (offset from TSS, default=50) [max=based on Promoter Set]
  type: boolean
  inputBinding:
    prefix: -end
- id: rna
  doc: (output RNA motif logos and compare to RNA motif database, automatically sets
    -norevopp)
  type: boolean
  inputBinding:
    prefix: -rna
- id: mask
  doc: "/-nomask (use/don't use repeatmasked files, default: -mask)"
  type: boolean
  inputBinding:
    prefix: -mask
- id: s
  doc: '<#> (Number of motifs to optimize, default: 25)'
  type: boolean
  inputBinding:
    prefix: -S
- id: mis
  doc: '<#> (global optimization: searches for strings with # mismatches, default:
    1)'
  type: boolean
  inputBinding:
    prefix: -mis
- id: no_convert
  doc: (will not worry about converting input files into unigene ids)
  type: boolean
  inputBinding:
    prefix: -noconvert
- id: norev_opp
  doc: (do not search the reverse strand for motifs)
  type: boolean
  inputBinding:
    prefix: -norevopp
- id: no_motif
  doc: (don't search for de novo motif enrichment)
  type: boolean
  inputBinding:
    prefix: -nomotif
- id: find
  doc: (This will cause the program to only scan for motifs)
  type: string
  inputBinding:
    prefix: -find
- id: enhancers_only
  doc: (do not include promoter sequence in motif search)
  type: boolean
  inputBinding:
    prefix: -enhancersOnly
- id: fast_abg
  doc: (This is recommended for fasta based analysis)
  type: string
  inputBinding:
    prefix: -fastaBg
- id: m_set
  doc: '<vertebrates|insects|worms|plants|yeast|all> (check against motif collects,
    default: auto)'
  type: boolean
  inputBinding:
    prefix: -mset
- id: basic
  doc: (don't check de novo motifs for similarity to known motifs)
  type: boolean
  inputBinding:
    prefix: -basic
- id: bits
  doc: "(scale sequence logos by information content, default: doesn't scale)"
  type: boolean
  inputBinding:
    prefix: -bits
- id: no_check
  doc: (don't check for similarity between novo motif motifs and known motifs)
  type: boolean
  inputBinding:
    prefix: -nocheck
- id: m_check
  doc: (known motifs to check against de novo motifs,
  type: string
  inputBinding:
    prefix: -mcheck
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
  doc: (uses weblogo/seqlogo/ghostscript to visualize motifs, default uses SVG)
  type: boolean
  inputBinding:
    prefix: -seqlogo
- id: b
  doc: (use binomial distribution to calculate p-values, hypergeometric is default)
  type: boolean
  inputBinding:
    prefix: -b
- id: no_go
  doc: (don't search for gene ontology enrichment)
  type: boolean
  inputBinding:
    prefix: -nogo
- id: human_go
  doc: (Convert IDs to human for GO analysis)
  type: boolean
  inputBinding:
    prefix: -humanGO
- id: ontology
  doc: '[ont.genes] ... (custom ontologies for GO analysis)'
  type: string
  inputBinding:
    prefix: -ontology
- id: no_weight
  doc: (no CG correction)
  type: boolean
  inputBinding:
    prefix: -noweight
- id: no_redun
  doc: (Don't remove predetermined redundant promoters/sequences)
  type: boolean
  inputBinding:
    prefix: -noredun
- id: g
  doc: (input file is a group file, i.e. 1st column = id, 2nd = 0 or 1 [1=target,0=back])
  type: boolean
  inputBinding:
    prefix: -g
- id: cpg
  doc: (use CpG% instead of GC% for sequence normalization)
  type: boolean
  inputBinding:
    prefix: -cpg
- id: rand
  doc: (randomize labels for target and backgound sequences)
  type: boolean
  inputBinding:
    prefix: -rand
- id: mask_motif
  doc: '[motif file 2] ... (motifs to mask before motif finding)'
  type: string
  inputBinding:
    prefix: -maskMotif
- id: opt
  doc: '[motif file 2] ... (motifs to optimize/change length)'
  type: string
  inputBinding:
    prefix: -opt
- id: peaks
  doc: (will produce peak file of promoters to use with findMotifsGenome.pl)
  type: boolean
  inputBinding:
    prefix: -peaks
- id: nowarn
  doc: (no warnings)
  type: boolean
  inputBinding:
    prefix: -nowarn
- id: keep_files
  doc: (don't delete temporary files)
  type: boolean
  inputBinding:
    prefix: -keepFiles
- id: dump_fast_a
  doc: (create target.fa and background.fa files)
  type: boolean
  inputBinding:
    prefix: -dumpFasta
- id: min
  doc: '<#> (remove sequences shorter than #, default: 0)'
  type: boolean
  inputBinding:
    prefix: -min
- id: max
  doc: '<#> (remove sequences longer than #, default: 1e10)'
  type: boolean
  inputBinding:
    prefix: -max
- id: reuse
  doc: (rerun homer using old seq files etc. with new options and ignores input list,
    organism)
  type: boolean
  inputBinding:
    prefix: -reuse
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
  doc: '<#> (length of lower-order oligos to normalize - general sequences, default:
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
- id: home_r1
  doc: (to force the use of the original homer)
  type: boolean
  inputBinding:
    prefix: -homer1
- id: min_lp
  doc: '<#> (stop looking for motifs when seed logp score gets above #, default: -10)'
  type: boolean
  inputBinding:
    prefix: -minlp
- id: float
  doc: (allow adjustment of the degeneracy threshold for known motifs to improve p-value[dangerous])
  type: boolean
  inputBinding:
    prefix: -float
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
- findMotifs.pl
