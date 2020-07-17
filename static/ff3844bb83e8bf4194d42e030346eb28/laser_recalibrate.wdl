version 1.0

task LaserRecalibrate {
  input {
    Boolean? arg_file_name_empiric_insertion
    Boolean? arg_file_name_empiric_deletion
    Boolean? arg_file_read_positions
    Boolean? arg_file_read_indels
    Boolean? arg_value_subtract
    Boolean? arg_maximum_distance
    Boolean? distant_pairs
    Boolean? omit_alternative_cigar
    Boolean? omit_secondary_alignments
    Boolean? use_m_matches
    String? mapq_cut_off
    Boolean? convert_readnames_readgroupname
    Boolean? arg_bam_file
    Boolean? use_separate_distributions
    Boolean? put_alignments_readgroup
    String? soft_clip_open_cost
    String? soft_clip_extend_cost
    String insert_length_dist
  }
  command <<<
    laser-recalibrate \
      ~{insert_length_dist} \
      ~{true="-I" false="" arg_file_name_empiric_insertion} \
      ~{true="-D" false="" arg_file_name_empiric_deletion} \
      ~{true="-S" false="" arg_file_read_positions} \
      ~{true="-V" false="" arg_file_read_indels} \
      ~{true="-p" false="" arg_value_subtract} \
      ~{true="-m" false="" arg_maximum_distance} \
      ~{true="--distant-pairs" false="" distant_pairs} \
      ~{true="-c" false="" omit_alternative_cigar} \
      ~{true="-s" false="" omit_secondary_alignments} \
      ~{true="-M" false="" use_m_matches} \
      ~{if defined(mapq_cut_off) then ("--mapq_cutoff " +  '"' + mapq_cut_off + '"') else ""} \
      ~{true="-R" false="" convert_readnames_readgroupname} \
      ~{true="-H" false="" arg_bam_file} \
      ~{true="-r" false="" use_separate_distributions} \
      ~{true="-d" false="" put_alignments_readgroup} \
      ~{if defined(soft_clip_open_cost) then ("--soft_clip_open_cost " +  '"' + soft_clip_open_cost + '"') else ""} \
      ~{if defined(soft_clip_extend_cost) then ("--soft_clip_extend_cost " +  '"' + soft_clip_extend_cost + '"') else ""}
  >>>
  parameter_meta {
    arg_file_name_empiric_insertion: "[ --insertion_length_dist ] arg    File name of empiric insertion size  distribution."
    arg_file_name_empiric_deletion: "[ --deletion_length_dist ] arg     File name of empiric deletion size  distribution."
    arg_file_read_positions: "[ --snp ] arg                      File to read SNP positions from.  Mismatches at these positions will not  incur alignment costs."
    arg_file_read_indels: "[ --variations ] arg               File to read known indels from. These  indels will not incur alignment costs.  Will also be taken into account for  internal segment size probability."
    arg_value_subtract: "[ --phred_offset ] arg (=33)       Value to subtract from ASCII code to  get the PHRED quality."
    arg_maximum_distance: "[ --max_pair_distance ] arg (=50000) Maximum distance of reads in a  \"regular\" pair. If distance is  larger/interchromosomal, reads can  still be paired, but only if option  --distant-pairs is given and no pair  with smaller distance is present."
    distant_pairs: "Allow long distance and  interchromosomal alignments to be  paired."
    omit_alternative_cigar: "[ --omit_alt_cigars ]              Omit alternative cigar strings stored  in YA tags."
    omit_secondary_alignments: "[ --omit_secondary_aln ]           Omit secondary alignments."
    use_m_matches: "[ --m_in_cigar ]                   Use M for matches and mismatches in  CIGAR strings (instead of '=' and 'X')."
    mapq_cut_off: "(=0)                Only report properly paired reads for  which each read has a MAPQ above the  given level. Other alignments will be  omitted. Requires option -s."
    convert_readnames_readgroupname: "[ --readgroup_from_name ]          Convert readnames of the format  <readgroup>_<name> back to <name> and  set respective read group tag."
    arg_bam_file: "[ --readgroup_header ] arg         BAM file from which the @RG lines in  the header are to be copied."
    use_separate_distributions: "[ --readgroup_wise_stats ]         Use separate insert size distributions  for every read group. If set,  <insert-length-dist> must be a two  column text file contain read group  names and filenames of corresponding  insert size distributions."
    put_alignments_readgroup: "[ --default_readgroup ]            Put all alignments into readgroup  \"default\"."
    soft_clip_open_cost: "(=35)       Cost for soft clipping a read."
    soft_clip_extend_cost: "(=3)      Cost for \"extending\" a soft clip; i.e., softclipping k characters from a read  will cost soft_clip_open_cost+k*soft_cl ip_extend_cost."
    insert_length_dist: ""
  }
}