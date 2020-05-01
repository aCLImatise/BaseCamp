#!/usr/bin/env cwl-runner

baseCommand:
- alleleCounter.pl
class: CommandLineTool
cwlVersion: v1.0
id: allelecounter.pl
inputs:
- doc: -b      BWA bam file (expects co-located index)
  id: bam
  inputBinding:
    prefix: -bam
  type: boolean
- doc: -o      Output file
  id: output
  inputBinding:
    prefix: -output
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
- doc: -l      Alternate loci file (just needs chr pos) - output is different, counts
    for each residue
  id: loci
  inputBinding:
    prefix: -loci
  type: boolean
- doc: Version number
  id: version
  inputBinding:
    prefix: -version
  type: boolean
