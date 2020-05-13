class: CommandLineTool
id: var2vcf_valid.pl.cwl
inputs:
- id: h
  doc: this usage.
  type: string
  inputBinding:
    prefix: -h
- id: h
  doc: this usage.
  type: string
  inputBinding:
    prefix: -H
- id: s
  doc: set, variants that didn't pass filters will not be present in VCF file
  type: string
  inputBinding:
    prefix: -S
- id: a
  doc: amplicon based variant calling.  Variant not supported by all amplicons will
    be considered false positve, with filter set to "AMPBIAS".
  type: string
  inputBinding:
    prefix: -a
- id: a
  doc: to output all variants at the same position.  By default, only the variant
    with the highest allele frequency is converted to VCF.
  type: string
  inputBinding:
    prefix: -A
- id: c
  doc: "int If two seemingly high quality SNV variants are within {int} bp, they're\
    \ both filtered.  Default: 0, or no filtering"
  type: boolean
  inputBinding:
    prefix: -c
- id: i
  doc: int The maximum non-monomer MSI allowed for a HT variant with AF < 0.5.  By
    default, 12, or any variants with AF < 0.5 in a region with >6 non-monomer MSI
    will be considered false positive.  For monomers, that number is 13.
  type: boolean
  inputBinding:
    prefix: -I
- id: m
  doc: "double The maximum mean mismatches allowed.  Default: 5.25, or if a variant\
    \ is supported by reads with more than 5.25 mean mismathes, it'll be considered\
    \ false positive.  Mismatches don't includes indels in the alignment."
  type: boolean
  inputBinding:
    prefix: -m
- id: p
  doc: 'float The minimum mean position of variants in the read.  Default: 8.'
  type: boolean
  inputBinding:
    prefix: -p
- id: p
  doc: '0 or 1 Whehter to filter variants with pstd = 0.  Default: 1 or yes.  Set
    it to 0 for targeted PCR based sequencing, where pstd is expected.'
  type: boolean
  inputBinding:
    prefix: -P
- id: q
  doc: float The minimum mean base quality.  Default to 22.5 for Illumina sequencing
  type: boolean
  inputBinding:
    prefix: -q
- id: q
  doc: float The minimum mapping quality.  Default to 10.0 for Illumina sequencing.  Variants
    with lower quality (<10) will be kept only if af >= 0.8
  type: boolean
  inputBinding:
    prefix: -Q
- id: d
  doc: integer The minimum total depth.  Default to 3, might consider lower depth
    if (high quality variant count)*af >= 0.5
  type: boolean
  inputBinding:
    prefix: -d
- id: v
  doc: integer The minimum high quality variant depth.  Default to 2.  Would consider
    lower depth (high quality variant count)*af >= 0.5
  type: boolean
  inputBinding:
    prefix: -v
- id: f
  doc: float The minimum allele frequency.  Default to 0.02
  type: boolean
  inputBinding:
    prefix: -f
- id: o
  doc: signal/noise The minimum signal to noise, or the ratio of hi/(lo+0.5).  Default
    to 1.5, that is both 2 variant reads are high quality.
  type: boolean
  inputBinding:
    prefix: -o
- id: f
  doc: float The minimum allele frequency to consider to be homozygous.  Default to
    0.2.  Thus frequency < 0.2 will  be considered homozygous REF, while frequency
    > 0.2 will be considered homozygous ALT.
  type: boolean
  inputBinding:
    prefix: -F
- id: n
  doc: string The sample name to be used directly.
  type: boolean
  inputBinding:
    prefix: -N
- id: e
  doc: If set, do not print END tag
  type: boolean
  inputBinding:
    prefix: -E
- id: t
  doc: 'integer The minimum number of split reads for SV.  Default: 1.  Change to
    0 if you want SV called from discordant pairs only. -b  Path to the *.bed file
    which is used to generate contigs in the header'
  type: boolean
  inputBinding:
    prefix: -T
outputs: []
cwlVersion: v1.1
baseCommand:
- var2vcf_valid.pl
