class: CommandLineTool
id: MapCaller.cwl
inputs:
- id: i
  doc: BWT_Index_Prefix
  type: string
  inputBinding:
    prefix: -i
- id: r
  doc: Reference filename (format:fa)
  type: string
  inputBinding:
    prefix: -r
- id: f
  doc: 'files with #1 mates reads (format:fa, fq, fq.gz)'
  type: boolean
  inputBinding:
    prefix: -f
- id: f2
  doc: 'files with #2 mates reads (format:fa, fq, fq.gz)'
  type: boolean
  inputBinding:
    prefix: -f2
- id: t
  doc: number of threads [16]
  type: long
  inputBinding:
    prefix: -t
- id: size
  doc: sequencing fragment size [500]
  type: boolean
  inputBinding:
    prefix: -size
- id: in_del
  doc: maximal indel size [30]
  type: long
  inputBinding:
    prefix: -indel
- id: ad
  doc: minimal ALT allele count [5]
  type: long
  inputBinding:
    prefix: -ad
- id: dup
  doc: maximal PCR duplicates [5]
  type: long
  inputBinding:
    prefix: -dup
- id: max_mm
  doc: maximal mismatch rate in read alignment [0.05]
  type: double
  inputBinding:
    prefix: -maxmm
- id: max_clip
  doc: maximal clip size at either ends [5]
  type: long
  inputBinding:
    prefix: -maxclip
- id: sam
  doc: SAM output filename [NULL]
  type: boolean
  inputBinding:
    prefix: -sam
- id: bam
  doc: BAM output filename [NULL]
  type: boolean
  inputBinding:
    prefix: -bam
- id: alg
  doc: 'gapped alignment algorithm (option: nw|ksw2)'
  type: string
  inputBinding:
    prefix: -alg
- id: vcf
  doc: VCF output filename [output.vcf]
  type: boolean
  inputBinding:
    prefix: -vcf
- id: gvc_f
  doc: GVCF mode [false]
  type: boolean
  inputBinding:
    prefix: -gvcf
- id: log
  doc: log filename [job.log]
  type: string
  inputBinding:
    prefix: -log
- id: monomorphic
  doc: report all loci which do not have any potential alternates.
  type: boolean
  inputBinding:
    prefix: -monomorphic
- id: min_cnv
  doc: the minimal cnv size to be reported [50].
  type: long
  inputBinding:
    prefix: -min_cnv
- id: min_gap
  doc: the minimal gap(unmapped) size to be reported [50].
  type: long
  inputBinding:
    prefix: -min_gap
- id: ploidy
  doc: number of sets of chromosomes in a cell (1:monoploid, 2:diploid) [2]
  type: long
  inputBinding:
    prefix: -ploidy
- id: m
  doc: output multiple alignments
  type: boolean
  inputBinding:
    prefix: -m
- id: somatic
  doc: detect somatic mutations [false]
  type: boolean
  inputBinding:
    prefix: -somatic
- id: no_vcf
  doc: No VCF output [false]
  type: boolean
  inputBinding:
    prefix: -no_vcf
- id: p
  doc: paired-end reads are interlaced in the same file
  type: boolean
  inputBinding:
    prefix: -p
- id: filter
  doc: apply variant filters (under test) [false]
  type: boolean
  inputBinding:
    prefix: -filter
- id: v
  doc: version
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- MapCaller
