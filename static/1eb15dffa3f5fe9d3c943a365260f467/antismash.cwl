class: CommandLineTool
id: antismash.cwl
inputs:
- id: sequence
  doc: GenBank/EMBL/FASTA file(s) containing DNA.
  type: string
  inputBinding:
    position: 0
- id: tax_on
  doc: 'Taxonomic classification of input sequence. (default: bacteria)'
  type: string
  inputBinding:
    prefix: --taxon
- id: full_hmmer
  doc: Run a whole-genome HMMer analysis.
  type: boolean
  inputBinding:
    prefix: --fullhmmer
- id: cassis
  doc: Motif based prediction of SM gene cluster regions.
  type: boolean
  inputBinding:
    prefix: --cassis
- id: cf_borders_only
  doc: Only annotate borders of existing clusters.
  type: boolean
  inputBinding:
    prefix: --cf-borders-only
- id: cf_create_clusters
  doc: Find extra clusters.
  type: boolean
  inputBinding:
    prefix: --cf-create-clusters
- id: cluster_hmmer
  doc: Run a cluster-limited HMMer analysis.
  type: boolean
  inputBinding:
    prefix: --clusterhmmer
- id: sm_cog_trees
  doc: Generate phylogenetic trees of sec. met. cluster orthologous groups.
  type: boolean
  inputBinding:
    prefix: --smcog-trees
- id: tta_threshold
  doc: 'Lowest GC content to annotate TTA codons at (default: 0.65).'
  type: string
  inputBinding:
    prefix: --tta-threshold
- id: cb_general
  doc: Compare identified clusters against a database of antiSMASH-predicted clusters.
  type: boolean
  inputBinding:
    prefix: --cb-general
- id: cb_sub_clusters
  doc: Compare identified clusters against known subclusters responsible for synthesising
    precursors.
  type: boolean
  inputBinding:
    prefix: --cb-subclusters
- id: cb_known_clusters
  doc: Compare identified clusters against known gene clusters from the MIBiG database.
  type: boolean
  inputBinding:
    prefix: --cb-knownclusters
- id: asf
  doc: Run active site finder analysis.
  type: boolean
  inputBinding:
    prefix: --asf
- id: pfam2go
  doc: Run Pfam to Gene Ontology mapping module.
  type: boolean
  inputBinding:
    prefix: --pfam2go
- id: output_dir
  doc: Directory to write results to.
  type: string
  inputBinding:
    prefix: --output-dir
- id: html_title
  doc: Custom title for the HTML output page (default is input filename).
  type: string
  inputBinding:
    prefix: --html-title
- id: html_description
  doc: Custom description to add to the output.
  type: string
  inputBinding:
    prefix: --html-description
- id: gene_finding_tool
  doc: "Specify algorithm used for gene finding: GlimmerHMM, Prodigal, Prodigal Metagenomic/Anonymous\
    \ mode, or none. The 'error' option will raise an error if genefinding is attempted.\
    \ The 'none' option will not run genefinding. (default: error)."
  type: string
  inputBinding:
    prefix: --genefinding-tool
- id: gene_finding_gff3
  doc: Specify GFF3 file to extract features from.
  type: string
  inputBinding:
    prefix: --genefinding-gff3
outputs: []
cwlVersion: v1.1
baseCommand:
- antismash
