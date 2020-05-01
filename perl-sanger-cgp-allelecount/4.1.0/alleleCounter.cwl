#!/usr/bin/env cwl-runner

baseCommand:
- alleleCounter.pl
class: CommandLineTool
cwlVersion: v1.0
id: allelecounter.pl
inputs:
- doc: -b      BAM/CRAM file (expects co-located index) - if CRAM see '-ref'
  id: bam
  inputBinding:
    prefix: -bam
  type: boolean
- doc: -o      Output file [STDOUT]
  id: output
  inputBinding:
    prefix: -output
  type: boolean
- doc: -l      Alternate loci file (just needs chr pos) - output is different, counts
    for each residue
  id: loci
  inputBinding:
    prefix: -loci
  type: boolean
- doc: -r      genome.fa, required for CRAM (with colocated .fai)
  id: ref
  inputBinding:
    prefix: -ref
  type: boolean
- doc: Minimum base quality to include (integer) [30]
  id: min_qual
  inputBinding:
    prefix: -minqual
  type: boolean
- doc: Minimum mapping quality of read (integer) [35]
  id: map_qual
  inputBinding:
    prefix: -mapqual
  type: boolean
- doc: -g      flag, presence indicates loci file to be treated as gender SNPs. -
    cannot be used with 's'
  id: gender
  inputBinding:
    prefix: -gender
  type: boolean
- doc: -s      flag, presence indicates loci file is SNP6 format. - cannot be used
    with 'g' - changes output format
  id: snp6
  inputBinding:
    prefix: -snp6
  type: boolean
- doc: Version number
  id: version
  inputBinding:
    prefix: -version
  type: boolean
