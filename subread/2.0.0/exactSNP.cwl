#!/usr/bin/env cwl-runner

baseCommand:
- exactSNP
class: CommandLineTool
cwlVersion: v1.0
id: exactsnp
inputs:
- doc: Specify name of an input file including read mapping results. The
  id: i
  inputBinding:
    prefix: -i
  type: File
- doc: Specify name of the file including all reference sequences. Only one single
    FASTA format file should be provided.
  id: g
  inputBinding:
    prefix: -g
  type: File
- doc: Specify name of the output file. This program outputs a VCF format file that
    includes discovered SNPs.
  id: o
  inputBinding:
    prefix: -o
  type: File
- doc: Provide a set of annotated SNPs (e.g. SNPs included in the dbSNP database).
    The supplied file should be in VCF format (gzipped file is accepted). Providing
    known SNPs to the program should improve its SNP calling performance. Note that
    the provided SNPs may or may not be called.
  id: a
  inputBinding:
    prefix: -a
  type: File
- doc: Indicate the input file provided via -i is in BAM format.
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: Specify the q-value cutoff for SNP calling at sequencing depth of 50X. 12 by
    default. The corresponding p-value cutoff is 10^(-1*Q). Note that this program
    automatically adjusts the q-value cutoff according to the sequencing depth at
    each chromosomal location.
  id: q
  inputBinding:
    prefix: -Q
  type: long
- doc: Specify the minimum fraction of mis-matched bases a SNP-containing location
    must have. Its value must between 0 and 1. 0 by default.
  id: f
  inputBinding:
    prefix: -f
  type: double
- doc: Specify the minimum number of mis-matched bases a SNP-containing location must
    have. 1 by default.
  id: n
  inputBinding:
    prefix: -n
  type: long
- doc: Specify the minimum number of mapped reads a SNP-containing location must have
    (ie. the minimum coverage). 1 by default.
  id: r
  inputBinding:
    prefix: -r
  type: long
- doc: Specify the maximum depth a SNP location is allowed to have. 1,000,000 reads
    by default. This option is useful for removing PCR artefacts.
  id: x
  inputBinding:
    prefix: -x
  type: long
- doc: Specify the minimum base quality scores (Phred scores) read bases must satisfy
    to be used for SNP calling. 13 by default. Read bases with quality scores less
    than 13 will be excluded from the analysis.
  id: s
  inputBinding:
    prefix: -s
  type: long
- doc: Specify the number of bases trimmed off from each end of the read. 3 by default.
  id: t
  inputBinding:
    prefix: -t
  type: long
- doc: Specify the number of threads. 1 by default.
  id: t
  inputBinding:
    prefix: -T
  type: long
- doc: output version of the program.
  id: v
  inputBinding:
    prefix: -v
  type: boolean
- doc: Specify the path to save the temporary files.
  id: c
  inputBinding:
    prefix: -C
  type: File
