class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/metaphlan2.py.cwl
inputs:
- id: input_type_dot
  doc: 'steps: first apply BowTie2 and then feed MetaPhlAn2 with the obtained sam:'
  type: string
  inputBinding:
    prefix: --input_type.
- id: input_type
  doc: set whether the input is the multifasta file of metagenomic reads or  the SAM
    file of the mapping of the reads against the MetaPhlAn db. [default 'automatic',
    i.e. the script will try to guess the input format]
  type: string
  inputBinding:
    prefix: --input_type
- id: mpa_pkl
  doc: The metadata pickled MetaPhlAn file [deprecated]
  type: string
  inputBinding:
    prefix: --mpa_pkl
- id: force
  doc: Force profiling of the input file by removing the bowtie2out file
  type: boolean
  inputBinding:
    prefix: --force
- id: bowtie_two_db
  doc: Folder containing the MetaPhlAn database. Used if --input_type is fastq, fasta,
    multifasta, or multifastq [default /tmp/tmpn4501vnn/bin/metaphlan_databases]
  type: string
  inputBinding:
    prefix: --bowtie2db
- id: index
  doc: Specify the id of the database version to use. If "latest", MetaPhlAn2 will
    get the latest version. If the database files are not found on the local MetaPhlAn2
    installation they will be automatically downloaded [default latest]
  type: string
  inputBinding:
    prefix: --index
- id: bt_two_ps
  doc: 'presets Presets options for BowTie2 (applied only when a multifasta file is
    provided) The choices enabled in MetaPhlAn are: * sensitive * very-sensitive *
    sensitive-local * very-sensitive-local [default very-sensitive]'
  type: string
  inputBinding:
    prefix: --bt2_ps
- id: bowtie_two_exe
  doc: Full path and name of the BowTie2 executable. This option allowsMetaPhlAn to
    reach the executable even when it is not in the system PATH or the system PATH
    is unreachable
  type: string
  inputBinding:
    prefix: --bowtie2_exe
- id: bowtie_two_build
  doc: Full path to the bowtie2-build command to use, deafult assumes that 'bowtie2-build
    is present in the system path
  type: string
  inputBinding:
    prefix: --bowtie2_build
- id: bowtie_two_out
  doc: The file for saving the output of BowTie2
  type: File
  inputBinding:
    prefix: --bowtie2out
- id: min_mapq_val
  doc: Minimum mapping quality value (MAPQ)
  type: long
  inputBinding:
    prefix: --min_mapq_val
- id: no_map
  doc: Avoid storing the --bowtie2out map file
  type: boolean
  inputBinding:
    prefix: --no_map
- id: tmp_dir
  doc: The folder used to store temporary files [default is the OS dependent tmp dir]
  type: boolean
  inputBinding:
    prefix: --tmp_dir
- id: tax_lev
  doc: "The taxonomic level for the relative abundance output: 'a' : all taxonomic\
    \ levels 'k' : kingdoms 'p' : phyla only 'c' : classes only 'o' : orders only\
    \ 'f' : families only 'g' : genera only 's' : species only [default 'a']"
  type: string
  inputBinding:
    prefix: --tax_lev
- id: min_cu_len
  doc: minimum total nucleotide length for the markers in a clade for estimating the
    abundance without considering sub-clade abundances [default 2000]
  type: boolean
  inputBinding:
    prefix: --min_cu_len
- id: min_alignment_len
  doc: The sam records for aligned reads with the longest subalignment length smaller
    than this threshold will be discarded. [default None]
  type: boolean
  inputBinding:
    prefix: --min_alignment_len
- id: add_viruses
  doc: Allow the profiling of viral organisms
  type: boolean
  inputBinding:
    prefix: --add_viruses
- id: ignore_eukaryotes
  doc: Do not profile eukaryotic organisms
  type: boolean
  inputBinding:
    prefix: --ignore_eukaryotes
- id: ignore_bacteria
  doc: Do not profile bacterial organisms
  type: boolean
  inputBinding:
    prefix: --ignore_bacteria
- id: ignore_archaea
  doc: Do not profile archeal organisms
  type: boolean
  inputBinding:
    prefix: --ignore_archaea
- id: stat_q
  doc: Quantile value for the robust average [default 0.2]
  type: boolean
  inputBinding:
    prefix: --stat_q
- id: perc_nonzero
  doc: Percentage of markers with a non zero relative abundance for misidentify a
    species [default 0.33]
  type: boolean
  inputBinding:
    prefix: --perc_nonzero
- id: ignore_markers
  doc: 'File containing a list of markers to ignore. '
  type: string
  inputBinding:
    prefix: --ignore_markers
- id: avoid_di_sqm
  doc: Deactivate the procedure of disambiguating the quasi-markers based on the  marker
    abundance pattern found in the sample. It is generally recommended  to keep the
    disambiguation procedure in order to minimize false positives
  type: boolean
  inputBinding:
    prefix: --avoid_disqm
