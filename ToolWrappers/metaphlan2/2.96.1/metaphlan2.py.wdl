version 1.0

task Metaphlan2py {
  input {
    Int? input_type_dot
    String? input_type
    File? mpa_pkl
    Boolean? force
    Int? bowtie_two_db
    Int? index
    Int? bt_two_ps
    Int? bowtie_two_exe
    Int? bowtie_two_build
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
    File? ignore_markers
    Boolean? avoid_di_sqm
    Boolean? stat
    Int? type_type_perform
    Int? n_reads
    String? pres_th
    Boolean? clade
    Boolean? min_ab
    File? file__file
    String? sample_id_key
    Boolean? use_group_representative
    Int? sample_id
    File? sam_out
    Boolean? legacy_output
    Boolean? cami_format_output
    Boolean? unknown_estimation
    File? biom_output_file
    String? metadata_delimiter_char
    Int? nproc
    Boolean? install
    Boolean? force_download
    Int? read_min_len
    String input_file
    String output_file
  }
  command <<<
    metaphlan2_py \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(input_type_dot) then ("--input_type. " +  '"' + input_type_dot + '"') else ""} \
      ~{if defined(input_type) then ("--input_type " +  '"' + input_type + '"') else ""} \
      ~{if defined(mpa_pkl) then ("--mpa_pkl " +  '"' + mpa_pkl + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(bowtie_two_db) then ("--bowtie2db " +  '"' + bowtie_two_db + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(bt_two_ps) then ("--bt2_ps " +  '"' + bt_two_ps + '"') else ""} \
      ~{if defined(bowtie_two_exe) then ("--bowtie2_exe " +  '"' + bowtie_two_exe + '"') else ""} \
      ~{if defined(bowtie_two_build) then ("--bowtie2_build " +  '"' + bowtie_two_build + '"') else ""} \
      ~{if defined(bowtie_two_out) then ("--bowtie2out " +  '"' + bowtie_two_out + '"') else ""} \
      ~{if defined(min_mapq_val) then ("--min_mapq_val " +  '"' + min_mapq_val + '"') else ""} \
      ~{if (no_map) then "--no_map" else ""} \
      ~{if (tmp_dir) then "--tmp_dir" else ""} \
      ~{if defined(tax_lev) then ("--tax_lev " +  '"' + tax_lev + '"') else ""} \
      ~{if (min_cu_len) then "--min_cu_len" else ""} \
      ~{if (min_alignment_len) then "--min_alignment_len" else ""} \
      ~{if (add_viruses) then "--add_viruses" else ""} \
      ~{if (ignore_eukaryotes) then "--ignore_eukaryotes" else ""} \
      ~{if (ignore_bacteria) then "--ignore_bacteria" else ""} \
      ~{if (ignore_archaea) then "--ignore_archaea" else ""} \
      ~{if (stat_q) then "--stat_q" else ""} \
      ~{if (perc_nonzero) then "--perc_nonzero" else ""} \
      ~{if defined(ignore_markers) then ("--ignore_markers " +  '"' + ignore_markers + '"') else ""} \
      ~{if (avoid_di_sqm) then "--avoid_disqm" else ""} \
      ~{if (stat) then "--stat" else ""} \
      ~{if defined(type_type_perform) then ("-t " +  '"' + type_type_perform + '"') else ""} \
      ~{if defined(n_reads) then ("--nreads " +  '"' + n_reads + '"') else ""} \
      ~{if defined(pres_th) then ("--pres_th " +  '"' + pres_th + '"') else ""} \
      ~{if (clade) then "--clade" else ""} \
      ~{if (min_ab) then "--min_ab" else ""} \
      ~{if defined(file__file) then ("-o " +  '"' + file__file + '"') else ""} \
      ~{if defined(sample_id_key) then ("--sample_id_key " +  '"' + sample_id_key + '"') else ""} \
      ~{if (use_group_representative) then "--use_group_representative" else ""} \
      ~{if defined(sample_id) then ("--sample_id " +  '"' + sample_id + '"') else ""} \
      ~{if defined(sam_out) then ("--samout " +  '"' + sam_out + '"') else ""} \
      ~{if (legacy_output) then "--legacy-output" else ""} \
      ~{if (cami_format_output) then "--CAMI_format_output" else ""} \
      ~{if (unknown_estimation) then "--unknown_estimation" else ""} \
      ~{if defined(biom_output_file) then ("--biom_output_file " +  '"' + biom_output_file + '"') else ""} \
      ~{if defined(metadata_delimiter_char) then ("--metadata_delimiter_char " +  '"' + metadata_delimiter_char + '"') else ""} \
      ~{if defined(nproc) then ("--nproc " +  '"' + nproc + '"') else ""} \
      ~{if (install) then "--install" else ""} \
      ~{if (force_download) then "--force_download" else ""} \
      ~{if defined(read_min_len) then ("--read_min_len " +  '"' + read_min_len + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_type_dot: "steps: first apply BowTie2 and then feed MetaPhlAn2 with the obtained sam:"
    input_type: "set whether the input is the multifasta file of metagenomic reads or\\nthe SAM file of the mapping of the reads against the MetaPhlAn db.\\n[default 'automatic', i.e. the script will try to guess the input format]"
    mpa_pkl: "The metadata pickled MetaPhlAn file [deprecated]"
    force: "Force profiling of the input file by removing the bowtie2out file"
    bowtie_two_db: "Folder containing the MetaPhlAn database. Used if --input_type is fastq, fasta, multifasta, or multifastq [default /usr/local/bin/metaphlan_databases]"
    index: "Specify the id of the database version to use. If \\\"latest\\\", MetaPhlAn2 will get the latest version. If the database\\nfiles are not found on the local MetaPhlAn2 installation they\\nwill be automatically downloaded [default latest]"
    bt_two_ps: "presets\\nPresets options for BowTie2 (applied only when a multifasta file is provided)\\nThe choices enabled in MetaPhlAn are:\\n* sensitive\\n* very-sensitive\\n* sensitive-local\\n* very-sensitive-local\\n[default very-sensitive]"
    bowtie_two_exe: "Full path and name of the BowTie2 executable. This option allowsMetaPhlAn to reach the executable even when it is not in the system PATH or the system PATH is unreachable"
    bowtie_two_build: "Full path to the bowtie2-build command to use, deafult assumes that 'bowtie2-build is present in the system path"
    bowtie_two_out: "The file for saving the output of BowTie2"
    min_mapq_val: "Minimum mapping quality value (MAPQ)"
    no_map: "Avoid storing the --bowtie2out map file"
    tmp_dir: "The folder used to store temporary files [default is the OS dependent tmp dir]"
    tax_lev: "The taxonomic level for the relative abundance output:\\n'a' : all taxonomic levels\\n'k' : kingdoms\\n'p' : phyla only\\n'c' : classes only\\n'o' : orders only\\n'f' : families only\\n'g' : genera only\\n's' : species only\\n[default 'a']"
    min_cu_len: "minimum total nucleotide length for the markers in a clade for\\nestimating the abundance without considering sub-clade abundances\\n[default 2000]"
    min_alignment_len: "The sam records for aligned reads with the longest subalignment\\nlength smaller than this threshold will be discarded.\\n[default None]"
    add_viruses: "Allow the profiling of viral organisms"
    ignore_eukaryotes: "Do not profile eukaryotic organisms"
    ignore_bacteria: "Do not profile bacterial organisms"
    ignore_archaea: "Do not profile archeal organisms"
    stat_q: "Quantile value for the robust average\\n[default 0.2]"
    perc_nonzero: "Percentage of markers with a non zero relative abundance for misidentify a species\\n[default 0.33]"
    ignore_markers: "File containing a list of markers to ignore."
    avoid_di_sqm: "Deactivate the procedure of disambiguating the quasi-markers based on the\\nmarker abundance pattern found in the sample. It is generally recommended\\nto keep the disambiguation procedure in order to minimize false positives"
    stat: "EXPERIMENTAL! Statistical approach for converting marker abundances into clade abundances\\n'avg_g'  : clade global (i.e. normalizing all markers together) average\\n'avg_l'  : average of length-normalized marker counts\\n'tavg_g' : truncated clade global average at --stat_q quantile\\n'tavg_l' : trunated average of length-normalized marker counts (at --stat_q)\\n'wavg_g' : winsorized clade global average (at --stat_q)\\n'wavg_l' : winsorized average of length-normalized marker counts (at --stat_q)\\n'med'    : median of length-normalized marker counts\\n[default tavg_g]"
    type_type_perform: "TYPE      Type of analysis to perform:\\n* rel_ab: profiling a metagenomes in terms of relative abundances\\n* rel_ab_w_read_stats: profiling a metagenomes in terms of relative abundances and estimate the number of reads coming from each clade.\\n* reads_map: mapping from reads to clades (only reads hitting a marker)\\n* clade_profiles: normalized marker counts for clades with at least a non-null marker\\n* marker_ab_table: normalized marker counts (only when > 0.0 and normalized by metagenome size if --nreads is specified)\\n* marker_counts: non-normalized marker counts [use with extreme caution]\\n* marker_pres_table: list of markers present in the sample (threshold at 1.0 if not differently specified with --pres_th\\n[default 'rel_ab']"
    n_reads: "The total number of reads in the original metagenome. It is used only when\\n-t marker_table is specified for normalizing the length-normalized counts\\nwith the metagenome size as well. No normalization applied if --nreads is not\\nspecified"
    pres_th: "Threshold for calling a marker present by the -t marker_pres_table option"
    clade: "The clade for clade_specific_strain_tracker analysis"
    min_ab: "The minimum percentage abundace for the clade in the clade_specific_strain_tracker analysis"
    file__file: "file, --output_file output file\\nThe output file (if not specified as positional argument)"
    sample_id_key: "Specify the sample ID key for this analysis. Defaults to '#SampleID'."
    use_group_representative: "Use a species as representative for species groups."
    sample_id: "Specify the sample ID for this analysis. Defaults to 'Metaphlan2_Analysis'."
    sam_out: "The sam output file"
    legacy_output: "Old two columns output"
    cami_format_output: "Report the profiling using the CAMI output format"
    unknown_estimation: "Ignore estimation of reads mapping to unkwnown clades"
    biom_output_file: "If requesting biom file output: The name of the output file in biom format"
    metadata_delimiter_char: "Delimiter for bug metadata: - defaults to pipe. e.g. the pipe in k__Bacteria|p__Proteobacteria"
    nproc: "The number of CPUs to use for parallelizing the mapping [default 4]"
    install: "Only checks if the MetaPhlAn2 DB is installed and installs it if not. All other parameters are ignored."
    force_download: "Force the re-download of the latest MetaPhlAn2 database."
    read_min_len: "Specify the minimum length of the reads to be considered when parsing the input file with 'read_fastx.py' script, default value is 70"
    input_file: "the input file can be:\\n* a fastq file containing metagenomic reads\\nOR\\n* a BowTie2 produced SAM file.\\nOR\\n* an intermediary mapping file of the metagenome generated by a previous MetaPhlAn run\\nIf the input file is missing, the script assumes that the input is provided using the standard\\ninput, or named pipes.\\nIMPORTANT: the type of input needs to be specified with --input_type"
    output_file: "the tab-separated output file of the predicted taxon relative abundances \\n[stdout if not present]"
  }
  output {
    File out_stdout = stdout()
    File out_bowtie_two_out = "${in_bowtie_two_out}"
    File out_file__file = "${in_file__file}"
    File out_sam_out = "${in_sam_out}"
    File out_biom_output_file = "${in_biom_output_file}"
  }
}