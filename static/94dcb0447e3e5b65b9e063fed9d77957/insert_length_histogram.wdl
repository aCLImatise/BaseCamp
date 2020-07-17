version 1.0

task InsertLengthHistogram {
  input {
    Boolean? arg_minimum_number
    Boolean? arg_write_deviation
    Boolean? print_forth_column
    Boolean? sorted
    Boolean? arg_number_process
    Boolean? all
    Boolean? arg_filename_output
    Boolean? report_distributions_used
    Boolean? arg_write_list
  }
  command <<<
    insert-length-histogram \
      ~{true="-c" false="" arg_minimum_number} \
      ~{true="-m" false="" arg_write_deviation} \
      ~{true="-g" false="" print_forth_column} \
      ~{true="--sorted" false="" sorted} \
      ~{true="-C" false="" arg_number_process} \
      ~{true="--all" false="" all} \
      ~{true="-o" false="" arg_filename_output} \
      ~{true="-R" false="" report_distributions_used} \
      ~{true="-L" false="" arg_write_list}
  >>>
  parameter_meta {
    arg_minimum_number: "[ --min_count_per_bin ] arg (=20) Minimum number of counts per bin. If  necessary, bins are joined to reach this number of counts."
    arg_write_deviation: "[ --mean_and_sd ] arg             Write (robustly estimated) mean and  standard deviation of main peak to given filename. If used together with option  -R, the filename must contain the  wildcard '{readgroup}' which is replaced by the actual read group."
    print_forth_column: "[ --gaussian_values ]             Print forth column: probability based on Gaussian estimated from main peak."
    sorted: "Input BAM file is sorted by position"
    arg_number_process: "[ --count ] arg (=1000000)        Number of uniquely mappable read pairs  to process."
    all: "Read all alignments rather than only the number given in option -C"
    arg_filename_output: "[ --output ] arg                  Filename for output to be written to  (default: stdout). If used together with option -R, the filename must contain the wildcard '{readgroup}' which is replaced by the actual read group."
    report_distributions_used: "[ --readgroupwise ]               Report a separate distributions for each read group. Must be used in connection  with option -o."
    arg_write_list: "[ --readgrouplist ] arg           Write list of encountered read groups to given filename. Format: <readgroup>  <distribution-filename>."
  }
}