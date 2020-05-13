class: CommandLineTool
id: funannotate_util_util.cwl
inputs:
- id: contrast
  doc: Compare annotations to reference (GFF3 or GBK annotations)
  type: string
  inputBinding:
    position: 0
- id: tbl2gbk
  doc: Convert TBL format to GenBank format
  type: string
  inputBinding:
    position: 1
- id: gbk2_parts
  doc: Convert GBK file to individual components
  type: string
  inputBinding:
    position: 2
- id: gff2prot
  doc: Convert GFF3 + FASTA files to protein FASTA
  type: string
  inputBinding:
    position: 3
- id: gff2tbl
  doc: Convert GFF3 format to NCBI annotation table (tbl)
  type: string
  inputBinding:
    position: 4
- id: bam2gff3
  doc: Convert BAM coord-sorted transcript alignments to GFF3
  type: string
  inputBinding:
    position: 5
- id: prot2_genome
  doc: Map proteins to genome generating GFF3 protein alignments
  type: string
  inputBinding:
    position: 6
- id: string_tie2gff3
  doc: Convert GTF (stringTIE) to GFF3 format
  type: string
  inputBinding:
    position: 7
- id: quarry_2gff3
  doc: Convert CodingQuarry output to proper GFF3 format
  type: string
  inputBinding:
    position: 8
outputs: []
cwlVersion: v1.1
baseCommand:
- funannotate
- util
- util
