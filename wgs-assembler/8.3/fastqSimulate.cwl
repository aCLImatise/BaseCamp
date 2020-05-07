class: CommandLineTool
id: fastqSimulate.cwl
inputs:
- id: f
  doc: Use sequences in ref.fasta as the genome.
  type: string
  inputBinding:
    prefix: -f
- id: o
  doc: Create outputs name.1.fastq and name.2.fastq (and maybe others).
  type: string
  inputBinding:
    prefix: -o
- id: l
  doc: Create reads of length 'len' bases.
  type: string
  inputBinding:
    prefix: -l
- id: n
  doc: Create 'n' reads (for -se) or 'n' pairs of reads (for -pe and -mp).
  type: string
  inputBinding:
    prefix: -n
- id: x
  doc: Set 'np' to create reads that sample the genome to 'read-cov' read coverage.
  type: string
  inputBinding:
    prefix: -x
- id: x
  doc: Set 'np' to create reads that sample the genome to 'clone-cov' clone coverage.
  type: string
  inputBinding:
    prefix: -X
- id: em
  doc: Reads will contain fraction mismatch  error 'e' (0.01 == 1% error).
  type: string
  inputBinding:
    prefix: -em
- id: ei
  doc: Reads will contain fraction insertion error 'e' (0.01 == 1% error).
  type: string
  inputBinding:
    prefix: -ei
- id: ed
  doc: Reads will contain fraction deletion  error 'e' (0.01 == 1% error).
  type: string
  inputBinding:
    prefix: -ed
- id: allow_gaps
  doc: Allow pairs to span N regions in the reference.  By default, pairs are not
    allowed to span a gap.  Reads are never allowed to cover N's.
  type: boolean
  inputBinding:
    prefix: -allowgaps
- id: all_owns
  doc: Allow reads to contain N regions.  Implies -allowgaps
  type: boolean
  inputBinding:
    prefix: -allowns
- id: no_junction
  doc: For -mp, do not create chimeric junction reads.  Create only fully PE or fully
    MP reads.
  type: boolean
  inputBinding:
    prefix: -nojunction
- id: normal
  doc: Output a normal-oriented (both forward or both reverse) pair with probability
    p.  Only for -pe and -mp.
  type: string
  inputBinding:
    prefix: -normal
- id: se
  doc: Create single-end reads.
  type: boolean
  inputBinding:
    prefix: -se
- id: cc
  doc: junkStdDev false Create chimeric single-end reads.  The chimer is formed from
    two uniformly distributed positions in the reference.  Some amount of random junk
    is inserted at the junction.  With probability 'false' the read is not chimeric,
    but still the junk bases inserted in the middle.
  type: string
  inputBinding:
    prefix: -cc
- id: pe
  doc: shearStdDev Create paired-end reads, from fragments of size 'shearSize +- shearStdDev'.
  type: string
  inputBinding:
    prefix: -pe
- id: mp
  doc: "insertStdDev shearSize shearStdDev enrichment Create mate-pair reads.  The\
    \ pairs will be 'insertSize +- insertStdDev' apart.  The circularized insert is\
    \ then sheared into fragments of size 'shearSize +- shearStdDev'.  With probability\
    \ 'enrichment' the fragment containing the junction is used to form the pair of\
    \ reads.  The junction location is uniformly distributed through this fragment.\
    \ Reads are labeled as: tMP - a MP pair fMP - a PE pair aMP - a MP pair with junction\
    \ in the first read bMP - a MP pair with junction in the second read cMP - a MP\
    \ pair with junction in both reads (the reads overlap)"
  type: string
  inputBinding:
    prefix: -mp
outputs: []
cwlVersion: v1.1
baseCommand:
- fastqSimulate
