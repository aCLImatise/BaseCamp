class: CommandLineTool
id: alleleCounter.pl.cwl
inputs:
- id: bam
  doc: -b      BWA bam file (expects co-located index)
  type: boolean
  inputBinding:
    prefix: -bam
- id: output
  doc: -o      Output file
  type: boolean
  inputBinding:
    prefix: -output
- id: min_qual
  doc: Minimum base quality to include (integer) [30]
  type: boolean
  inputBinding:
    prefix: -minqual
- id: map_qual
  doc: Minimum mapping quality of read (integer) [35]
  type: boolean
  inputBinding:
    prefix: -mapqual
- id: loci
  doc: -l      Alternate loci file (just needs chr pos) - output is different, counts
    for each residue
  type: boolean
  inputBinding:
    prefix: -loci
- id: version
  doc: Version number
  type: boolean
  inputBinding:
    prefix: -version
outputs: []
cwlVersion: v1.1
baseCommand:
- alleleCounter.pl
