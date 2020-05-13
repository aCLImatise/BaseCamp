class: CommandLineTool
id: ngshmmalign.cwl
inputs:
- id: r
  doc: File containing the profile/MSA of the  reference
  type: string
  inputBinding:
    prefix: -r
- id: r
  doc: File containing the profile/MSA of the  reference. Will perform a comprehensive  parameter
    estimation using MAFFT. Mutually  exclusive with -r option
  type: string
  inputBinding:
    prefix: -R
- id: o
  doc: (=aln.sam)                Filename where alignment will be written to
  type: string
  inputBinding:
    prefix: -o
- id: w
  doc: '[ --wrong ] arg (=/dev/null)  Filename where alignment will be written  that
    are filtered (too short, unpaired)'
  type: boolean
  inputBinding:
    prefix: -w
- id: t
  doc: (=8)                      Number of threads to use for alignment.  Defaults
    to number of logical cores found
  type: string
  inputBinding:
    prefix: -t
- id: l
  doc: Do not clean up MAFFT temporary MSA files
  type: boolean
  inputBinding:
    prefix: -l
- id: e
  doc: Use full-exhaustive search, avoiding indexed lookup
  type: boolean
  inputBinding:
    prefix: -E
- id: x
  doc: Replace general aligned state 'M' with '='  (match) and 'X' (mismatch) in CIGAR
  type: boolean
  inputBinding:
    prefix: -X
- id: n
  doc: (=CONSENSUS)              Name of consensus reference contig that will be created
  type: string
  inputBinding:
    prefix: -N
- id: u
  doc: Loci with ambiguous bases get their emission probabilities according to their
    allele  frequencies. In practice this is  undesirable, as it leads to systematic  accumulation
    of gaps in homopolymeric  regions with SNVs
  type: boolean
  inputBinding:
    prefix: -U
- id: s
  doc: '[ --seed ] arg (=42)          Value of seed for deterministic run. A value
    of 0 will pick a random seed from some  non-deterministic entropy source'
  type: boolean
  inputBinding:
    prefix: -s
- id: hard
  doc: Hard-clip reads. Clipped bases will NOT be  in the sequence in the alignment
  type: boolean
  inputBinding:
    prefix: --hard
- id: hard
  doc: Extreme Hard-clip reads. Do not write  hard-clip in CIGAR, as if the hard-clipped  bases
    never existed. Mutually exclusive with previous option
  type: boolean
  inputBinding:
    prefix: --HARD
- id: v
  doc: Show progress indicator while aligning
  type: boolean
  inputBinding:
    prefix: -v
- id: m
  doc: (=L * 0.8)                Minimum mapped length of read
  type: string
  inputBinding:
    prefix: -M
- id: a
  doc: (=0.05)                   Minimum frequency for calling ambiguous base
  type: string
  inputBinding:
    prefix: -a
- id: error
  doc: (=0.005)             Global substitution probability
  type: string
  inputBinding:
    prefix: --error
- id: go
  doc: (=1e-4)                 Gap open probability
  type: string
  inputBinding:
    prefix: --go
- id: ge
  doc: (=0.30)                 Gap extend probability
  type: string
  inputBinding:
    prefix: --ge
- id: io
  doc: (=5e-5)                 Insert open probability
  type: string
  inputBinding:
    prefix: --io
- id: ie
  doc: (=0.50)                 Insert extend probability
  type: string
  inputBinding:
    prefix: --ie
- id: ep
  doc: (=1/L)                  Jump to end probability; usually 1/L, where  L is the
    average length of the reads
  type: string
  inputBinding:
    prefix: --ep
- id: lco
  doc: (=0.10)                Left clip open probability
  type: string
  inputBinding:
    prefix: --lco
- id: lce
  doc: (=0.90)                Left clip extend probability
  type: string
  inputBinding:
    prefix: --lce
- id: rco
  doc: (=lco/L)               Right clip open probability
  type: string
  inputBinding:
    prefix: --rco
- id: rce
  doc: (=0.90)                Right clip extend probability
  type: string
  inputBinding:
    prefix: --rce
outputs: []
cwlVersion: v1.1
baseCommand:
- ngshmmalign
