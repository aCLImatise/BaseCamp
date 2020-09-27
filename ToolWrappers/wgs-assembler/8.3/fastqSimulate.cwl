class: CommandLineTool
id: fastqSimulate.cwl
inputs:
- id: in_use_sequences_reffasta
  doc: Use sequences in ref.fasta as the genome.
  type: string
  inputBinding:
    prefix: -f
- id: in_create_outputs_namefastq
  doc: Create outputs name.1.fastq and name.2.fastq (and maybe others).
  type: double
  inputBinding:
    prefix: -o
- id: in_create_reads_length
  doc: Create reads of length 'len' bases.
  type: long
  inputBinding:
    prefix: -l
- id: in_create_pairs_reads
  doc: Create 'n' reads (for -se) or 'n' pairs of reads (for -pe and -mp).
  type: string
  inputBinding:
    prefix: -n
- id: in_set_read_coverage
  doc: Set 'np' to create reads that sample the genome to 'read-cov' read coverage.
  type: string
  inputBinding:
    prefix: -x
- id: in_set_clone_coverage
  doc: Set 'np' to create reads that sample the genome to 'clone-cov' clone coverage.
  type: string
  inputBinding:
    prefix: -X
- id: in_em
  doc: Reads will contain fraction mismatch  error 'e' (0.01 == 1% error).
  type: double
  inputBinding:
    prefix: -em
- id: in_ei
  doc: Reads will contain fraction insertion error 'e' (0.01 == 1% error).
  type: double
  inputBinding:
    prefix: -ei
- id: in_ed
  doc: Reads will contain fraction deletion  error 'e' (0.01 == 1% error).
  type: double
  inputBinding:
    prefix: -ed
- id: in_allow_gaps
  doc: "Allow pairs to span N regions in the reference.  By default, pairs\nare not\
    \ allowed to span a gap.  Reads are never allowed to cover N's."
  type: boolean
  inputBinding:
    prefix: -allowgaps
- id: in_all_owns
  doc: Allow reads to contain N regions.  Implies -allowgaps
  type: boolean
  inputBinding:
    prefix: -allowns
- id: in_no_junction
  doc: "For -mp, do not create chimeric junction reads.  Create only fully PE or\n\
    fully MP reads."
  type: boolean
  inputBinding:
    prefix: -nojunction
- id: in_normal
  doc: "Output a normal-oriented (both forward or both reverse) pair with\nprobability\
    \ p.  Only for -pe and -mp."
  type: string
  inputBinding:
    prefix: -normal
- id: in_se
  doc: Create single-end reads.
  type: boolean
  inputBinding:
    prefix: -se
- id: in_cc
  doc: "junkStdDev false\nCreate chimeric single-end reads.  The chimer is formed\
    \ from two uniformly\ndistributed positions in the reference.  Some amount of\
    \ random junk is inserted\nat the junction.  With probability 'false' the read\
    \ is not chimeric, but still\nthe junk bases inserted in the middle."
  type: long
  inputBinding:
    prefix: -cc
- id: in_pe
  doc: "shearStdDev\nCreate paired-end reads, from fragments of size 'shearSize +-\
    \ shearStdDev'."
  type: long
  inputBinding:
    prefix: -pe
- id: in_mp
  doc: "insertStdDev shearSize shearStdDev enrichment\nCreate mate-pair reads.  The\
    \ pairs will be 'insertSize +- insertStdDev'\napart.  The circularized insert\
    \ is then sheared into fragments of size\n'shearSize +- shearStdDev'.  With probability\
    \ 'enrichment' the fragment\ncontaining the junction is used to form the pair\
    \ of reads.  The junction\nlocation is uniformly distributed through this fragment.\n\
    Reads are labeled as:\ntMP - a MP pair\nfMP - a PE pair\naMP - a MP pair with\
    \ junction in the first read\nbMP - a MP pair with junction in the second read\n\
    cMP - a MP pair with junction in both reads (the reads overlap)"
  type: long
  inputBinding:
    prefix: -mp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fastqSimulate
