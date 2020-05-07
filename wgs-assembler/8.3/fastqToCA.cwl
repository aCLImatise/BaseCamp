class: CommandLineTool
id: fastqToCA.cwl
inputs:
- id: insert_size
  doc: d    Mates are on average i +- d bp apart. If the word 'constant' follows the
    insert size, no changes will be made to the insert size.
  type: string
  inputBinding:
    prefix: -insertsize
- id: library_name
  doc: The UID of the library these reads are added to.
  type: string
  inputBinding:
    prefix: -libraryname
- id: technology
  doc: "What instrument were these reads generated on ('illumina' is the default):\
    \ 'none'               -- don't set any features; use -feature to set them manually\
    \ 'sanger'             -- reads from dideoxy sequencers '454'                --\
    \ reads from 454 Life Sciences; FLX, Titanium, FLX+ 'illumina'           -- reads\
    \ from Illumina; GAIIx, MiSeq, HiSeq; shorter than 160bp 'illumina-long'     \
    \ -- reads from Illumina; GAIIx, MiSeq, HiSeq; any length 'moleculo'         \
    \  -- reads from Illumina; Moleculo 'pacbio-ccs'         -- reads from PacBio;\
    \ Circular Consensus Sequence (CSS) 'pacbio-corrected'   -- reads from PacBio;\
    \ corrected reads from pacBioToCA 'pacbio-raw'         -- reads from PacBio; uncorrected\
    \ reads"
  type: string
  inputBinding:
    prefix: -technology
- id: type
  doc: "What type of fastq ('sanger' is the default): 'sanger'   -- QV's are PHRED,\
    \ offset=33 '!', NCBI SRA data. 'solexa'   -- QV's are Solexa, early Solexa data.\
    \ 'illumina' -- QV's are PHRED, offset=64 '@', Illumina reads from version 1.3\
    \ on. See Cock, et al., 'The Sanger FASTQ file format for sequences with quality\
    \ scores, and the Solexa/Illumina FASTQ variants', doi:10.1093/nar/gkp1137"
  type: string
  inputBinding:
    prefix: -type
- id: in_nie
  doc: The paired end reads are 5'-3' <-> 3'-5' (the usual case) (default)
  type: boolean
  inputBinding:
    prefix: -innie
- id: out_tie
  doc: The paired end reads are 3'-5' <-> 5'-3' (for Illumina Mate Pair reads) This
    switch will reverse-complement every read, transforming outtie-oriented mates
    into innie-oriented mates.  This trick only works if all reads are the same length.
  type: boolean
  inputBinding:
    prefix: -outtie
- id: reads
  doc: Single ended reads, in fastq format.
  type: string
  inputBinding:
    prefix: -reads
- id: mates
  doc: Mated reads, interlaced, in fastq format.
  type: string
  inputBinding:
    prefix: -mates
- id: mates
  doc: ',B         Mated reads, in fastq format.'
  type: string
  inputBinding:
    prefix: -mates
- id: nonrandom
  doc: Mark the library as containing non-random reads.
  type: boolean
  inputBinding:
    prefix: -nonrandom
- id: feature
  doc: V       Set feature F to value V.
  type: string
  inputBinding:
    prefix: -feature
outputs: []
cwlVersion: v1.1
baseCommand:
- fastqToCA
