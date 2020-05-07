class: CommandLineTool
id: exactSNP.cwl
inputs:
- id: i
  doc: Specify name of an input file including read mapping results. The
  type: File
  inputBinding:
    prefix: -i
- id: g
  doc: Specify name of the file including all reference sequences. Only one single
    FASTA format file should be provided.
  type: File
  inputBinding:
    prefix: -g
- id: o
  doc: Specify name of the output file. This program outputs a VCF format file that
    includes discovered SNPs.
  type: File
  inputBinding:
    prefix: -o
- id: a
  doc: Provide a set of annotated SNPs (e.g. SNPs included in the dbSNP database).
    The supplied file should be in VCF format (gzipped file is accepted). Providing
    known SNPs to the program should improve its SNP calling performance. Note that
    the provided SNPs may or may not be called.
  type: File
  inputBinding:
    prefix: -a
- id: b
  doc: Indicate the input file provided via -i is in BAM format.
  type: boolean
  inputBinding:
    prefix: -b
- id: q
  doc: Specify the q-value cutoff for SNP calling at sequencing depth of 50X. 12 by
    default. The corresponding p-value cutoff is 10^(-1*Q). Note that this program
    automatically adjusts the q-value cutoff according to the sequencing depth at
    each chromosomal location.
  type: long
  inputBinding:
    prefix: -Q
- id: f
  doc: Specify the minimum fraction of mis-matched bases a SNP-containing location
    must have. Its value must between 0 and 1. 0 by default.
  type: double
  inputBinding:
    prefix: -f
- id: n
  doc: Specify the minimum number of mis-matched bases a SNP-containing location must
    have. 1 by default.
  type: long
  inputBinding:
    prefix: -n
- id: r
  doc: Specify the minimum number of mapped reads a SNP-containing location must have
    (ie. the minimum coverage). 1 by default.
  type: long
  inputBinding:
    prefix: -r
- id: x
  doc: Specify the maximum depth a SNP location is allowed to have. 1,000,000 reads
    by default. This option is useful for removing PCR artefacts.
  type: long
  inputBinding:
    prefix: -x
- id: s
  doc: Specify the minimum base quality scores (Phred scores) read bases must satisfy
    to be used for SNP calling. 13 by default. Read bases with quality scores less
    than 13 will be excluded from the analysis.
  type: long
  inputBinding:
    prefix: -s
- id: t
  doc: Specify the number of bases trimmed off from each end of the read. 3 by default.
  type: long
  inputBinding:
    prefix: -t
- id: t
  doc: Specify the number of threads. 1 by default.
  type: long
  inputBinding:
    prefix: -T
- id: v
  doc: output version of the program.
  type: boolean
  inputBinding:
    prefix: -v
- id: c
  doc: Specify the path to save the temporary files.
  type: File
  inputBinding:
    prefix: -C
outputs: []
cwlVersion: v1.1
baseCommand:
- exactSNP
