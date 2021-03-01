class: CommandLineTool
id: metaphlan.cwl
inputs:
- id: in_input_type_dot
  doc: 'steps: first apply BowTie2 and then feed MetaPhlAn with the obtained sam:'
  type: long?
  inputBinding:
    prefix: --input_type.
- id: in_input_type
  doc: "set whether the input is the FASTA file of metagenomic reads or\nthe SAM file\
    \ of the mapping of the reads against the MetaPhlAn db."
  type: string?
  inputBinding:
    prefix: --input_type
- id: in_force
  doc: Force profiling of the input file by removing the bowtie2out file
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_bowtie_two_db
  doc: Folder containing the MetaPhlAn database.[default /usr/local/lib/python3.7/site-packages/metaphlan/metaphlan_databases]
  type: long?
  inputBinding:
    prefix: --bowtie2db
- id: in_index
  doc: "Specify the id of the database version to use. If \"latest\", MetaPhlAn will\
    \ get the latest version. If the database\nfiles are not found on the local MetaPhlAn\
    \ installation they\nwill be automatically downloaded [default latest]"
  type: string?
  inputBinding:
    prefix: --index
- id: in_bt_two_ps
  doc: "presets\nPresets options for BowTie2 (applied only when a FASTA file is provided)\n\
    The choices enabled in MetaPhlAn are:\n* sensitive\n* very-sensitive\n* sensitive-local\n\
    * very-sensitive-local\n[default very-sensitive]"
  type: long?
  inputBinding:
    prefix: --bt2_ps
- id: in_bowtie_two_exe
  doc: Full path and name of the BowTie2 executable. This option allowsMetaPhlAn to
    reach the executable even when it is not in the system PATH or the system PATH
    is unreachable
  type: long?
  inputBinding:
    prefix: --bowtie2_exe
- id: in_bowtie_two_build
  doc: Full path to the bowtie2-build command to use, deafult assumes that 'bowtie2-build
    is present in the system path
  type: long?
  inputBinding:
    prefix: --bowtie2_build
- id: in_bowtie_two_out
  doc: The file for saving the output of BowTie2
  type: File?
  inputBinding:
    prefix: --bowtie2out
- id: in_min_mapq_val
  doc: Minimum mapping quality value (MAPQ)
  type: long?
  inputBinding:
    prefix: --min_mapq_val
- id: in_no_map
  doc: Avoid storing the --bowtie2out map file
  type: boolean?
  inputBinding:
    prefix: --no_map
- id: in_tmp_dir
  doc: The folder used to store temporary files [default is the OS dependent tmp dir]
  type: boolean?
  inputBinding:
    prefix: --tmp_dir
- id: in_tax_lev
  doc: "The taxonomic level for the relative abundance output:\n'a' : all taxonomic\
    \ levels\n'k' : kingdoms\n'p' : phyla only\n'c' : classes only\n'o' : orders only\n\
    'f' : families only\n'g' : genera only\n's' : species only\n[default 'a']"
  type: string?
  inputBinding:
    prefix: --tax_lev
- id: in_min_cu_len
  doc: "minimum total nucleotide length for the markers in a clade for\nestimating\
    \ the abundance without considering sub-clade abundances\n[default 2000]"
  type: boolean?
  inputBinding:
    prefix: --min_cu_len
- id: in_min_alignment_len
  doc: "The sam records for aligned reads with the longest subalignment\nlength smaller\
    \ than this threshold will be discarded.\n[default None]"
  type: boolean?
  inputBinding:
    prefix: --min_alignment_len
- id: in_add_viruses
  doc: Allow the profiling of viral organisms
  type: boolean?
  inputBinding:
    prefix: --add_viruses
- id: in_ignore_eukaryotes
  doc: Do not profile eukaryotic organisms
  type: boolean?
  inputBinding:
    prefix: --ignore_eukaryotes
- id: in_ignore_bacteria
  doc: Do not profile bacterial organisms
  type: boolean?
  inputBinding:
    prefix: --ignore_bacteria
- id: in_ignore_archaea
  doc: Do not profile archeal organisms
  type: boolean?
  inputBinding:
    prefix: --ignore_archaea
- id: in_stat_q
  doc: "Quantile value for the robust average\n[default 0.2]"
  type: boolean?
  inputBinding:
    prefix: --stat_q
- id: in_perc_nonzero
  doc: "Percentage of markers with a non zero relative abundance for misidentify a\
    \ species\n[default 0.33]"
  type: boolean?
  inputBinding:
    prefix: --perc_nonzero
- id: in_ignore_markers
  doc: File containing a list of markers to ignore.
  type: File?
  inputBinding:
    prefix: --ignore_markers
- id: in_avoid_di_sqm
  doc: "Deactivate the procedure of disambiguating the quasi-markers based on the\n\
    marker abundance pattern found in the sample. It is generally recommended\nto\
    \ keep the disambiguation procedure in order to minimize false positives"
  type: boolean?
  inputBinding:
    prefix: --avoid_disqm
- id: in_stat
  doc: "Statistical approach for converting marker abundances into clade abundances\n\
    'avg_g'  : clade global (i.e. normalizing all markers together) average\n'avg_l'\
    \  : average of length-normalized marker counts\n'tavg_g' : truncated clade global\
    \ average at --stat_q quantile\n'tavg_l' : truncated average of length-normalized\
    \ marker counts (at --stat_q)\n'wavg_g' : winsorized clade global average (at\
    \ --stat_q)\n'wavg_l' : winsorized average of length-normalized marker counts\
    \ (at --stat_q)\n'med'    : median of length-normalized marker counts\n[default\
    \ tavg_g]"
  type: boolean?
  inputBinding:
    prefix: --stat
