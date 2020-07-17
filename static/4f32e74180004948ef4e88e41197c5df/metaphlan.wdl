version 1.0

task Metaphlan {
  input {
    String? input_type_dot
    String? input_type
    Boolean? force
    String? bowtie_two_db
    String? index
    String? bt_two_ps
    String? bowtie_two_exe
    String? bowtie_two_build
    File? bowtie_two_out
    Int? min_mapq_val
    Boolean? no_map
    Boolean? tmp_dir
    String? tax_lev
    Boolean? min_cu_len
    Boolean? min_alignment_len
    Boolean? add_viruses
    Boolean? ignore_eukaryotes
    Boolean? ignore_bacteria
    Boolean? ignore_archaea
    Boolean? stat_q
    Boolean? perc_nonzero
    String? ignore_markers
    Boolean? avoid_di_sqm
    Boolean? stat
    String? type_type_perform
    String? n_reads
    String? pres_th
    Boolean? clade
    Boolean? min_ab
    String? file__outputfile
    String? sample_id_key
    Boolean? use_group_representative
    String? sample_id
    String? sam_out
    Boolean? legacy_output
    Boolean? cami_format_output
    Boolean? unknown_estimation
    String? biom_output_file
    String? metadata_delimiter_char
    String? nproc
    Boolean? install
    Boolean? force_download
    String? read_min_len
    String input_file
    String output_file
  }
  command <<<
    metaphlan \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(input_type_dot) then ("--input_type. " +  '"' + input_type_dot + '"') else ""} \
      ~{if defined(input_type) then ("--input_type " +  '"' + input_type + '"') else ""} \
      ~{true="--force" false="" force} \
      ~{if defined(bowtie_two_db) then ("--bowtie2db " +  '"' + bowtie_two_db + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(bt_two_ps) then ("--bt2_ps " +  '"' + bt_two_ps + '"') else ""} \
      ~{if defined(bowtie_two_exe) then ("--bowtie2_exe " +  '"' + bowtie_two_exe + '"') else ""} \
      ~{if defined(bowtie_two_build) then ("--bowtie2_build " +  '"' + bowtie_two_build + '"') else ""} \
      ~{if defined(bowtie_two_out) then ("--bowtie2out " +  '"' + bowtie_two_out + '"') else ""} \
      ~{if defined(min_mapq_val) then ("--min_mapq_val " +  '"' + min_mapq_val + '"') else ""} \
      ~{true="--no_map" false="" no_map} \
      ~{true="--tmp_dir" false="" tmp_dir} \
      ~{if defined(tax_lev) then ("--tax_lev " +  '"' + tax_lev + '"') else ""} \
      ~{true="--min_cu_len" false="" min_cu_len} \
      ~{true="--min_alignment_len" false="" min_alignment_len} \
      ~{true="--add_viruses" false="" add_viruses} \
      ~{true="--ignore_eukaryotes" false="" ignore_eukaryotes} \
      ~{true="--ignore_bacteria" false="" ignore_bacteria} \
      ~{true="--ignore_archaea" false="" ignore_archaea} \
      ~{true="--stat_q" false="" stat_q} \
      ~{true="--perc_nonzero" false="" perc_nonzero} \
      ~{if defined(ignore_markers) then ("--ignore_markers " +  '"' + ignore_markers + '"') else ""} \
      ~{true="--avoid_disqm" false="" avoid_di_sqm} \
      ~{true="--stat" false="" stat} \
      ~{if defined(type_type_perform) then ("-t " +  '"' + type_type_perform + '"') else ""} \
      ~{if defined(n_reads) then ("--nreads " +  '"' + n_reads + '"') else ""} \
      ~{if defined(pres_th) then ("--pres_th " +  '"' + pres_th + '"') else ""} \
      ~{true="--clade" false="" clade} \
      ~{true="--min_ab" false="" min_ab} \
      ~{if defined(file__outputfile) then ("-o " +  '"' + file__outputfile + '"') else ""} \
      ~{if defined(sample_id_key) then ("--sample_id_key " +  '"' + sample_id_key + '"') else ""} \
      ~{true="--use_group_representative" false="" use_group_representative} \
      ~{if defined(sample_id) then ("--sample_id " +  '"' + sample_id + '"') else ""} \
      ~{if defined(sam_out) then ("--samout " +  '"' + sam_out + '"') else ""} \
      ~{true="--legacy-output" false="" legacy_output} \
      ~{true="--CAMI_format_output" false="" cami_format_output} \
      ~{true="--unknown_estimation" false="" unknown_estimation} \
      ~{if defined(biom_output_file) then ("--biom_output_file " +  '"' + biom_output_file + '"') else ""} \
      ~{if defined(metadata_delimiter_char) then ("--metadata_delimiter_char " +  '"' + metadata_delimiter_char + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{true="--install" false="" install} \
      ~{true="--force_download" false="" force_download} \
      ~{if defined(read_min_len) then ("--read_min_len " +  '"' + read_min_len + '"') else ""}
  >>>
  parameter_meta {
    input_type_dot: "steps: first apply BowTie2 and then feed MetaPhlAn with the obtained sam:"
    input_type: "set whether the input is the FASTA file of metagenomic reads or  the SAM file of the mapping of the reads against the MetaPhlAn db."
    force: "Force profiling of the input file by removing the bowtie2out file"
    bowtie_two_db: "Folder containing the MetaPhlAn database.[default /tmp/tmphczlrijk/lib/python3.7/site-packages/metaphlan/metaphlan_databases]"
    index: "Specify the id of the database version to use. If \"latest\", MetaPhlAn will get the latest version. If the database files are not found on the local MetaPhlAn installation they will be automatically downloaded [default latest]"
    bt_two_ps: "presets Presets options for BowTie2 (applied only when a FASTA file is provided) The choices enabled in MetaPhlAn are: * sensitive * very-sensitive * sensitive-local * very-sensitive-local [default very-sensitive]"
    bowtie_two_exe: "Full path and name of the BowTie2 executable. This option allowsMetaPhlAn to reach the executable even when it is not in the system PATH or the system PATH is unreachable"
    bowtie_two_build: "Full path to the bowtie2-build command to use, deafult assumes that 'bowtie2-build is present in the system path"
    bowtie_two_out: "The file for saving the output of BowTie2"
    min_mapq_val: "Minimum mapping quality value (MAPQ)"
    no_map: "Avoid storing the --bowtie2out map file"
    tmp_dir: "The folder used to store temporary files [default is the OS dependent tmp dir]"
    tax_lev: "The taxonomic level for the relative abundance output: 'a' : all taxonomic levels 'k' : kingdoms 'p' : phyla only 'c' : classes only 'o' : orders only 'f' : families only 'g' : genera only 's' : species only [default 'a']"
    min_cu_len: "minimum total nucleotide length for the markers in a clade for estimating the abundance without considering sub-clade abundances [default 2000]"
    min_alignment_len: "The sam records for aligned reads with the longest subalignment length smaller than this threshold will be discarded. [default None]"
    add_viruses: "Allow the profiling of viral organisms"
    ignore_eukaryotes: "Do not profile eukaryotic organisms"
    ignore_bacteria: "Do not profile bacterial organisms"
    ignore_archaea: "Do not profile archeal organisms"
    stat_q: "Quantile value for the robust average [default 0.2]"
    perc_nonzero: "Percentage of markers with a non zero relative abundance for misidentify a species [default 0.33]"
    ignore_markers: "File containing a list of markers to ignore. "
    avoid_di_sqm: "Deactivate the procedure of disambiguating the quasi-markers based on the  marker abundance pattern found in the sample. It is generally recommended  to keep the disambiguation procedure in order to minimize false positives"
    stat: "Statistical approach for converting marker abundances into clade abundances 'avg_g'  : clade global (i.e. normalizing all markers together) average 'avg_l'  : average of length-normalized marker counts 'tavg_g' : truncated clade global average at --stat_q quantile 'tavg_l' : truncated average of length-normalized marker counts (at --stat_q) 'wavg_g' : winsorized clade global average (at --stat_q) 'wavg_l' : winsorized average of length-normalized marker counts (at --stat_q) 'med'    : median of length-normalized marker counts [default tavg_g]"
    type_type_perform: "TYPE      Type of analysis to perform:  * rel_ab: profiling a metagenomes in terms of relative abundances * rel_ab_w_read_stats: profiling a metagenomes in terms of relative abundances and estimate the number of reads coming from each clade. * reads_map: mapping from reads to clades (only reads hitting a marker) * clade_profiles: normalized marker counts for clades with at least a non-null marker * marker_ab_table: normalized marker counts (only when > 0.0 and normalized by metagenome size if --nreads is specified) * marker_counts: non-normalized marker counts [use with extreme caution] * marker_pres_table: list of markers present in the sample (threshold at 1.0 if not differently specified with --pres_th [default 'rel_ab']"
    n_reads: "The total number of reads in the original metagenome. It is used only when  -t marker_table is specified for normalizing the length-normalized counts  with the metagenome size as well. No normalization applied if --nreads is not  specified"
    pres_th: "Threshold for calling a marker present by the -t marker_pres_table option"
    clade: "The clade for clade_specific_strain_tracker analysis"
    min_ab: "The minimum percentage abundance for the clade in the clade_specific_strain_tracker analysis"
    file__outputfile: "file, --output_file output file The output file (if not specified as positional argument)"
    sample_id_key: "Specify the sample ID key for this analysis. Defaults to 'SampleID'."
    use_group_representative: "Use a species as representative for species groups."
    sample_id: "Specify the sample ID for this analysis. Defaults to 'Metaphlan_Analysis'."
    sam_out: "The sam output file"
    legacy_output: "Old MetaPhlAn2 two columns output"
    cami_format_output: "Report the profiling using the CAMI output format"
    unknown_estimation: "Scale relative abundances to the number of reads mapping to known clades in order to estimate unknowness"
    biom_output_file: "If requesting biom file output: The name of the output file in biom format "
    metadata_delimiter_char: "Delimiter for bug metadata: - defaults to pipe. e.g. the pipe in k__Bacteria|p__Proteobacteria "
    nproc: "The number of CPUs to use for parallelizing the mapping [default 4]"
    install: "Only checks if the MetaPhlAn DB is installed and installs it if not. All other parameters are ignored."
    force_download: "Force the re-download of the latest MetaPhlAn database."
    read_min_len: "Specify the minimum length of the reads to be considered when parsing the input file with 'read_fastx.py' script, default value is 70"
    input_file: "the input file can be: * a fastq file containing metagenomic reads OR * a BowTie2 produced SAM file.  OR * an intermediary mapping file of the metagenome generated by a previous MetaPhlAn run  If the input file is missing, the script assumes that the input is provided using the standard  input, or named pipes. IMPORTANT: the type of input needs to be specified with --input_type"
    output_file: "the tab-separated output file of the predicted taxon relative abundances  [stdout if not present]"
  }
}