class: CommandLineTool
id: ppanggolin_write.cwl
inputs:
- id: pan_genome
  doc: 'The pangenome .h5 file (default: None)'
  type: string
  inputBinding:
    prefix: --pangenome
- id: output
  doc: 'Output directory where the file(s) will be written (default: None)'
  type: string
  inputBinding:
    prefix: --output
- id: soft_core
  doc: 'Soft core threshold to use (default: 0.95)'
  type: string
  inputBinding:
    prefix: --soft_core
- id: dup_margin
  doc: "minimum ratio of organisms in which the family must have multiple genes for\
    \ it to be considered 'duplicated' (default: 0.05)"
  type: string
  inputBinding:
    prefix: --dup_margin
- id: gex_f
  doc: 'write a gexf file with all the annotations and all the genes of each gene
    family (default: False)'
  type: boolean
  inputBinding:
    prefix: --gexf
- id: light_gex_f
  doc: 'write a gexf file with the gene families and basic informations about them
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --light_gexf
- id: csv
  doc: 'csv file format as used by Roary, among others. The alternative gene ID will
    be the partition, if there is one (default: False)'
  type: boolean
  inputBinding:
    prefix: --csv
- id: r_tab
  doc: 'tabular file for the gene binary presence absence matrix (default: False)'
  type: boolean
  inputBinding:
    prefix: --Rtab
- id: projection
  doc: 'a csv file for each organism providing informations on the projection of the
    graph on the organism (default: False)'
  type: boolean
  inputBinding:
    prefix: --projection
- id: stats
  doc: 'tsv files with some statistics for each organism and for each gene family
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --stats
- id: partitions
  doc: 'list of families belonging to each partition, with one file per partitions
    and one family per line (default: False)'
  type: boolean
  inputBinding:
    prefix: --partitions
- id: compress
  doc: 'Compress the files in .gz (default: False)'
  type: boolean
  inputBinding:
    prefix: --compress
- id: json
  doc: 'Writes the graph in a json file format (default: False)'
  type: boolean
  inputBinding:
    prefix: --json
- id: regions
  doc: 'Write the RGP in a tab format, one file per genome (default: False)'
  type: boolean
  inputBinding:
    prefix: --regions
- id: spots
  doc: 'Write spot summary and a list of all rgp in each spot (default: False)'
  type: boolean
  inputBinding:
    prefix: --spots
- id: families_tsv
  doc: 'Write a tsv file providing the association between genes and gene families
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --families_tsv
- id: all_genes
  doc: 'Write all nucleotic CDS sequences (default: False)'
  type: boolean
  inputBinding:
    prefix: --all_genes
- id: all_prot_families
  doc: 'Write Write representative proteic sequences of all the gene families (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --all_prot_families
- id: all_gene_families
  doc: 'Write representative nucleic sequences of all the gene families (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --all_gene_families
- id: tmpdir
  doc: 'directory for storing temporary files (default: /tmp)'
  type: string
  inputBinding:
    prefix: --tmpdir
- id: verbose
  doc: '{0,1,2}     Indicate verbose level (0 for warning and errors only, 1 for info,
    2 for debug) (default: 1)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: log
  doc: 'log output file (default: stdout)'
  type: string
  inputBinding:
    prefix: --log
- id: cpu
  doc: 'Number of available cpus (default: 1)'
  type: string
  inputBinding:
    prefix: --cpu
- id: force
  doc: 'Force writing in output directory and in pangenome output file. (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --force
outputs: []
cwlVersion: v1.1
baseCommand:
- ppanggolin
- write