- id: in_type_type_perform
  doc: "TYPE      Type of analysis to perform:\n* rel_ab: profiling a metagenomes\
    \ in terms of relative abundances\n* rel_ab_w_read_stats: profiling a metagenomes\
    \ in terms of relative abundances and estimate the number of reads coming from\
    \ each clade.\n* reads_map: mapping from reads to clades (only reads hitting a\
    \ marker)\n* clade_profiles: normalized marker counts for clades with at least\
    \ a non-null marker\n* marker_ab_table: normalized marker counts (only when >\
    \ 0.0 and normalized by metagenome size if --nreads is specified)\n* marker_counts:\
    \ non-normalized marker counts [use with extreme caution]\n* marker_pres_table:\
    \ list of markers present in the sample (threshold at 1.0 if not differently specified\
    \ with --pres_th\n[default 'rel_ab']"
  type: long?
  inputBinding:
    prefix: -t
- id: in_n_reads
  doc: "The total number of reads in the original metagenome. It is used only when\n\
    -t marker_table is specified for normalizing the length-normalized counts\nwith\
    \ the metagenome size as well. No normalization applied if --nreads is not\nspecified"
  type: long?
  inputBinding:
    prefix: --nreads
- id: in_pres_th
  doc: Threshold for calling a marker present by the -t marker_pres_table option
  type: string?
  inputBinding:
    prefix: --pres_th
- id: in_clade
  doc: The clade for clade_specific_strain_tracker analysis
  type: boolean?
  inputBinding:
    prefix: --clade
- id: in_min_ab
  doc: The minimum percentage abundance for the clade in the clade_specific_strain_tracker
    analysis
  type: boolean?
  inputBinding:
    prefix: --min_ab
- id: in_file__file
  doc: "file, --output_file output file\nThe output file (if not specified as positional\
    \ argument)"
  type: File?
  inputBinding:
    prefix: -o
- id: in_sample_id_key
  doc: Specify the sample ID key for this analysis. Defaults to 'SampleID'.
  type: string?
  inputBinding:
    prefix: --sample_id_key
- id: in_use_group_representative
  doc: Use a species as representative for species groups.
  type: boolean?
  inputBinding:
    prefix: --use_group_representative
- id: in_sample_id
  doc: Specify the sample ID for this analysis. Defaults to 'Metaphlan_Analysis'.
  type: string?
  inputBinding:
    prefix: --sample_id
- id: in_sam_out
  doc: The sam output file
  type: File?
  inputBinding:
    prefix: --samout
- id: in_legacy_output
  doc: Old MetaPhlAn2 two columns output
  type: boolean?
  inputBinding:
    prefix: --legacy-output
- id: in_cami_format_output
  doc: Report the profiling using the CAMI output format
  type: boolean?
  inputBinding:
    prefix: --CAMI_format_output
- id: in_unknown_estimation
  doc: Scale relative abundances to the number of reads mapping to known clades in
    order to estimate unknowness
  type: boolean?
  inputBinding:
    prefix: --unknown_estimation
- id: in_biom_output_file
  doc: 'If requesting biom file output: The name of the output file in biom format'
  type: File?
  inputBinding:
    prefix: --biom_output_file
- id: in_metadata_delimiter_char
  doc: 'Delimiter for bug metadata: - defaults to pipe. e.g. the pipe in k__Bacteria|p__Proteobacteria'
  type: string?
  inputBinding:
    prefix: --metadata_delimiter_char
- id: in_nproc
  doc: The number of CPUs to use for parallelizing the mapping [default 4]
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_install
  doc: Only checks if the MetaPhlAn DB is installed and installs it if not. All other
    parameters are ignored.
  type: boolean?
  inputBinding:
    prefix: --install
- id: in_force_download
  doc: Force the re-download of the latest MetaPhlAn database.
  type: boolean?
  inputBinding:
    prefix: --force_download
- id: in_read_min_len
  doc: Specify the minimum length of the reads to be considered when parsing the input
    file with 'read_fastx.py' script, default value is 70
  type: long?
  inputBinding:
    prefix: --read_min_len
- id: in_input_file
  doc: "the input file can be:\n* a fastq file containing metagenomic reads\nOR\n\
    * a BowTie2 produced SAM file.\nOR\n* an intermediary mapping file of the metagenome\
    \ generated by a previous MetaPhlAn run\nIf the input file is missing, the script\
    \ assumes that the input is provided using the standard\ninput, or named pipes.\n\
    IMPORTANT: the type of input needs to be specified with --input_type"
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: "the tab-separated output file of the predicted taxon relative abundances \n\
    [stdout if not present]"
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_bowtie_two_out
  doc: The file for saving the output of BowTie2
  type: File?
  outputBinding:
    glob: $(inputs.in_bowtie_two_out)
- id: out_file__file
  doc: "file, --output_file output file\nThe output file (if not specified as positional\
    \ argument)"
  type: File?
  outputBinding:
    glob: $(inputs.in_file__file)
- id: out_sam_out
  doc: The sam output file
  type: File?
  outputBinding:
    glob: $(inputs.in_sam_out)
- id: out_biom_output_file
  doc: 'If requesting biom file output: The name of the output file in biom format'
  type: File?
  outputBinding:
    glob: $(inputs.in_biom_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- metaphlan