- id: stat
  doc: "EXPERIMENTAL! Statistical approach for converting marker abundances into clade\
    \ abundances 'avg_g'  : clade global (i.e. normalizing all markers together) average\
    \ 'avg_l'  : average of length-normalized marker counts 'tavg_g' : truncated clade\
    \ global average at --stat_q quantile 'tavg_l' : trunated average of length-normalized\
    \ marker counts (at --stat_q) 'wavg_g' : winsorized clade global average (at --stat_q)\
    \ 'wavg_l' : winsorized average of length-normalized marker counts (at --stat_q)\
    \ 'med'    : median of length-normalized marker counts [default tavg_g]"
  type: boolean
  inputBinding:
    prefix: --stat
- id: type_type_perform
  doc: "TYPE      Type of analysis to perform:  * rel_ab: profiling a metagenomes\
    \ in terms of relative abundances * rel_ab_w_read_stats: profiling a metagenomes\
    \ in terms of relative abundances and estimate the number of reads coming from\
    \ each clade. * reads_map: mapping from reads to clades (only reads hitting a\
    \ marker) * clade_profiles: normalized marker counts for clades with at least\
    \ a non-null marker * marker_ab_table: normalized marker counts (only when > 0.0\
    \ and normalized by metagenome size if --nreads is specified) * marker_counts:\
    \ non-normalized marker counts [use with extreme caution] * marker_pres_table:\
    \ list of markers present in the sample (threshold at 1.0 if not differently specified\
    \ with --pres_th [default 'rel_ab']"
  type: string
  inputBinding:
    prefix: -t
- id: n_reads
  doc: The total number of reads in the original metagenome. It is used only when  -t
    marker_table is specified for normalizing the length-normalized counts  with the
    metagenome size as well. No normalization applied if --nreads is not  specified
  type: string
  inputBinding:
    prefix: --nreads
- id: pres_th
  doc: Threshold for calling a marker present by the -t marker_pres_table option
  type: string
  inputBinding:
    prefix: --pres_th
- id: clade
  doc: The clade for clade_specific_strain_tracker analysis
  type: boolean
  inputBinding:
    prefix: --clade
- id: min_ab
  doc: The minimum percentage abundace for the clade in the clade_specific_strain_tracker
    analysis
  type: boolean
  inputBinding:
    prefix: --min_ab
- id: file__outputfile
  doc: file, --output_file output file The output file (if not specified as positional
    argument)
  type: string
  inputBinding:
    prefix: -o
- id: sample_id_key
  doc: Specify the sample ID key for this analysis. Defaults to '#SampleID'.
  type: string
  inputBinding:
    prefix: --sample_id_key
- id: use_group_representative
  doc: Use a species as representative for species groups.
  type: boolean
  inputBinding:
    prefix: --use_group_representative
- id: sample_id
  doc: Specify the sample ID for this analysis. Defaults to 'Metaphlan2_Analysis'.
  type: string
  inputBinding:
    prefix: --sample_id
- id: sam_out
  doc: The sam output file
  type: string
  inputBinding:
    prefix: --samout
- id: legacy_output
  doc: Old two columns output
  type: boolean
  inputBinding:
    prefix: --legacy-output
- id: cami_format_output
  doc: Report the profiling using the CAMI output format
  type: boolean
  inputBinding:
    prefix: --CAMI_format_output
- id: unknown_estimation
  doc: Ignore estimation of reads mapping to unkwnown clades
  type: boolean
  inputBinding:
    prefix: --unknown_estimation
- id: biom_output_file
  doc: 'If requesting biom file output: The name of the output file in biom format '
  type: string
  inputBinding:
    prefix: --biom_output_file
- id: metadata_delimiter_char
  doc: 'Delimiter for bug metadata: - defaults to pipe. e.g. the pipe in k__Bacteria|p__Proteobacteria '
  type: string
  inputBinding:
    prefix: --metadata_delimiter_char
- id: nproc
  doc: The number of CPUs to use for parallelizing the mapping [default 4]
  type: string
  inputBinding:
    prefix: --nproc
- id: install
  doc: Only checks if the MetaPhlAn2 DB is installed and installs it if not. All other
    parameters are ignored.
  type: boolean
  inputBinding:
    prefix: --install
- id: force_download
  doc: Force the re-download of the latest MetaPhlAn2 database.
  type: boolean
  inputBinding:
    prefix: --force_download
- id: read_min_len
  doc: Specify the minimum length of the reads to be considered when parsing the input
    file with 'read_fastx.py' script, default value is 70
  type: string
  inputBinding:
    prefix: --read_min_len
- id: input_file
  doc: 'the input file can be: * a fastq file containing metagenomic reads OR * a
    BowTie2 produced SAM file.  OR * an intermediary mapping file of the metagenome
    generated by a previous MetaPhlAn run  If the input file is missing, the script
    assumes that the input is provided using the standard  input, or named pipes.
    IMPORTANT: the type of input needs to be specified with --input_type'
  type: string
  inputBinding:
    position: 0
- id: output_file
  doc: the tab-separated output file of the predicted taxon relative abundances  [stdout
    if not present]
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- metaphlan2.py
