class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/mafGene.cwl
inputs:
- id: use_file
  doc: genePredTable argument is a genePred file name
  type: boolean
  inputBinding:
    prefix: -useFile
- id: gene_name
  doc: name of gene as it appears in genePred
  type: string
  inputBinding:
    prefix: -geneName
- id: gene_list
  doc: name of file with list of genes
  type: string
  inputBinding:
    prefix: -geneList
- id: gene_beds
  doc: name of bed file with genes and positions
  type: string
  inputBinding:
    prefix: -geneBeds
- id: chrom
  doc: name of chromosome from which to grab genes
  type: string
  inputBinding:
    prefix: -chrom
- id: exons
  doc: output exons
  type: boolean
  inputBinding:
    prefix: -exons
- id: no_trans
  doc: don't translate output into amino acids
  type: boolean
  inputBinding:
    prefix: -noTrans
- id: uniq_aa
  doc: put out unique pseudo-AA for every different codon
  type: boolean
  inputBinding:
    prefix: -uniqAA
- id: include_utr
  doc: include the UTRs, use only with -noTrans
  type: boolean
  inputBinding:
    prefix: -includeUtr
- id: delay
  doc: delay N seconds between genes (default 0)
  type: string
  inputBinding:
    prefix: -delay
- id: no_dash
  doc: don't output lines with all dashes
  type: boolean
  inputBinding:
    prefix: -noDash
- id: dbname
  doc: name of SQL database
  type: string
  inputBinding:
    position: 0
- id: maf_table
  doc: name of maf file table
  type: string
  inputBinding:
    position: 1
- id: gene_pred_table
  doc: name of the genePred table
  type: string
  inputBinding:
    position: 2
- id: species_dot_lst
  doc: list of species names
  type: string
  inputBinding:
    position: 3
- id: output
  doc: put output here
  type: string
  inputBinding:
    position: 4
outputs: []
cwlVersion: v1.1
baseCommand:
- mafGene
