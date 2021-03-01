class: CommandLineTool
id: mafGene.cwl
inputs:
- id: in_use_file
  doc: genePredTable argument is a genePred file name
  type: boolean?
  inputBinding:
    prefix: -useFile
- id: in_gene_name
  doc: name of gene as it appears in genePred
  type: string?
  inputBinding:
    prefix: -geneName
- id: in_gene_list
  doc: name of file with list of genes
  type: File?
  inputBinding:
    prefix: -geneList
- id: in_gene_beds
  doc: name of bed file with genes and positions
  type: File?
  inputBinding:
    prefix: -geneBeds
- id: in_chrom
  doc: name of chromosome from which to grab genes
  type: long?
  inputBinding:
    prefix: -chrom
- id: in_exons
  doc: output exons
  type: boolean?
  inputBinding:
    prefix: -exons
- id: in_no_trans
  doc: don't translate output into amino acids
  type: boolean?
  inputBinding:
    prefix: -noTrans
- id: in_uniq_aa
  doc: put out unique pseudo-AA for every different codon
  type: boolean?
  inputBinding:
    prefix: -uniqAA
- id: in_include_utr
  doc: include the UTRs, use only with -noTrans
  type: boolean?
  inputBinding:
    prefix: -includeUtr
- id: in_delay
  doc: delay N seconds between genes (default 0)
  type: long?
  inputBinding:
    prefix: -delay
- id: in_no_dash
  doc: don't output lines with all dashes
  type: boolean?
  inputBinding:
    prefix: -noDash
- id: in_dbname
  doc: name of SQL database
  type: string
  inputBinding:
    position: 0
- id: in_maf_table
  doc: name of maf file table
  type: string
  inputBinding:
    position: 1
- id: in_gene_pred_table
  doc: name of the genePred table
  type: string
  inputBinding:
    position: 2
- id: in_species_dot_lst
  doc: list of species names
  type: string
  inputBinding:
    position: 3
- id: in_output
  doc: put output here
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mafGene
