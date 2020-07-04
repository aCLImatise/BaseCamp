class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/traitar_annotate.cwl
inputs:
- id: gene_gff_type
  doc: if the input is amino acids the type of gene prediction GFF file can be specified
    for mapping the phenotype predictions to the genes
  type: string
  inputBinding:
    prefix: --gene_gff_type
- id: cpus
  doc: number of cpus used for the individual steps; maximum is number of samples;
    needs parallel
  type: string
  inputBinding:
    prefix: --cpus
- id: output_dir
  doc: directory for the output; will be created if it doesn't exist yet
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- traitar
- annotate
