class: CommandLineTool
id: paladin_align.cwl
inputs:
- id: idx_base
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: p
  doc: disable ORF detection and treat input as protein sequence
  type: boolean
  inputBinding:
    prefix: -p
- id: b
  doc: disable brute force ORF detection
  type: boolean
  inputBinding:
    prefix: -b
- id: j
  doc: do not adjust minimum ORF length (constant value) for shorter read lengths
  type: boolean
  inputBinding:
    prefix: -J
- id: f
  doc: minimum ORF length accepted (as constant value) [250]
  type: long
  inputBinding:
    prefix: -f
- id: f
  doc: minimum ORF length accepted (as percentage of read length) [0.00]
  type: double
  inputBinding:
    prefix: -F
- id: z
  doc: '[,...]  Genetic code used for translation (-z ? for full list) [1]'
  type: long
  inputBinding:
    prefix: -z
- id: t
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -t
- id: k
  doc: minimum seed length [11]
  type: long
  inputBinding:
    prefix: -k
- id: d
  doc: off-diagonal X-dropoff [100]
  type: long
  inputBinding:
    prefix: -d
- id: r
  doc: look for internal seeds inside a seed longer than {-k} * FLOAT [1.5]
  type: double
  inputBinding:
    prefix: -r
- id: y
  doc: seed occurrence for the 3rd round seeding [20]
  type: long
  inputBinding:
    prefix: -y
- id: c
  doc: skip seeds with more than INT occurrences [500]
  type: long
  inputBinding:
    prefix: -c
- id: d
  doc: drop chains shorter than FLOAT fraction of the longest overlapping chain [0.50]
  type: double
  inputBinding:
    prefix: -D
- id: w
  doc: discard a chain if seeded bases shorter than INT [0]
  type: long
  inputBinding:
    prefix: -W
- id: m
  doc: perform at most INT rounds of mate rescues for each read [50]
  type: long
  inputBinding:
    prefix: -m
- id: e
  doc: discard full-length exact matches
  type: boolean
  inputBinding:
    prefix: -e
- id: a
  doc: score for a sequence match, which scales options -TdBOELU unless overridden
    [1]
  type: long
  inputBinding:
    prefix: -A
- id: b
  doc: penalty for a mismatch [3]
  type: long
  inputBinding:
    prefix: -B
- id: o
  doc: gap open penalties for deletions and insertions [0,0]
  type:
  - long
  inputBinding:
    prefix: -O
- id: e
  doc: gap extension penalty; a gap of size k cost '{-O} + {-E}*k' [1,1]
  type:
  - long
  inputBinding:
    prefix: -E
- id: l
  doc: penalty for 5'- and 3'-end clipping [0,0]
  type:
  - long
  inputBinding:
    prefix: -L
- id: u
  doc: penalty for an unpaired read pair [17]
  type: long
  inputBinding:
    prefix: -U
- id: x
  doc: 'read type. Setting -x changes multiple parameters unless overriden [null]
    pacbio: -k17 -W40 -r10 -A1 -B1 -O1 -E1 -L0  (PacBio reads to ref) ont2d: -k14
    -W20 -r10 -A1 -B1 -O1 -E1 -L0  (Oxford Nanopore 2D-reads to ref) intractg: -B9
    -O16 -L5  (intra-species contigs to ref)'
  type: string
  inputBinding:
    prefix: -x
- id: o
  doc: 'activate PALADIN reporting using STR as an output file prefix.  Files generated
    as follows: STR.sam - alignment data (will not be sent to stdout) STR_uniprot.tsv
    - Tab delimited UniProt report (normal alignment mode) STR_uniprot_primary.tsv
    - Tab delimited UniProt report, primary alignments (all alignments mode) STR_uniprot_secondary.tsv
    - Tab delimited UniProt report, secondary alignments (all alignments mode)'
  type: string
  inputBinding:
    prefix: -o
- id: u
  doc: 'report type generated when using reporting and a UniProt reference [1] 0:
    Simple ID summary report 1: Detailed report (Contacts uniprot.org)'
  type: long
  inputBinding:
    prefix: -u
- id: p
  doc: HTTP or SOCKS proxy address
  type: string
  inputBinding:
    prefix: -P
- id: g
  doc: generate detected ORF nucleotide sequence FASTA
  type: boolean
  inputBinding:
    prefix: -g
- id: n
  doc: keep protein sequence after alignment
  type: boolean
  inputBinding:
    prefix: -n
- id: r
  doc: read group header line such as '@RG\tID:foo\tSM:bar' [null]
  type: string
  inputBinding:
    prefix: -R
- id: h
  doc: /FILE   insert STR to header if it starts with @; or insert lines in FILE [null]
  type: string
  inputBinding:
    prefix: -H
- id: j
  doc: treat ALT contigs as part of the primary assembly (i.e. ignore <idxbase>.alt
    file)
  type: boolean
  inputBinding:
    prefix: -j
- id: v
  doc: 'verbose level: 1=error, 2=warning, 3=message, 4+=debugging [3]'
  type: long
  inputBinding:
    prefix: -v
- id: t
  doc: minimum score to output [15]
  type: long
  inputBinding:
    prefix: -T
- id: h
  doc: if there are <INT hits with score >80% of the max score, output all in XA [5,200]
  type:
  - long
  inputBinding:
    prefix: -h
- id: a
  doc: output all alignments for SE or unpaired PE
  type: boolean
  inputBinding:
    prefix: -a
- id: c
  doc: append FASTA/FASTQ comment to SAM output
  type: boolean
  inputBinding:
    prefix: -C
- id: v
  doc: output the reference FASTA header in the XR tag
  type: boolean
  inputBinding:
    prefix: -V
- id: y
  doc: use soft clipping for supplementary alignments
  type: boolean
  inputBinding:
    prefix: -Y
- id: m
  doc: mark shorter split hits as secondary
  type: boolean
  inputBinding:
    prefix: -M
- id: i
  doc: specify the mean, standard deviation (10% of the mean if absent), max (4 sigma
    from the mean if absent) and min of the insert size distribution. FR orientation
    only. [inferred]
  type:
  - double
  - long
  inputBinding:
    prefix: -I
outputs: []
cwlVersion: v1.1
baseCommand:
- paladin
- align
