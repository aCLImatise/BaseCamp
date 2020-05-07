class: CommandLineTool
id: staramr_search.cwl
inputs:
- id: point_finder_organism
  doc: The organism to use for pointfinder {salmonella, campylobacter}. Defaults to
    disabling search for point mutations. [None].
  type: string
  inputBinding:
    prefix: --pointfinder-organism
- id: plasmid_finder_database_type
  doc: The database type to use for plasmidfinder {gram_positive, enterobacteriaceae}.
    Defaults to using all available database types to search for plasmids. [None].
  type: string
  inputBinding:
    prefix: --plasmidfinder-database-type
- id: database
  doc: The directory containing the resfinder/pointfinder/plasmidfinder databases
    [/tmp/tmp82x9w9yh/lib/python3.7/site-packages/staramr/databases/data].
  type: string
  inputBinding:
    prefix: --database
- id: nprocs
  doc: The number of processing cores to use [8].
  type: string
  inputBinding:
    prefix: --nprocs
- id: ignore_invalid_files
  doc: Skips over invalid input files
  type: boolean
  inputBinding:
    prefix: --ignore-invalid-files
- id: mlst_scheme
  doc: 'Specify scheme name, visit https://github.com/tseemann/mlst/blob/master/db/scheme_species_map.tab
    for supported scheme genus available. [None] '
  type: string
  inputBinding:
    prefix: --mlst-scheme
- id: genome_size_lower_bound
  doc: The lower bound for our genome size for the quality metrics. Defaults to 4
    Mbp. [4000000].
  type: string
  inputBinding:
    prefix: --genome-size-lower-bound
- id: genome_size_upper_bound
  doc: The upper bound for our genome size for the quality metrics. Defaults to 6
    Mbp. [6000000].
  type: string
  inputBinding:
    prefix: --genome-size-upper-bound
- id: minimum_n50_value
  doc: The minimum N50 value for the quality metrics. Defaults to 10000. [10000].
  type: long
  inputBinding:
    prefix: --minimum-N50-value
- id: minimum_contig_length
  doc: The minimum contig length for the quality metrics. Defaults to 300 bp. [300].
  type: long
  inputBinding:
    prefix: --minimum-contig-length
- id: unacceptable_number_contigs
  doc: The minimum, unacceptable number of contigs which are equal to or above the
    minimum contig length for our quality metrics. Defaults to 1000. [1000].
  type: string
  inputBinding:
    prefix: --unacceptable-number-contigs
- id: pid_threshold
  doc: The percent identity threshold [98.0].
  type: string
  inputBinding:
    prefix: --pid-threshold
- id: percent_length_overlap_res_finder
  doc: The percent length overlap for resfinder results [60.0].
  type: string
  inputBinding:
    prefix: --percent-length-overlap-resfinder
- id: percent_length_overlap_point_finder
  doc: The percent length overlap for pointfinder results [95.0].
  type: string
  inputBinding:
    prefix: --percent-length-overlap-pointfinder
- id: percent_length_overlap_plasmid_finder
  doc: The percent length overlap for resfinder results [60.0].
  type: string
  inputBinding:
    prefix: --percent-length-overlap-plasmidfinder
- id: no_exclude_genes
  doc: Disable the default exclusion of some genes from ResFinder/PointFinder/PlasmidFinder
    [False].
  type: boolean
  inputBinding:
    prefix: --no-exclude-genes
- id: exclude_genes_file
  doc: A containing a list of ResFinder/PointFinder/PlasmidFinder gene names to exclude
    from results [/tmp/tmp82x9w9yh/lib/python3.7/site-packages/staramr/databases/exclude/data/genes_to_exclude.tsv].
  type: string
  inputBinding:
    prefix: --exclude-genes-file
- id: exclude_negatives
  doc: Exclude negative results (those sensitive to antimicrobials) [False].
  type: boolean
  inputBinding:
    prefix: --exclude-negatives
- id: exclude_resistance_phenotypes
  doc: Exclude predicted antimicrobial resistances [False].
  type: boolean
  inputBinding:
    prefix: --exclude-resistance-phenotypes
- id: report_all_blast
  doc: Report all blast hits (vs. only top blast hits) [False].
  type: boolean
  inputBinding:
    prefix: --report-all-blast
- id: output_dir
  doc: The output directory for results [None].
  type: string
  inputBinding:
    prefix: --output-dir
- id: output_summary
  doc: The name of the output file containing the summary results. Not be be used
    with '--output-dir'. [None]
  type: string
  inputBinding:
    prefix: --output-summary
- id: output_detailed_summary
  doc: The name of the output file containing the detailed summary results. Not be
    be used with '--output-dir'. [None]
  type: string
  inputBinding:
    prefix: --output-detailed-summary
- id: output_res_finder
  doc: The name of the output file containing the resfinder results. Not be be used
    with '--output-dir'. [None]
  type: string
  inputBinding:
    prefix: --output-resfinder
- id: output_point_finder
  doc: The name of the output file containing the pointfinder results. Not be be used
    with '--output-dir'. [None]
  type: string
  inputBinding:
    prefix: --output-pointfinder
- id: output_plasmid_finder
  doc: The name of the output file containing the plasmidfinder results. Not be be
    used with '--output-dir'. [None]
  type: string
  inputBinding:
    prefix: --output-plasmidfinder
- id: output_settings
  doc: The name of the output file containing the settings. Not be be used with '--output-dir'.
    [None]
  type: string
  inputBinding:
    prefix: --output-settings
- id: output_excel
  doc: The name of the output file containing the excel results. Not be be used with
    '--output-dir'. [None]
  type: string
  inputBinding:
    prefix: --output-excel
- id: output_hits_dir
  doc: The name of the directory to contain the BLAST hit files. Not be be used with
    '--output-dir'. [None]
  type: string
  inputBinding:
    prefix: --output-hits-dir
- id: output_mlst
  doc: The name of the output file containing the mlst results. Not be be used with
    '--output-dir'. [None]
  type: string
  inputBinding:
    prefix: --output-mlst
outputs: []
cwlVersion: v1.1
baseCommand:
- staramr
- search
