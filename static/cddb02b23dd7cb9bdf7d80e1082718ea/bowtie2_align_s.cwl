class: CommandLineTool
id: bowtie2_align_s.cwl
inputs:
- id: trim_to
  doc: "[3:|5:]<int> trim reads exceeding <int> bases from either 3' or 5' end If\
    \ the read end is not specified then it defaults to 3 (0)"
  type: boolean
  inputBinding:
    prefix: --trim-to
- id: phred33
  doc: qualities are Phred+33 (default)
  type: boolean
  inputBinding:
    prefix: --phred33
- id: phred64
  doc: qualities are Phred+64
  type: boolean
  inputBinding:
    prefix: --phred64
- id: int_quals
  doc: qualities encoded as space-delimited integers
  type: boolean
  inputBinding:
    prefix: --int-quals
- id: very_fast
  doc: -D 5 -R 1 -N 0 -L 22 -i S,0,2.50
  type: boolean
  inputBinding:
    prefix: --very-fast
- id: fast
  doc: -D 10 -R 2 -N 0 -L 22 -i S,0,2.50
  type: boolean
  inputBinding:
    prefix: --fast
- id: sensitive
  doc: -D 15 -R 2 -N 0 -L 22 -i S,1,1.15 (default)
  type: boolean
  inputBinding:
    prefix: --sensitive
- id: very_sensitive
  doc: -D 20 -R 3 -N 0 -L 20 -i S,1,0.50
  type: boolean
  inputBinding:
    prefix: --very-sensitive
- id: very_fast_local
  doc: -D 5 -R 1 -N 0 -L 25 -i S,1,2.00
  type: boolean
  inputBinding:
    prefix: --very-fast-local
- id: fast_local
  doc: -D 10 -R 2 -N 0 -L 22 -i S,1,1.75
  type: boolean
  inputBinding:
    prefix: --fast-local
- id: sensitive_local
  doc: -D 15 -R 2 -N 0 -L 20 -i S,1,0.75 (default)
  type: boolean
  inputBinding:
    prefix: --sensitive-local
- id: very_sensitive_local
  doc: 20 -R 3 -N 0 -L 20 -i S,1,0.50
  type: boolean
  inputBinding:
    prefix: --very-sensitive-local
- id: local
  doc: local alignment; ends might be soft clipped (off)
  type: boolean
  inputBinding:
    prefix: --local
- id: ma
  doc: 'match bonus (0 for --end-to-end, 2 for --local) '
  type: long
  inputBinding:
    prefix: --ma
- id: mp
  doc: max penalty for mismatch; lower qual = lower penalty (6)
  type: long
  inputBinding:
    prefix: --mp
- id: np
  doc: penalty for non-A/C/G/Ts in read/ref (1)
  type: long
  inputBinding:
    prefix: --np
- id: rdg
  doc: ',<int>  read gap open, extend penalties (5,3)'
  type: long
  inputBinding:
    prefix: --rdg
- id: rfg
  doc: ',<int>  reference gap open, extend penalties (5,3)'
  type: long
  inputBinding:
    prefix: --rfg
- id: score_min
  doc: min acceptable alignment score w/r/t read length (G,20,8 for local, L,-0.6,-0.6
    for end-to-end)
  type: string
  inputBinding:
    prefix: --score-min
- id: a
  doc: /--all           report all alignments; very slow, MAPQ not meaningful
  type: boolean
  inputBinding:
    prefix: -a
- id: d
  doc: give up extending after <int> failed extends in a row (15)
  type: long
  inputBinding:
    prefix: -D
- id: r
  doc: for reads w/ repetitive seeds, try <int> sets of seeds (2)
  type: long
  inputBinding:
    prefix: -R
- id: i
  doc: /--minins <int>  minimum fragment length (0)
  type: boolean
  inputBinding:
    prefix: -I
- id: x
  doc: /--maxins <int>  maximum fragment length (500)
  type: boolean
  inputBinding:
    prefix: -X
- id: fr
  doc: /--rf/--ff     -1, -2 mates align fw/rev, rev/fw, fw/fw (--fr)
  type: boolean
  inputBinding:
    prefix: --fr
- id: no_mixed
  doc: suppress unpaired alignments for paired reads
  type: boolean
  inputBinding:
    prefix: --no-mixed
- id: no_discordant
  doc: suppress discordant alignments for paired reads
  type: boolean
  inputBinding:
    prefix: --no-discordant
- id: dovetail
  doc: concordant when mates extend past each other
  type: boolean
  inputBinding:
    prefix: --dovetail
- id: no_contain
  doc: not concordant when one mate alignment contains other
  type: boolean
  inputBinding:
    prefix: --no-contain
- id: no_overlap
  doc: not concordant when mates overlap at all
  type: boolean
  inputBinding:
    prefix: --no-overlap
- id: preserve_tags
  doc: Preserve tags from the original BAM record by appending them to the end of
    the corresponding SAM output.
  type: boolean
  inputBinding:
    prefix: --preserve-tags
- id: xeq
  doc: Use '='/'X', instead of 'M,' to specify matches/mismatches in SAM record.
  type: boolean
  inputBinding:
    prefix: --xeq
- id: soft_clipped_unmapped_tlen
  doc: soft-clipped bases when reporting TLEN
  type: string
  inputBinding:
    prefix: --soft-clipped-unmapped-tlen
- id: p
  doc: /--threads <int> number of alignment threads to launch (1)
  type: boolean
  inputBinding:
    prefix: -p
- id: reorder
  doc: force SAM output order to match order of input reads
  type: boolean
  inputBinding:
    prefix: --reorder
- id: mm
  doc: use memory-mapped I/O for index; many 'bowtie's can share
  type: boolean
  inputBinding:
    prefix: --mm
- id: qc_filter
  doc: filter out reads that are bad according to QSEQ filter
  type: boolean
  inputBinding:
    prefix: --qc-filter
- id: seed
  doc: seed for random number generator (0)
  type: long
  inputBinding:
    prefix: --seed
- id: non_deterministic
  doc: rand. gen. arbitrarily instead of using read attributes
  type: string
  inputBinding:
    prefix: --non-deterministic
outputs: []
cwlVersion: v1.1
baseCommand:
- bowtie2-align-s
