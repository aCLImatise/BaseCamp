class: CommandLineTool
id: mapsplice_multi_thread.cwl
inputs:
- id: phred33_quals
  doc: input quals are Phred+33 (default)
  type: boolean
  inputBinding:
    prefix: --phred33-quals
- id: phred64_quals
  doc: input quals are Phred+64 (same as --solexa1.3-quals)
  type: boolean
  inputBinding:
    prefix: --phred64-quals
- id: solexa_quals
  doc: input quals are from GA Pipeline ver. < 1.3
  type: boolean
  inputBinding:
    prefix: --solexa-quals
- id: solexa1
  doc: .3-quals  input quals are from GA Pipeline ver. >= 1.3
  type: boolean
  inputBinding:
    prefix: --solexa1
- id: integer_quals
  doc: qualities are given as space-separated integers (not ASCII)
  type: boolean
  inputBinding:
    prefix: --integer-quals
- id: n
  doc: '/--seedmms <int> max mismatches in seed (can be 0-3, default: -n 2)'
  type: boolean
  inputBinding:
    prefix: -n
- id: e
  doc: '/--maqerr <int>  max sum of mismatch quals across alignment for -n (def: 70)'
  type: boolean
  inputBinding:
    prefix: -e
- id: l
  doc: '/--seedlen <int> seed length for -n (default: 28)'
  type: boolean
  inputBinding:
    prefix: -l
- id: no_maq_round
  doc: disable Maq-like quality rounding for -n (nearest 10 <= 30)
  type: boolean
  inputBinding:
    prefix: --nomaqround
- id: i
  doc: '/--minins <int>  minimum insert size for paired-end alignment (default: 0)'
  type: boolean
  inputBinding:
    prefix: -I
- id: x
  doc: '/--maxins <int>  maximum insert size for paired-end alignment (default: 250)'
  type: boolean
  inputBinding:
    prefix: -X
- id: fr
  doc: '/--rf/--ff     -1, -2 mates align fw/rev, rev/fw, fw/fw (default: --fr)'
  type: boolean
  inputBinding:
    prefix: --fr
- id: no_fw
  doc: /--norc      do not align to forward/reverse-complement reference strand
  type: boolean
  inputBinding:
    prefix: --nofw
- id: max_bts
  doc: 'max # backtracks for -n 2/3 (default: 125, 800 for --best)'
  type: long
  inputBinding:
    prefix: --maxbts
- id: pair_tries
  doc: 'max # attempts to find mate for anchor hit (default: 100)'
  type: long
  inputBinding:
    prefix: --pairtries
- id: y
  doc: /--tryhard       try hard to find valid alignments, at the expense of speed
  type: boolean
  inputBinding:
    prefix: -y
- id: chunk_mbs
  doc: 'max megabytes of RAM for best-first search frames (def: 64)'
  type: long
  inputBinding:
    prefix: --chunkmbs
- id: k
  doc: 'report up to <int> good alignments per read (default: 1)'
  type: long
  inputBinding:
    prefix: -k
- id: a
  doc: /--all           report all alignments per read (much slower than low -k)
  type: boolean
  inputBinding:
    prefix: -a
- id: m
  doc: 'suppress all alignments if > <int> exist (def: no limit)'
  type: long
  inputBinding:
    prefix: -m
- id: m
  doc: like -m, but reports 1 random hit (MAPQ=0); requires --best
  type: long
  inputBinding:
    prefix: -M
- id: best
  doc: hits guaranteed best stratum; ties broken by quality
  type: boolean
  inputBinding:
    prefix: --best
- id: strata
  doc: hits in sub-optimal strata aren't reported (requires --best)
  type: boolean
  inputBinding:
    prefix: --strata
- id: t
  doc: /--time          print wall-clock time taken by search phases
  type: boolean
  inputBinding:
    prefix: -t
- id: b
  doc: '/--offbase <int> leftmost ref offset = <int> in bowtie output (default: 0)'
  type: boolean
  inputBinding:
    prefix: -B
- id: quiet
  doc: print nothing but the alignments
  type: boolean
  inputBinding:
    prefix: --quiet
- id: ref_out
  doc: write alignments to files refXXXXX.map, 1 map per reference
  type: boolean
  inputBinding:
    prefix: --refout
- id: ref_idx
  doc: refer to ref. seqs by 0-based index rather than name
  type: boolean
  inputBinding:
    prefix: --refidx
- id: al
  doc: write aligned reads/pairs to file(s) <fname>
  type: string
  inputBinding:
    prefix: --al
- id: un
  doc: write unaligned reads/pairs to file(s) <fname>
  type: string
  inputBinding:
    prefix: --un
- id: max
  doc: write reads/pairs over -m limit to file(s) <fname>
  type: string
  inputBinding:
    prefix: --max
- id: suppress
  doc: suppresses given columns (comma-delim'ed) in default output
  type: string
  inputBinding:
    prefix: --suppress
- id: full_ref
  doc: 'write entire ref name (default: only up to 1st space)'
  type: boolean
  inputBinding:
    prefix: --fullref
- id: snp_frac
  doc: approx. fraction of SNP bases (e.g. 0.001); sets --snpphred
  type: string
  inputBinding:
    prefix: --snpfrac
- id: col_cseq
  doc: print aligned colorspace seqs as colors, not decoded bases
  type: boolean
  inputBinding:
    prefix: --col-cseq
- id: col_c_qual
  doc: print original colorspace quals, not decoded quals
  type: boolean
  inputBinding:
    prefix: --col-cqual
- id: col_keep_ends
  doc: keep nucleotides at extreme ends of decoded alignment
  type: boolean
  inputBinding:
    prefix: --col-keepends
- id: s
  doc: /--sam           write hits in SAM format
  type: boolean
  inputBinding:
    prefix: -S
- id: mapq
  doc: default mapping quality (MAPQ) to print for SAM alignments
  type: long
  inputBinding:
    prefix: --mapq
- id: sam_no_head
  doc: supppress header lines (starting with @) for SAM output
  type: boolean
  inputBinding:
    prefix: --sam-nohead
- id: sam_no_sq
  doc: supppress @SQ header lines for SAM output
  type: boolean
  inputBinding:
    prefix: --sam-nosq
- id: sam_rg
  doc: add <text> (usually "lab=value") to @RG line of SAM header
  type: string
  inputBinding:
    prefix: --sam-RG
- id: o
  doc: /--offrate <int> override offrate of index; must be >= index's offrate
  type: boolean
  inputBinding:
    prefix: -o
- id: p
  doc: '/--threads <int> number of alignment threads to launch (default: 1)'
  type: boolean
  inputBinding:
    prefix: -p
- id: mm
  doc: use memory-mapped I/O for index; many 'bowtie's can share
  type: boolean
  inputBinding:
    prefix: --mm
- id: shmem
  doc: use shared mem for index; many 'bowtie's can share
  type: boolean
  inputBinding:
    prefix: --shmem
- id: seed
  doc: seed for random number generator
  type: long
  inputBinding:
    prefix: --seed
- id: verbose
  doc: verbose output (for debugging)
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- mapsplice_multi_thread
