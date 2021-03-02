class: CommandLineTool
id: fastqToCA.cwl
inputs:
- id: in_insert_size
  doc: "d    Mates are on average i +- d bp apart.\nIf the word 'constant' follows\
    \ the insert size, no changes will be\nmade to the insert size."
  type: long?
  inputBinding:
    prefix: -insertsize
- id: in_library_name
  doc: The UID of the library these reads are added to.
  type: string?
  inputBinding:
    prefix: -libraryname
- id: in_technology
  doc: "What instrument were these reads generated on ('illumina' is the default):\n\
    'none'               -- don't set any features; use -feature to set them manually\n\
    'sanger'             -- reads from dideoxy sequencers\n'454'                --\
    \ reads from 454 Life Sciences; FLX, Titanium, FLX+\n'illumina'           -- reads\
    \ from Illumina; GAIIx, MiSeq, HiSeq; shorter than 160bp\n'illumina-long'    \
    \  -- reads from Illumina; GAIIx, MiSeq, HiSeq; any length\n'moleculo'       \
    \    -- reads from Illumina; Moleculo\n'pacbio-ccs'         -- reads from PacBio;\
    \ Circular Consensus Sequence (CSS)\n'pacbio-corrected'   -- reads from PacBio;\
    \ corrected reads from pacBioToCA\n'pacbio-raw'         -- reads from PacBio;\
    \ uncorrected reads"
  type: long?
  inputBinding:
    prefix: -technology
- id: in_type
  doc: "What type of fastq ('sanger' is the default):\n'sanger'   -- QV's are PHRED,\
    \ offset=33 '!', NCBI SRA data.\n'solexa'   -- QV's are Solexa, early Solexa data.\n\
    'illumina' -- QV's are PHRED, offset=64 '@', Illumina reads from version 1.3 on.\n\
    See Cock, et al., 'The Sanger FASTQ file format for sequences with quality scores,\
    \ and\nthe Solexa/Illumina FASTQ variants', doi:10.1093/nar/gkp1137"
  type: File?
  inputBinding:
    prefix: -type
- id: in_in_nie
  doc: The paired end reads are 5'-3' <-> 3'-5' (the usual case) (default)
  type: boolean?
  inputBinding:
    prefix: -innie
- id: in_out_tie
  doc: "The paired end reads are 3'-5' <-> 5'-3' (for Illumina Mate Pair reads)\n\
    This switch will reverse-complement every read, transforming outtie-oriented\n\
    mates into innie-oriented mates.  This trick only works if all reads are the\n\
    same length."
  type: boolean?
  inputBinding:
    prefix: -outtie
- id: in_reads
  doc: Single ended reads, in fastq format.
  type: string?
  inputBinding:
    prefix: -reads
- id: in_nonrandom
  doc: Mark the library as containing non-random reads.
  type: boolean?
  inputBinding:
    prefix: -nonrandom
- id: in_feature
  doc: V       Set feature F to value V.
  type: string?
  inputBinding:
    prefix: -feature
- id: in_stddev
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fastqToCA
