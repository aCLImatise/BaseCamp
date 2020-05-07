class: CommandLineTool
id: var2vcf_paired.pl.cwl
inputs:
- id: h
  doc: Print this usage.
  type: boolean
  inputBinding:
    prefix: -H
- id: c
  doc: If set, chrosomes will have names of 1,2,3,...,X,Y, instead of chr1, chr2,
    ..., chrX, chrY
  type: boolean
  inputBinding:
    prefix: -C
- id: s
  doc: If set, variants that didn't pass filters will not be present in VCF file
  type: boolean
  inputBinding:
    prefix: -S
- id: m
  doc: If set, output only candidate somatic
  type: boolean
  inputBinding:
    prefix: -M
- id: a
  doc: Indicate to output all variants at the same position.  By default, only the
    variant with the highest allele frequency is converted to VCF.
  type: boolean
  inputBinding:
    prefix: -A
- id: d
  doc: "float (0-1) # Deprecated The minimum allele frequency difference between two\
    \ samples required in addition to p-value.  Not compitable with -M option.  It's\
    \ for interest of identifying variants with different AF, not just somatic."
  type: boolean
  inputBinding:
    prefix: -D
- id: c
  doc: "int If two somatic candidates are within {int} bp, they're both filtered.\
    \  Default: 0 or no filtering"
  type: boolean
  inputBinding:
    prefix: -c
- id: i
  doc: int The maximum non-monomer MSI allowed for a HT variant with AF < 0.6.  By
    default, 12, or any variants with AF < 0.6 in a region with > 12 non-monomer MSI
    will be considered false positive.  For monomers, that number is 10.
  type: boolean
  inputBinding:
    prefix: -I
- id: m
  doc: "int The maximum mean mismatches allowed.  Default: 5.25, or if a variant is\
    \ supported by reads with more than 5.25 mismathes, it'll be considered false\
    \ positive.  Mismatches don't includes indels in the alignment."
  type: boolean
  inputBinding:
    prefix: -m
- id: n
  doc: Name(s) The sample name(s).  If only one name is given, the matched will be
    simply names as "name-match".  Two names are given separated by "|", such as "tumor|blood".
  type: boolean
  inputBinding:
    prefix: -N
- id: p
  doc: float The maximum p-value.  Default to 0.05.
  type: boolean
  inputBinding:
    prefix: -P
- id: p
  doc: 'float The minimum mean position of variants in the read.  Default: 5.'
  type: boolean
  inputBinding:
    prefix: -p
- id: q
  doc: float The minimum mean base quality.  Default to 22.5 for Illumina sequencing
  type: boolean
  inputBinding:
    prefix: -q
- id: q
  doc: float The minimum mapping quality.  Default to 0 for Illumina sequencing
  type: boolean
  inputBinding:
    prefix: -Q
- id: d
  doc: integer The minimum total depth.  Default to 5
  type: boolean
  inputBinding:
    prefix: -d
- id: v
  doc: integer The minimum variant depth.  Default to 3
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
    to 1.5.  Set it higher for deep sequencing.
  type: boolean
  inputBinding:
    prefix: -o
- id: f
  doc: float The minimum allele frequency to consider to be homozygous.  Default to
    0.2.  Thus frequency > 0.8 (1-0.2) will  be considered homozygous "1/1", between
    0.5 - (1-0.2) will be "1/0", between (-f) - 0.5 will be "0/1", below (-f) will
    be "0/0".
  type: boolean
  inputBinding:
    prefix: -F
outputs: []
cwlVersion: v1.1
baseCommand:
- var2vcf_paired.pl
