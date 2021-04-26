version 1.0

task Riboloco {
  input {
    File? samples
    File? info
    File? transcript_fast_a
    File? output_file
    File? orf_file
    Int? min_abundance
    Int? min_abundance_ref
    Array[String] read_type
    Boolean? plot_graphs
    Int? min_score
    Boolean? generate_reference
    File? reference
    Boolean? allow_out_of_frame
    Array[String] conversion_types_list
    Boolean? keep_all_valid
    Boolean? reference_use_kl
    Boolean? use_kl
    Int? periodicity
    Int? kl_length
    Boolean? use_stop
    Int? min_a_offset
    Int? max_a_offset
    Int? min_offset
    Int? max_offset
    Int? ignore
    Boolean? write_individual_files
    Boolean? keep_read_types_distinct
    Boolean? save_stats
    Int? min_ratio_start
    Int? min_counts_stop
    Int? min_ratio_stop
    Int? max_distance
    Float? frame_ness_ratio
    Boolean? mismatches
    Float? ambiguity
    Int? o_of_plot_start
    Int? o_of_plot_end
    Int? o_of_plot_stride
    Boolean? no_iterative_improvement
    String? o_of_smooth_window
    Directory? sample_dir
    Directory? output_directory
    Boolean? mono_some_priority
    Boolean? four_column_bed
    File? write_full_data
    String offset_dot
  }
  command <<<
    riboloco \
      ~{offset_dot} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(info) then ("--info " +  '"' + info + '"') else ""} \
      ~{if defined(transcript_fast_a) then ("--transcript_fasta " +  '"' + transcript_fast_a + '"') else ""} \
      ~{if defined(output_file) then ("--output " +  '"' + output_file + '"') else ""} \
      ~{if defined(orf_file) then ("--orf_file " +  '"' + orf_file + '"') else ""} \
      ~{if defined(min_abundance) then ("--min_abundance " +  '"' + min_abundance + '"') else ""} \
      ~{if defined(min_abundance_ref) then ("--min_abundance_ref " +  '"' + min_abundance_ref + '"') else ""} \
      ~{if defined(read_type) then ("--read_type " +  '"' + read_type + '"') else ""} \
      ~{if (plot_graphs) then "--plot_graphs" else ""} \
      ~{if defined(min_score) then ("--min_score " +  '"' + min_score + '"') else ""} \
      ~{if (generate_reference) then "--generate_reference" else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (allow_out_of_frame) then "--allow_out_of_frame" else ""} \
      ~{if defined(conversion_types_list) then ("--conversion_types_list " +  '"' + conversion_types_list + '"') else ""} \
      ~{if (keep_all_valid) then "--keep_all_valid" else ""} \
      ~{if (reference_use_kl) then "--reference_use_KL" else ""} \
      ~{if (use_kl) then "--use_KL" else ""} \
      ~{if defined(periodicity) then ("--periodicity " +  '"' + periodicity + '"') else ""} \
      ~{if defined(kl_length) then ("--kl_length " +  '"' + kl_length + '"') else ""} \
      ~{if (use_stop) then "--use_stop" else ""} \
      ~{if defined(min_a_offset) then ("--min_A_offset " +  '"' + min_a_offset + '"') else ""} \
      ~{if defined(max_a_offset) then ("--max_A_offset " +  '"' + max_a_offset + '"') else ""} \
      ~{if defined(min_offset) then ("--min_offset " +  '"' + min_offset + '"') else ""} \
      ~{if defined(max_offset) then ("--max_offset " +  '"' + max_offset + '"') else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{if (write_individual_files) then "--write_individual_files" else ""} \
      ~{if (keep_read_types_distinct) then "--keep_read_types_distinct" else ""} \
      ~{if (save_stats) then "--save_stats" else ""} \
      ~{if defined(min_ratio_start) then ("--min_ratio_start " +  '"' + min_ratio_start + '"') else ""} \
      ~{if defined(min_counts_stop) then ("--min_counts_stop " +  '"' + min_counts_stop + '"') else ""} \
      ~{if defined(min_ratio_stop) then ("--min_ratio_stop " +  '"' + min_ratio_stop + '"') else ""} \
      ~{if defined(max_distance) then ("--max_distance " +  '"' + max_distance + '"') else ""} \
      ~{if defined(frame_ness_ratio) then ("--frameness_ratio " +  '"' + frame_ness_ratio + '"') else ""} \
      ~{if (mismatches) then "--mismatches" else ""} \
      ~{if defined(ambiguity) then ("--ambiguity " +  '"' + ambiguity + '"') else ""} \
      ~{if defined(o_of_plot_start) then ("--oof_plot_start " +  '"' + o_of_plot_start + '"') else ""} \
      ~{if defined(o_of_plot_end) then ("--oof_plot_end " +  '"' + o_of_plot_end + '"') else ""} \
      ~{if defined(o_of_plot_stride) then ("--oof_plot_stride " +  '"' + o_of_plot_stride + '"') else ""} \
      ~{if (no_iterative_improvement) then "--no_iterative_improvement" else ""} \
      ~{if defined(o_of_smooth_window) then ("--oof_smooth_window " +  '"' + o_of_smooth_window + '"') else ""} \
      ~{if defined(sample_dir) then ("--sample_dir " +  '"' + sample_dir + '"') else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{if (mono_some_priority) then "--monosome_priority" else ""} \
      ~{if (four_column_bed) then "--four_column_bed" else ""} \
      ~{if (write_full_data) then "--write_full_data" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/riboloco:0.3.9--pyh5e36f6f_0"
  }
  parameter_meta {
    samples: "In reference generation mode this may either be a .csv\\nfile of samples (you MUST ensure that the file is of\\n'.csv' otherwise it will not be recognised) or a\\nsingle bed file. In conversion mode it must be a\\nsingle bed file. Bed files should be transcriptome-\\naligned; only reads in the + strand are used. Bed\\nfiles should be 6 column, with transcript_id, start,\\nend, and strand in columns 1, 2, 3 and 6 respectively\\n(the default output from bedtools' 'bamtobed'). Bed\\nfiles can be in .gzip format if desired."
    info: "Info file on transcripts. This should be a tab\\nseparated file with details on the CDS within each\\ntranscript. It should contain the columns\\n'transcript_id', 'cds_start' and 'cds_stop'. The\\ncoordinates MUST be 1-based!"
    transcript_fast_a: "Fasta file of transcripts"
    output_file: "Output file"
    orf_file: "An orf csv generated with riboloco_find_orfs.\\nSupplying this will activate more intensive searching\\nfor out of frame ribosomes."
    min_abundance: "Minimum abundance of read length/frame to be included\\nin final output. Default is 0.01. Set to zero to\\ndisable. This can me lower than --min_abundance_ref,\\nthe rationale being that you want to use abundant read\\nlengths to build the reference, but any read length\\nthat matches the reference well should be included in\\nthe final file."
    min_abundance_ref: "Minimum fraction of total reads that a read type must\\nrepresent for calculation of a reference offset (using\\nstart and stop codon enrichment) to be attempted.\\nDefault=0.1 (10pc). Warning - using low values may\\npromote inclusion of reads which are primarily out of\\nframe. Recommended to keep above 0.05. Read fractions\\nare calculated for reads within the annotated CDS -\\nUTRs are ignored."
    read_type: "Set the read type for which the reference is\\ncalculated in reference generation mode.Additionally,\\nyou can specify the offset with a colon, eg 28_0:-12."
    plot_graphs: "When selected, dislocate plots various graphs and\\nheatmaps which may be useful for downstream analysis,\\nor to verify accuracy of offset assignments."
    min_score: "The minimum correlation between the reference and the\\nRUST ratios for the assigned offset for the file to be\\nwritten. Default = 0.7"
    generate_reference: "Activates reference generation mode - use this mode to\\nmake a reference before converting bed files to single\\nnucleotide resolution"
    reference: "Pre-computed reference file csv, generated by\\ndislocate in 'generate reference' mode. Multiple\\nreferences can be specified by adding a colon between\\nfiles. Optional when running in conversion mode."
    allow_out_of_frame: "Allow out of frame offsets to be assigned"
    conversion_types_list: "Types to output. Can specify an offset with colon, eg\\n28_0:-12. Using this command will cause other types to\\nbe ignored, unless you also use --keep_all_valid"
    keep_all_valid: "This option (only applicable during conversion mode)\\nkeeps all valid read types (i.e. all those that pass\\nperiodicity and abundance filters) even when specific\\nread lengths and offsets are set."
    reference_use_kl: "Use KL divergence to find best offset during reference\\ngeneration"
    use_kl: "Use KL divergence to determine best A site offset\\nduring assignment"
    periodicity: "Periodicity filter - the minimum ratio of reads in the\\nmajor frame to the minor frame for a given read length\\nto pass filtering. Default is 2; higher numbers are\\nmore stringent. Set to 1 to remove filtering"
    kl_length: "The number of codons to use for KL-based determination\\nof offsets. By default = 2 i.e. the P and A sites."
    use_stop: "If argument is used, riboloco will attempt to assign\\noffsets based on stop codon as well as the start\\ncodon. Riboloco will use this value during reference\\ngeneration if either it is consistent with the start\\ncodon determined offset, or if no start codon-based\\noffset could be determined (e.g. with disomes)"
    min_a_offset: "The miniumum offset length from the 3' end of the E\\nsite. (Not the A site) Length is measured in nt.\\nDefault = 3"
    max_a_offset: "The maximum offset length from the 3' end of the E\\nsite (not the A site). Length is measured in nt.\\nDefault = -22"
    min_offset: "The miniumum which is analysed when plotting Length is\\nmeasured in nt. Default = 10"
    max_offset: "The maximum offset which is analysed when plotting.\\nLength is measured in nt. Default = -40"
    ignore: "Read types to ignore. Can add multiple with a colon\\nseparator. Eg -ig 27_2:23_1."
    write_individual_files: "When selected, dislocate also writes individual\\nbedgraph files for each read length/frame. This could\\nbe useful for downstream analysis."
    keep_read_types_distinct: "Write out a single bedgraph, but keep the read types\\ndistinct (useful for downstreamanalysis). Default =\\nFalse"
    save_stats: "Save a csv of the r values for each type, read and"
    min_ratio_start: "The minimum ratio of the start codon counts of a given\\nread type versus the previous position for an offset\\nbased on the start codon to be confidently assigned.\\nDefault=4"
    min_counts_stop: "The minimum number of counts of a given read type at\\nthe stop codon for a read's offset to be confidently\\nassigned. Default=25. To block stop offsets being\\nused, set to large number eg 100000"
    min_ratio_stop: "The minimum ratio of the stop codon counts of a given\\nread type versus the next position for an offset based\\non the stop codon to be confidently assigned.\\nDefault=4"
    max_distance: "Maximum distance in nucleotides around start and stop\\ncodons for which offsets are attempted to be\\ncalculated. Default is 20. Twenty is plenty."
    frame_ness_ratio: "The level of enrichment near the start codon versus\\ndownstream for a read type to be reported as\\npotentially having strong bias towards out of frame\\nribosomes. Default = 1.2 i.e. 20percent"
    mismatches: "Whether to consider first nt mismatches. Only\\navailable when a bam file is provided"
    ambiguity: "Much much better the best r value must be compared to\\nthe second best for an offset to be confidently\\nassigned. Default = 0.8, i.e. the r value of second\\nbest offset must be less than 0.8x the value of the\\nbest offset. Lower values are more stringent. Should\\nbe less than 1, and more than 0"
    o_of_plot_start: "How far downstream of the annotated start to look for\\nout of frame reads. Default=0. Set to negative values\\nto search for uORFs"
    o_of_plot_end: "How far downstream of the annotated start to look for\\nout of frame reads. Default=2000."
    o_of_plot_stride: "How wide each of the windows in the oof heatmap should\\nbe in nucleotides. Default=50nt"
    no_iterative_improvement: "By default, when using RUST ratio correlations to\\ndetermine offsets, when new matches are found they are\\nadded to the reference. This option stops this\\nbehaviour"
    o_of_smooth_window: "Rolling average smoothing for oof heatmap"
    sample_dir: "Directory of the input files. This optional argument\\ncan be useful when passing a csv of filenames to -s in\\nreference generation mode."
    output_directory: "The directory to save outputs."
    mono_some_priority: "During reference generation mode, and if a .csv of\\nsample files is passed to the function, this option\\nensures that only monosome files, i.e. those with\\n'Mon' in the sample name(!), are used for reference\\ngeneration."
    four_column_bed: "select if using a four column bed with the strand in\\nthe 4th column"
    write_full_data: "Write out the raw bed/bam file reads with read type\\nand info\\n"
    offset_dot: "--min_counts_start MIN_COUNTS_START"
  }
  output {
    File out_stdout = stdout()
    File out_samples = "${in_samples}"
    File out_output_file = "${in_output_file}"
    Directory out_output_directory = "${in_output_directory}"
    File out_write_full_data = "${in_write_full_data}"
  }
}