version 1.0

task BamToAlignmentPriors {
  input {
    Boolean? skip_reads_exist
    Boolean? ignore_x_a
    Boolean? use_mapq
    Boolean? arg_value_substract
    Boolean? arg_issue_warning
    Boolean? arg_maximal_segment
    Boolean? arg_discard_alignments
    Boolean? arg_filename_known
    Boolean? arg_filename_distribution
    Boolean? arg_filename_readgroupwise
    Boolean? arg_number_uniquely
    Boolean? arg_write_deviation
    Boolean? arg_number_default
    Boolean? unsorted
    String? chromosome
  }
  command <<<
    bam-to-alignment-priors \
      ~{true="-x" false="" skip_reads_exist} \
      ~{true="--ignore_xa" false="" ignore_x_a} \
      ~{true="--use_mapq" false="" use_mapq} \
      ~{true="-p" false="" arg_value_substract} \
      ~{true="-b" false="" arg_issue_warning} \
      ~{true="-s" false="" arg_maximal_segment} \
      ~{true="-d" false="" arg_discard_alignments} \
      ~{true="-i" false="" arg_filename_known} \
      ~{true="-I" false="" arg_filename_distribution} \
      ~{true="-r" false="" arg_filename_readgroupwise} \
      ~{true="-n" false="" arg_number_uniquely} \
      ~{true="-m" false="" arg_write_deviation} \
      ~{true="-T" false="" arg_number_default} \
      ~{true="--unsorted" false="" unsorted} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""}
  >>>
  parameter_meta {
    skip_reads_exist: "[ --dont_skip_non_xa ]             Do not skip reads for which other  alignments exist (i.e. X0+X1>1, but no  XA tag is present)."
    ignore_x_a: "Do not use alternative alignments from  XA tags."
    use_mapq: "Use MAPQ instead of recomputing  probability from all alignments."
    arg_value_substract: "[ --phred_base ] arg (=33)         Value to substract from ASCII code to  get the PHRED quality."
    arg_issue_warning: "[ --bad_alignment_threshold ] arg (=1000) Issue a warning when AS tag is above  this value."
    arg_maximal_segment: "[ --max_span ] arg (=50000)        Maximal internal segment. Read pairs  with larger internal segment will be  ignored."
    arg_discard_alignments: "[ --discard_reads ] arg (=0)       Discard \"concordant\" alignments within  the given number of standard deviations (default: disabled)."
    arg_filename_known: "[ --insert_size_dist ] arg         Filename of known internal segment size distribution. If not given, this  distribution is estimated."
    arg_filename_distribution: "[ --insert_size_dist_out ] arg     Filename of write estimated internal  segment size distribution to."
    arg_filename_readgroupwise: "[ --rg_insert_size_dist ] arg      Filename of read-group-wise known  internal segment size distributions.  Expects two-column text file:  <readgroup> <distribution-filename>."
    arg_number_uniquely: "[ --dist_est_count ] arg (=5000000) Number of uniquely mapping reads that  are to be used to estimate internal  segment size distribution."
    arg_write_deviation: "[ --mean_and_sd ] arg              Write (robustly estimated) mean and  standard deviation of main peak if  internal segment size distribution to  given filename."
    arg_number_default: "[ --threads ] arg (=0)             Number of threads (default: 0 =  strictly single-threaded)."
    unsorted: "Don't assume reads to be sorted by  position. In this case, alignments must be grouped by read, i.e. alignments of  the same read (pair) must be in  subsequent lines."
    chromosome: "Chromosome to process (default: all)."
  }
}