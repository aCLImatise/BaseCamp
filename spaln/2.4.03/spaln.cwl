class: CommandLineTool
id: spaln.cwl
inputs:
- id: e
  doc: Generate local lookup table for each block
  type: boolean
  inputBinding:
    prefix: -E
- id: xc
  doc: '#    number of bit patterns < 6 (1)'
  type: boolean
  inputBinding:
    prefix: -XC
- id: xg
  doc: '#    Maximum expected gene size (inferred from genome|db size)'
  type: boolean
  inputBinding:
    prefix: -XG
- id: xk
  doc: '#    Word size (inferred from genome|db size)'
  type: boolean
  inputBinding:
    prefix: -Xk
- id: xb
  doc: '#    Block size (inferred from genome|db size)'
  type: boolean
  inputBinding:
    prefix: -Xb
- id: x_a
  doc: '#    Abundance factor (10)'
  type: boolean
  inputBinding:
    prefix: -Xa
- id: xr
  doc: '#    Minimum ORF length with -KP (30))'
  type: boolean
  inputBinding:
    prefix: -Xr
- id: g
  doc: gzipped output
  type: boolean
  inputBinding:
    prefix: -g
- id: t
  doc: '#     Mutli-thread operation with # threads'
  type: boolean
  inputBinding:
    prefix: -t
- id: e
  doc: Use local lookup table for each block
  type: boolean
  inputBinding:
    prefix: -E
- id: h
  doc: '#     Minimum score for report (35)'
  type: boolean
  inputBinding:
    prefix: -H
- id: ls
  doc: '#        semi-global or local alignment (-L)'
  type: string
  inputBinding:
    prefix: -LS
- id: m
  doc: '#[,#2]        Number of outputs per query (1) (4 if # is omitted) #2 (4) specifies
    the max number of candidate loci This option is effective only for map-and-align
    modes'
  type: boolean
  inputBinding:
    prefix: -M
- id: o
  doc: '#[,#2,..] (GvsA|C)    0:Gff3_gene; 1:alignment; 2:Gff3_match; 3:Bed; 4:exon-inf;
    5:intron-inf; 6:cDNA; 7:translated; 8:block-only; 10:SAM; 12:binary; 15:query+GS
    (4)'
  type: boolean
  inputBinding:
    prefix: -O
- id: o
  doc: '#[,#2,..] (AvsA)      0:statistics; 1:alignment; 2:Sugar; 3:Psl; 4:XYL; 5:srat+XYL;
    8:Cigar; 9:Vulgar; 10:SAM; (4)'
  type: boolean
  inputBinding:
    prefix: -O
- id: q
  doc: '#     0:DP; 1-3:HSP-Search; 4-7; Block-Search (3)'
  type: boolean
  inputBinding:
    prefix: -Q
- id: r
  doc: $     Read block information file *.bkn, *.bkp or *.bka
  type: boolean
  inputBinding:
    prefix: -R
- id: s
  doc: '#     Orientation. 0:annotation; 1:forward; 2:reverse; 3:both (3)'
  type: boolean
  inputBinding:
    prefix: -S
- id: t
  doc: $     Subdirectory where species-specific parameters reside
  type: boolean
  inputBinding:
    prefix: -T
- id: a
  doc: $     Specify AAdb. Must run `makeidx.pl -ia' breforehand
  type: boolean
  inputBinding:
    prefix: -a
- id: a
  doc: $     Same as -a but db sequences are stored in memory
  type: boolean
  inputBinding:
    prefix: -A
- id: d
  doc: $     Specify genome. Must run `makeidx.pl -i[n|p]' breforehand
  type: boolean
  inputBinding:
    prefix: -d
- id: d
  doc: $     Same as -d but db sequences are stored in memory
  type: boolean
  inputBinding:
    prefix: -D
- id: g
  doc: gzipped output in combination with -O12
  type: boolean
  inputBinding:
    prefix: -g
- id: l
  doc: '#     Number of characters per line in alignment (60)'
  type: boolean
  inputBinding:
    prefix: -l
- id: o
  doc: $     File/directory/prefix where results are written (stdout)
  type: boolean
  inputBinding:
    prefix: -o
- id: pa
  doc: "#    Remove 3' poly A >= # (0: don't remove)"
  type: boolean
  inputBinding:
    prefix: -pa
- id: pw
  doc: Report results even if the score is below the threshold
  type: boolean
  inputBinding:
    prefix: -pw
- id: pq
  doc: Quiet mode
  type: boolean
  inputBinding:
    prefix: -pq
- id: r
  doc: $     Report information about block data file
  type: boolean
  inputBinding:
    prefix: -r
- id: u
  doc: '#     Gap-extension penalty (3)'
  type: boolean
  inputBinding:
    prefix: -u
- id: v
  doc: '#     Gap-open penalty (8)'
  type: boolean
  inputBinding:
    prefix: -v
- id: w
  doc: '#     Band width for DP matrix scan (100)'
  type: boolean
  inputBinding:
    prefix: -w
- id: t
  doc: '[#]   Mutli-thread operation with # threads'
  type: boolean
  inputBinding:
    prefix: -t
- id: ya
  doc: '#    Stringency of splice site. 0->3:strong->weak'
  type: boolean
  inputBinding:
    prefix: -ya
- id: yl3
  doc: Ddouble affine gap penalty
  type: boolean
  inputBinding:
    prefix: -yl3
- id: ym
  doc: '#    Nucleotide match score (2)'
  type: boolean
  inputBinding:
    prefix: -ym
- id: yn
  doc: '#    Nucleotide mismatch score (-6)'
  type: boolean
  inputBinding:
    prefix: -yn
- id: yo
  doc: '#    Penalty for a premature termination codon (100)'
  type: boolean
  inputBinding:
    prefix: -yo
- id: yx
  doc: '#    Penalty for a frame shift error (100)'
  type: boolean
  inputBinding:
    prefix: -yx
- id: yy
  doc: '#    Weight for splice site signal (8)'
  type: boolean
  inputBinding:
    prefix: -yy
- id: y_z
  doc: '#    Weight for coding potential (2)'
  type: boolean
  inputBinding:
    prefix: -yz
- id: yb
  doc: '#    Weight for branch point signal (0)'
  type: boolean
  inputBinding:
    prefix: -yB
- id: yi
  doc: $    Intron length distribution
  type: boolean
  inputBinding:
    prefix: -yI
- id: yl
  doc: '#    Minimum expected length of intron (30)'
  type: boolean
  inputBinding:
    prefix: -yL
- id: ys
  doc: '[#]  Use species-specific parameter set (0.0/0.5)'
  type: boolean
  inputBinding:
    prefix: -yS
- id: yx0
  doc: Don't use parameter set for cross-species comparison
  type: boolean
  inputBinding:
    prefix: -yX0
- id: y_z
  doc: '#    Weight for intron potential (0)'
  type: boolean
  inputBinding:
    prefix: -yZ
- id: xg
  doc: '#    Reset maximum expected gene size, suffix k or M is effective'
  type: boolean
  inputBinding:
    prefix: -XG
outputs: []
cwlVersion: v1.1
baseCommand:
- spaln
