class: CommandLineTool
id: alleleCounter.pl.cwl
inputs:
- id: bam
  doc: -b      BAM/CRAM file (expects co-located index) - if CRAM see '-ref'
  type: boolean
  inputBinding:
    prefix: -bam
- id: output
  doc: -o      Output file [STDOUT]
  type: boolean
  inputBinding:
    prefix: -output
- id: loci
  doc: -l      Alternate loci file (just needs chr pos) - output is different, counts
    for each residue
  type: boolean
  inputBinding:
    prefix: -loci
- id: ref
  doc: -r      genome.fa, required for CRAM (with colocated .fai)
  type: boolean
  inputBinding:
    prefix: -ref
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
- id: gender
  doc: -g      flag, presence indicates loci file to be treated as gender SNPs. -
    cannot be used with 's'
  type: boolean
  inputBinding:
    prefix: -gender
- id: snp6
  doc: -s      flag, presence indicates loci file is SNP6 format. - cannot be used
    with 'g' - changes output format
  type: boolean
  inputBinding:
    prefix: -snp6
- id: version
  doc: Version number
  type: boolean
  inputBinding:
    prefix: -version
outputs: []
cwlVersion: v1.1
baseCommand:
- alleleCounter.pl
