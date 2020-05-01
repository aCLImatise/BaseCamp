#!/usr/bin/env cwl-runner

baseCommand:
- mapsplice_multi_thread
class: CommandLineTool
cwlVersion: v1.0
id: mapsplice_multi_thread
inputs:
- doc: input quals are Phred+33 (default)
  id: phred33_quals
  inputBinding:
    prefix: --phred33-quals
  type: boolean
- doc: input quals are Phred+64 (same as --solexa1.3-quals)
  id: phred64_quals
  inputBinding:
    prefix: --phred64-quals
  type: boolean
- doc: input quals are from GA Pipeline ver. < 1.3
  id: solexa_quals
  inputBinding:
    prefix: --solexa-quals
  type: boolean
- doc: .3-quals  input quals are from GA Pipeline ver. >= 1.3
  id: solexa1
  inputBinding:
    prefix: --solexa1
  type: boolean
- doc: qualities are given as space-separated integers (not ASCII)
  id: integer_quals
  inputBinding:
    prefix: --integer-quals
  type: boolean
- doc: '/--seedmms <int> max mismatches in seed (can be 0-3, default: -n 2)'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: '/--maqerr <int>  max sum of mismatch quals across alignment for -n (def: 70)'
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: '/--seedlen <int> seed length for -n (default: 28)'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: disable Maq-like quality rounding for -n (nearest 10 <= 30)
  id: no_maq_round
  inputBinding:
    prefix: --nomaqround
  type: boolean
- doc: '/--minins <int>  minimum insert size for paired-end alignment (default: 0)'
  id: i
  inputBinding:
    prefix: -I
  type: boolean
- doc: '/--maxins <int>  maximum insert size for paired-end alignment (default: 250)'
  id: x
  inputBinding:
    prefix: -X
  type: boolean
- doc: '/--rf/--ff     -1, -2 mates align fw/rev, rev/fw, fw/fw (default: --fr)'
  id: fr
  inputBinding:
    prefix: --fr
  type: boolean
- doc: /--norc      do not align to forward/reverse-complement reference strand
  id: no_fw
  inputBinding:
    prefix: --nofw
  type: boolean
- doc: 'max # backtracks for -n 2/3 (default: 125, 800 for --best)'
  id: max_bts
  inputBinding:
    prefix: --maxbts
  type: long
- doc: 'max # attempts to find mate for anchor hit (default: 100)'
  id: pair_tries
  inputBinding:
    prefix: --pairtries
  type: long
- doc: /--tryhard       try hard to find valid alignments, at the expense of speed
  id: y
  inputBinding:
    prefix: -y
  type: boolean
- doc: 'max megabytes of RAM for best-first search frames (def: 64)'
  id: chunk_mbs
  inputBinding:
    prefix: --chunkmbs
  type: long
- doc: 'report up to <int> good alignments per read (default: 1)'
  id: k
  inputBinding:
    prefix: -k
  type: long
- doc: /--all           report all alignments per read (much slower than low -k)
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: 'suppress all alignments if > <int> exist (def: no limit)'
  id: m
  inputBinding:
    prefix: -m
  type: long
- doc: like -m, but reports 1 random hit (MAPQ=0); requires --best
  id: m
  inputBinding:
    prefix: -M
  type: long
- doc: hits guaranteed best stratum; ties broken by quality
  id: best
  inputBinding:
    prefix: --best
  type: boolean
- doc: hits in sub-optimal strata aren't reported (requires --best)
  id: strata
  inputBinding:
    prefix: --strata
  type: boolean
- doc: /--time          print wall-clock time taken by search phases
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: '/--offbase <int> leftmost ref offset = <int> in bowtie output (default: 0)'
  id: b
  inputBinding:
    prefix: -B
  type: boolean
- doc: print nothing but the alignments
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: write alignments to files refXXXXX.map, 1 map per reference
  id: ref_out
  inputBinding:
    prefix: --refout
  type: boolean
- doc: refer to ref. seqs by 0-based index rather than name
  id: ref_idx
  inputBinding:
    prefix: --refidx
  type: boolean
- doc: write aligned reads/pairs to file(s) <fname>
  id: al
  inputBinding:
    prefix: --al
  type: string
- doc: write unaligned reads/pairs to file(s) <fname>
  id: un
  inputBinding:
    prefix: --un
  type: string
- doc: write reads/pairs over -m limit to file(s) <fname>
  id: max
  inputBinding:
    prefix: --max
  type: string
- doc: suppresses given columns (comma-delim'ed) in default output
  id: suppress
  inputBinding:
    prefix: --suppress
  type: string
- doc: 'write entire ref name (default: only up to 1st space)'
  id: full_ref
  inputBinding:
    prefix: --fullref
  type: boolean
- doc: approx. fraction of SNP bases (e.g. 0.001); sets --snpphred
  id: snp_frac
  inputBinding:
    prefix: --snpfrac
  type: string
- doc: print aligned colorspace seqs as colors, not decoded bases
  id: col_cseq
  inputBinding:
    prefix: --col-cseq
  type: boolean
- doc: print original colorspace quals, not decoded quals
  id: col_c_qual
  inputBinding:
    prefix: --col-cqual
  type: boolean
- doc: keep nucleotides at extreme ends of decoded alignment
  id: col_keep_ends
  inputBinding:
    prefix: --col-keepends
  type: boolean
- doc: /--sam           write hits in SAM format
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: default mapping quality (MAPQ) to print for SAM alignments
  id: mapq
  inputBinding:
    prefix: --mapq
  type: long
- doc: supppress header lines (starting with @) for SAM output
  id: sam_no_head
  inputBinding:
    prefix: --sam-nohead
  type: boolean
- doc: supppress @SQ header lines for SAM output
  id: sam_no_sq
  inputBinding:
    prefix: --sam-nosq
  type: boolean
- doc: add <text> (usually "lab=value") to @RG line of SAM header
  id: sam_rg
  inputBinding:
    prefix: --sam-RG
  type: string
- doc: /--offrate <int> override offrate of index; must be >= index's offrate
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '/--threads <int> number of alignment threads to launch (default: 1)'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: use memory-mapped I/O for index; many 'bowtie's can share
  id: mm
  inputBinding:
    prefix: --mm
  type: boolean
- doc: use shared mem for index; many 'bowtie's can share
  id: shmem
  inputBinding:
    prefix: --shmem
  type: boolean
- doc: seed for random number generator
  id: seed
  inputBinding:
    prefix: --seed
  type: long
- doc: verbose output (for debugging)
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
