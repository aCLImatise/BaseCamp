class: CommandLineTool
id: bakta.cwl
inputs:
- id: in_db
  doc: Database path (default = <bakta_path>/db)
  type: File?
  inputBinding:
    prefix: --db
- id: in_min_contig_length
  doc: Minimum contig size (default = 1)
  type: long?
  inputBinding:
    prefix: --min-contig-length
- id: in_prefix
  doc: Prefix for output files
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_output
  doc: Output directory (default = current working directory)
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_genus
  doc: Genus name
  type: string?
  inputBinding:
    prefix: --genus
- id: in_species
  doc: Species name
  type: string?
  inputBinding:
    prefix: --species
- id: in_strain
  doc: Strain name
  type: string?
  inputBinding:
    prefix: --strain
- id: in_plasmid
  doc: Plasmid name
  type: string?
  inputBinding:
    prefix: --plasmid
- id: in_complete
  doc: "All sequences are complete replicons\n(chromosome/plasmid[s])"
  type: boolean?
  inputBinding:
    prefix: --complete
- id: in_prodigal_tf
  doc: "Path to existing Prodigal training file to use for CDS\nprediction"
  type: File?
  inputBinding:
    prefix: --prodigal-tf
- id: in_translation_table
  doc: 'Translation table to use: 11/4 (default = 11)'
  type: string?
  inputBinding:
    prefix: --translation-table
- id: in_gram
  doc: "{+,-,?}        Gram type: +/-/? (default = '?')"
  type: boolean?
  inputBinding:
    prefix: --gram
- id: in_locus
  doc: Locus prefix (instead of 'contig')
  type: string?
  inputBinding:
    prefix: --locus
- id: in_locus_tag
  doc: Locus tag prefix
  type: string?
  inputBinding:
    prefix: --locus-tag
- id: in_keep_contig_headers
  doc: Keep original contig headers
  type: boolean?
  inputBinding:
    prefix: --keep-contig-headers
- id: in_replicons
  doc: Replicon information table (TSV)
  type: string?
  inputBinding:
    prefix: --replicons
- id: in_skip_trna
  doc: Skip tRNA detection & annotation
  type: boolean?
  inputBinding:
    prefix: --skip-trna
- id: in_skip_tmrna
  doc: Skip tmRNA detection & annotation
  type: boolean?
  inputBinding:
    prefix: --skip-tmrna
- id: in_skip_rrna
  doc: Skip rRNA detection & annotation
  type: boolean?
  inputBinding:
    prefix: --skip-rrna
- id: in_skip_ncrna
  doc: Skip ncRNA detection & annotation
  type: boolean?
  inputBinding:
    prefix: --skip-ncrna
- id: in_skip_ncrna_region
  doc: Skip ncRNA region detection & annotation
  type: boolean?
  inputBinding:
    prefix: --skip-ncrna-region
- id: in_skip_crisp_r
  doc: Skip CRISPR array detection & annotation
  type: boolean?
  inputBinding:
    prefix: --skip-crispr
- id: in_skip_cds
  doc: Skip CDS detection & annotation
  type: boolean?
  inputBinding:
    prefix: --skip-cds
- id: in_skip_so_rf
  doc: Skip sORF detection & annotation
  type: boolean?
  inputBinding:
    prefix: --skip-sorf
- id: in_skip_gap
  doc: Skip gap detection & annotation
  type: boolean?
  inputBinding:
    prefix: --skip-gap
- id: in_skip_ori
  doc: Skip oriC/oriT detection & annotation
  type: boolean?
  inputBinding:
    prefix: --skip-ori
- id: in_verbose
  doc: Print verbose information
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_threads
  doc: "Number of threads to use (default = number of\navailable CPUs)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_tmp_dir
  doc: "Location for temporary files (default = system\ndependent auto detection)"
  type: string?
  inputBinding:
    prefix: --tmp-dir
- id: in_citation
  doc: Print citation
  type: boolean?
  inputBinding:
    prefix: --citation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output directory (default = current working directory)
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bakta:0.5--py_0
cwlVersion: v1.1
baseCommand:
- bakta
