#!/usr/bin/env cwl-runner

baseCommand:
- mafGene
class: CommandLineTool
cwlVersion: v1.0
id: mafgene
inputs:
- doc: put output here
  id: output
  inputBinding:
    position: 0
  type: string
- doc: genePredTable argument is a genePred file name
  id: use_file
  inputBinding:
    prefix: -useFile
  type: boolean
- doc: name of gene as it appears in genePred
  id: gene_name
  inputBinding:
    prefix: -geneName
  type: string
- doc: name of file with list of genes
  id: gene_list
  inputBinding:
    prefix: -geneList
  type: string
- doc: name of bed file with genes and positions
  id: gene_beds
  inputBinding:
    prefix: -geneBeds
  type: string
- doc: name of chromosome from which to grab genes
  id: chrom
  inputBinding:
    prefix: -chrom
  type: string
- doc: output exons
  id: exons
  inputBinding:
    prefix: -exons
  type: boolean
- doc: don't translate output into amino acids
  id: no_trans
  inputBinding:
    prefix: -noTrans
  type: boolean
- doc: put out unique pseudo-AA for every different codon
  id: uniq_aa
  inputBinding:
    prefix: -uniqAA
  type: boolean
- doc: include the UTRs, use only with -noTrans
  id: include_utr
  inputBinding:
    prefix: -includeUtr
  type: boolean
- doc: delay N seconds between genes (default 0)
  id: delay
  inputBinding:
    prefix: -delay
  type: string
- doc: don't output lines with all dashes
  id: no_dash
  inputBinding:
    prefix: -noDash
  type: boolean
