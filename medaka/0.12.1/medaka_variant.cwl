#!/usr/bin/env cwl-runner

baseCommand:
- medaka_variant
class: CommandLineTool
cwlVersion: v1.0
id: medaka_variant
inputs:
- doc: input bam of reads aligned to ref. Read groups are currently ignored, so the
    bam should only contain reads from a single sample.
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: input fasta input reference (required).
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: 'region string(s). If providing multiple regions, wrap them in quotes. If not
    provided, will process all contigs in bam. '
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: 'output folder (default: medaka_variant).'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: "medaka model for initial SNP calling from mixed reads prior to phasing, (default:\
    \ r941_prom_snp_g322). Available: r941_min_high_g330, r941_min_high_g344, r941_min_high_g351,\
    \ r941_prom_high_g330, r941_prom_high_g344, r941_prom_high_g351, r941_min_high_g340_rle,\
    \ r103_min_high_g345, r941_prom_snp_g322, r941_prom_variant_g322, r103_prom_snp_g3210,\
    \ r103_prom_variant_g3210. Alternatively a .hdf file from 'medaka train'. "
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: "medaka model for final variant calling from phased reads, (default: r941_prom_variant_g322).\
    \ Available: r941_min_high_g330, r941_min_high_g344, r941_min_high_g351, r941_prom_high_g330,\
    \ r941_prom_high_g344, r941_prom_high_g351, r941_min_high_g340_rle, r103_min_high_g345,\
    \ r941_prom_snp_g322, r941_prom_variant_g322, r103_prom_snp_g3210, r103_prom_variant_g3210.\
    \ Alternatively a .hdf file from 'medaka train'. "
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: 'number of threads with which to create features (default: 1).'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: output phased vcf.
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: 'batchsize, controls memory use (default: 100).'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: 'delete intermediate files. (default: keep).'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: 'threshold for filtering indels in final VCF (default: 14)'
  id: n
  inputBinding:
    prefix: -N
  type: boolean
- doc: 'threshold for filtering SNPs in final VCF (default: 12)'
  id: p
  inputBinding:
    prefix: -P
  type: boolean
- doc: 'Avoid filtering of final VCF (default: do filter)'
  id: u
  inputBinding:
    prefix: -U
  type: boolean
- doc: stop after initial SNP calling from mixed reads prior to phasing.
  id: s
  inputBinding:
    prefix: -S
  type: boolean
