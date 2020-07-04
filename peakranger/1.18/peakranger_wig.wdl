version 1.0

task PeakrangerWig {
  input {
    Boolean? arg_data_file
    String? format
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
      ~{true="-d" false="" arg_data_file} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{true="-o" false="" arg_output_location} \
      ~{true="-s" false="" generate_one_wig_file_chromosome} \
      ~{true="-z" false="" _compress_output} \
      ~{true="-x" false="" generate_one_wig_file_strand} \
      ~{true="-l" false="" arg_read_length} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    arg_data_file: "[ --data ] arg               data file"
    format: "the format of the data file, can be one of :  bowtie, sam, bam and bed"
    arg_output_location: "[ --output ] arg             the output location"
    generate_one_wig_file_chromosome: "[ --split ]                  generate one wig file per chromosome"
    _compress_output: "[ --gzip ]                   compress the output"
    generate_one_wig_file_strand: "[ --strand ]                 generate one wig file per strand"
    arg_read_length: "[ --ext_length ] arg (=200)  read extension length"
    verbose: "show progress"
    var_input: ""
  }
}