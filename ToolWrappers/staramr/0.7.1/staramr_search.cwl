class: CommandLineTool
id: staramr_search.cwl
inputs:
- id: in_point_finder_organism
  doc: The organism to use for pointfinder {salmonella, campylobacter}. Defaults to
    disabling search for point mutations. [None].
  type: string?
  inputBinding:
    prefix: --pointfinder-organism
- id: in_plasmid_finder_database_type
  doc: The database type to use for plasmidfinder {gram_positive, enterobacteriaceae}.
    Defaults to using all available database types to search for plasmids. [None].
  type: string?
  inputBinding:
    prefix: --plasmidfinder-database-type
- id: in_database
  doc: The directory containing the resfinder/pointfinder/plasmidfinder databases
    [/usr/local/lib/python3.7/site-packages/staramr/databases/data].
  type: Directory?
  inputBinding:
    prefix: --database
- id: in_nprocs
  doc: The number of processing cores to use [8].
  type: long?
  inputBinding:
    prefix: --nprocs
- id: in_ignore_invalid_files
  doc: Skips over invalid input files
  type: boolean?
  inputBinding:
    prefix: --ignore-invalid-files
- id: in_mlst_scheme
  doc: Specify scheme name, visit https://github.com/tseemann/mlst/blob/master/db/scheme_species_map.tab
    for supported scheme genus available. [None]
  type: string?
  inputBinding:
    prefix: --mlst-scheme
- id: in_genome_size_lower_bound
  doc: The lower bound for our genome size for the quality metrics. Defaults to 4
    Mbp. [4000000].
  type: long?
  inputBinding:
    prefix: --genome-size-lower-bound
- id: in_genome_size_upper_bound
  doc: The upper bound for our genome size for the quality metrics. Defaults to 6
    Mbp. [6000000].
  type: long?
  inputBinding:
    prefix: --genome-size-upper-bound
- id: in_minimum_n_five_zero_value
  doc: The minimum N50 value for the quality metrics. Defaults to 10000. [10000].
  type: long?
  inputBinding:
    prefix: --minimum-N50-value
- id: in_minimum_contig_length
  doc: The minimum contig length for the quality metrics. Defaults to 300 bp. [300].
  type: long?
  inputBinding:
    prefix: --minimum-contig-length
- id: in_unacceptable_number_contigs
  doc: The minimum, unacceptable number of contigs which are equal to or above the
    minimum contig length for our quality metrics. Defaults to 1000. [1000].
  type: long?
  inputBinding:
    prefix: --unacceptable-number-contigs
- id: in_pid_threshold
  doc: The percent identity threshold [98.0].
  type: double?
  inputBinding:
    prefix: --pid-threshold
- id: in_percent_length_overlap_res_finder
  doc: The percent length overlap for resfinder results [60.0].
  type: long?
  inputBinding:
    prefix: --percent-length-overlap-resfinder
- id: in_percent_length_overlap_point_finder
  doc: The percent length overlap for pointfinder results [95.0].
  type: long?
  inputBinding:
    prefix: --percent-length-overlap-pointfinder
- id: in_percent_length_overlap_plasmid_finder
  doc: The percent length overlap for resfinder results [60.0].
  type: long?
  inputBinding:
    prefix: --percent-length-overlap-plasmidfinder
- id: in_no_exclude_genes
  doc: Disable the default exclusion of some genes from ResFinder/PointFinder/PlasmidFinder
    [False].
  type: boolean?
  inputBinding:
    prefix: --no-exclude-genes
- id: in_exclude_genes_file
  doc: A containing a list of ResFinder/PointFinder/PlasmidFinder gene names to exclude
    from results [/usr/local/lib/python3.7/site-packages/staramr/databases/exclude/data/genes_to_exclude.tsv].
  type: File?
  inputBinding:
    prefix: --exclude-genes-file
- id: in_exclude_negatives
  doc: Exclude negative results (those sensitive to antimicrobials) [False].
  type: boolean?
  inputBinding:
    prefix: --exclude-negatives
- id: in_exclude_resistance_phenotypes
  doc: Exclude predicted antimicrobial resistances [False].
  type: boolean?
  inputBinding:
    prefix: --exclude-resistance-phenotypes
- id: in_report_all_blast
  doc: Report all blast hits (vs. only top blast hits) [False].
  type: boolean?
  inputBinding:
    prefix: --report-all-blast
- id: in_output_dir
  doc: The output directory for results [None].
  type: Directory?
  inputBinding:
    prefix: --output-dir
- id: in_output_summary
  doc: The name of the output file containing the summary results. Not be be used
    with '--output-dir'. [None]
  type: File?
  inputBinding:
    prefix: --output-summary
- id: in_output_detailed_summary
  doc: The name of the output file containing the detailed summary results. Not be
    be used with '--output-dir'. [None]
  type: File?
  inputBinding:
    prefix: --output-detailed-summary
- id: in_output_res_finder
  doc: The name of the output file containing the resfinder results. Not be be used
    with '--output-dir'. [None]
  type: File?
  inputBinding:
    prefix: --output-resfinder
- id: in_output_point_finder
  doc: The name of the output file containing the pointfinder results. Not be be used
    with '--output-dir'. [None]
  type: File?
  inputBinding:
    prefix: --output-pointfinder
- id: in_output_plasmid_finder
  doc: The name of the output file containing the plasmidfinder results. Not be be
    used with '--output-dir'. [None]
  type: File?
  inputBinding:
    prefix: --output-plasmidfinder
- id: in_output_settings
  doc: The name of the output file containing the settings. Not be be used with '--output-dir'.
    [None]
  type: File?
  inputBinding:
    prefix: --output-settings
- id: in_output_excel
  doc: The name of the output file containing the excel results. Not be be used with
    '--output-dir'. [None]
  type: File?
  inputBinding:
    prefix: --output-excel
- id: in_output_hits_dir
  doc: The name of the directory to contain the BLAST hit files. Not be be used with
    '--output-dir'. [None]
  type: Directory?
  inputBinding:
    prefix: --output-hits-dir
- id: in_output_mlst
  doc: The name of the output file containing the mlst results. Not be be used with
    '--output-dir'. [None]
  type: File?
  inputBinding:
    prefix: --output-mlst
- id: in_files
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: The output directory for results [None].
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_output_summary
  doc: The name of the output file containing the summary results. Not be be used
    with '--output-dir'. [None]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_summary)
- id: out_output_detailed_summary
  doc: The name of the output file containing the detailed summary results. Not be
    be used with '--output-dir'. [None]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_detailed_summary)
- id: out_output_res_finder
  doc: The name of the output file containing the resfinder results. Not be be used
    with '--output-dir'. [None]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_res_finder)
- id: out_output_point_finder
  doc: The name of the output file containing the pointfinder results. Not be be used
    with '--output-dir'. [None]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_point_finder)
- id: out_output_plasmid_finder
  doc: The name of the output file containing the plasmidfinder results. Not be be
    used with '--output-dir'. [None]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_plasmid_finder)
- id: out_output_settings
  doc: The name of the output file containing the settings. Not be be used with '--output-dir'.
    [None]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_settings)
- id: out_output_excel
  doc: The name of the output file containing the excel results. Not be be used with
    '--output-dir'. [None]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_excel)
- id: out_output_hits_dir
  doc: The name of the directory to contain the BLAST hit files. Not be be used with
    '--output-dir'. [None]
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_hits_dir)
- id: out_output_mlst
  doc: The name of the output file containing the mlst results. Not be be used with
    '--output-dir'. [None]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_mlst)
hints: []
cwlVersion: v1.1
baseCommand:
- staramr
- search
