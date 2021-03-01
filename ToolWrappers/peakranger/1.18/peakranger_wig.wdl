version 1.0

task PeakrangerWig {
  input {
    Boolean? arg_data_file
    File? format
    Boolean? arg_output_location
    Boolean? generate_one_wig_file_chromosome
    Boolean? _compress_output
    Boolean? generate_one_wig_file_strand
    Boolean? arg_read_length
    Boolean? verbose
    String var_input
  }
  command <<<
    peakranger wig \
      ~{var_input} \
      ~{if (arg_data_file) then "-d" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if (arg_output_location) then "-o" else ""} \
      ~{if (generate_one_wig_file_chromosome) then "-s" else ""} \
      ~{if (_compress_output) then "-z" else ""} \
      ~{if (generate_one_wig_file_strand) then "-x" else ""} \
      ~{if (arg_read_length) then "-l" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_data_file: "[ --data ] arg               data file"
    format: "the format of the data file, can be one of :\\nbowtie, sam, bam and bed"
    arg_output_location: "[ --output ] arg             the output location"
    generate_one_wig_file_chromosome: "[ --split ]                  generate one wig file per chromosome"
    _compress_output: "[ --gzip ]                   compress the output"
    generate_one_wig_file_strand: "[ --strand ]                 generate one wig file per strand"
    arg_read_length: "[ --ext_length ] arg (=200)  read extension length"
    verbose: "show progress"
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}