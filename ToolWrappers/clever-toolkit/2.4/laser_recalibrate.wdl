version 1.0

task Laserrecalibrate {
  input {
    Boolean? arg_file_name
    Boolean? arg_file_read
    Boolean? arg_value_subtract
    Boolean? arg_maximum_distance
    Boolean? distant_pairs
    Boolean? omit_alternative_cigar
    Boolean? omit_secondary_alignments
    Boolean? use_m_mismatches
    Int? mapq_cut_off
    Boolean? convert_readnames_name
    Boolean? arg_bam_file
    Boolean? use_separate_size
    Boolean? put_alignments_readgroup
    Int? soft_clip_open_cost
    Int? soft_clip_extend_cost
    Int insert_length_dist
  }
  command <<<
    laser_recalibrate \
      ~{insert_length_dist} \
      ~{if (arg_file_name) then "-I" else ""} \
      ~{if (arg_file_read) then "-V" else ""} \
      ~{if (arg_value_subtract) then "-p" else ""} \
      ~{if (arg_maximum_distance) then "-m" else ""} \
      ~{if (distant_pairs) then "--distant-pairs" else ""} \
      ~{if (omit_alternative_cigar) then "-c" else ""} \
      ~{if (omit_secondary_alignments) then "-s" else ""} \
      ~{if (use_m_mismatches) then "-M" else ""} \
      ~{if defined(mapq_cut_off) then ("--mapq_cutoff " +  '"' + mapq_cut_off + '"') else ""} \
      ~{if (convert_readnames_name) then "-R" else ""} \
      ~{if (arg_bam_file) then "-H" else ""} \
      ~{if (use_separate_size) then "-r" else ""} \
      ~{if (put_alignments_readgroup) then "-d" else ""} \
      ~{if defined(soft_clip_open_cost) then ("--soft_clip_open_cost " +  '"' + soft_clip_open_cost + '"') else ""} \
      ~{if defined(soft_clip_extend_cost) then ("--soft_clip_extend_cost " +  '"' + soft_clip_extend_cost + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_file_name: "[ --insertion_length_dist ] arg    File name of empiric insertion size"
    arg_file_read: "[ --variations ] arg               File to read known indels from. These\\nindels will not incur alignment costs.\\nWill also be taken into account for\\ninternal segment size probability."
    arg_value_subtract: "[ --phred_offset ] arg (=33)       Value to subtract from ASCII code to\\nget the PHRED quality."
    arg_maximum_distance: "[ --max_pair_distance ] arg (=50000)\\nMaximum distance of reads in a\\n\\\"regular\\\" pair. If distance is\\nlarger/interchromosomal, reads can\\nstill be paired, but only if option\\n--distant-pairs is given and no pair\\nwith smaller distance is present."
    distant_pairs: "Allow long distance and\\ninterchromosomal alignments to be\\npaired."
    omit_alternative_cigar: "[ --omit_alt_cigars ]              Omit alternative cigar strings stored\\nin YA tags."
    omit_secondary_alignments: "[ --omit_secondary_aln ]           Omit secondary alignments."
    use_m_mismatches: "[ --m_in_cigar ]                   Use M for matches and mismatches in\\nCIGAR strings (instead of '=' and 'X')."
    mapq_cut_off: "(=0)                Only report properly paired reads for\\nwhich each read has a MAPQ above the\\ngiven level. Other alignments will be\\nomitted. Requires option -s."
    convert_readnames_name: "[ --readgroup_from_name ]          Convert readnames of the format\\n<readgroup>_<name> back to <name> and\\nset respective read group tag."
    arg_bam_file: "[ --readgroup_header ] arg         BAM file from which the @RG lines in\\nthe header are to be copied."
    use_separate_size: "[ --readgroup_wise_stats ]         Use separate insert size distributions\\nfor every read group. If set,\\n<insert-length-dist> must be a two\\ncolumn text file contain read group\\nnames and filenames of corresponding\\ninsert size distributions."
    put_alignments_readgroup: "[ --default_readgroup ]            Put all alignments into readgroup\\n\\\"default\\\"."
    soft_clip_open_cost: "(=35)       Cost for soft clipping a read."
    soft_clip_extend_cost: "(=3)      Cost for \\\"extending\\\" a soft clip; i.e.,\\nsoftclipping k characters from a read\\nwill cost soft_clip_open_cost+k*soft_cl\\nip_extend_cost.\\n"
    insert_length_dist: ""
  }
  output {
    File out_stdout = stdout()
  }
}