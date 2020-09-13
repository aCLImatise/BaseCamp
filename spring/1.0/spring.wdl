version 1.0

task Spring {
  input {
    Boolean? _compress
    Boolean? _decompress
    File? decompress_range
    Boolean? arg_input_file
    File? arg_output_file
    Boolean? arg_directory_create
    Boolean? arg_number_threads
    Boolean? retain_read_order
    Boolean? no_quality
    Boolean? use_compression_arbitrarily
    Boolean? enable_compression_input
    Boolean? fast_a_input
  }
  command <<<
    spring \
      ~{if (_compress) then "-c" else ""} \
      ~{if (_decompress) then "-d" else ""} \
      ~{if defined(decompress_range) then ("--decompress-range " +  '"' + decompress_range + '"') else ""} \
      ~{if (arg_input_file) then "-i" else ""} \
      ~{if (arg_output_file) then "-o" else ""} \
      ~{if (arg_directory_create) then "-w" else ""} \
      ~{if (arg_number_threads) then "-t" else ""} \
      ~{if (retain_read_order) then "-r" else ""} \
      ~{if (no_quality) then "--no-quality" else ""} \
      ~{if (use_compression_arbitrarily) then "-l" else ""} \
      ~{if (enable_compression_input) then "-g" else ""} \
      ~{if (fast_a_input) then "--fasta-input" else ""}
  >>>
  parameter_meta {
    _compress: "[ --compress ]               compress"
    _decompress: "[ --decompress ]             decompress"
    decompress_range: "--decompress-range start end\\n(optional) decompress only reads (or read\\npairs for PE datasets) from start to end\\n(both inclusive) (1 <= start <= end <=\\nnum_reads (or num_read_pairs for PE)). If -r\\nwas specified during compression, the range\\nof reads does not correspond to the original\\norder of reads in the FASTQ file."
    arg_input_file: "[ --input-file ] arg         input file name (two files for paired end)"
    arg_output_file: "[ --output-file ] arg        output file name (for paired end\\ndecompression, if only one file is specified,\\ntwo output files will be created by suffixing\\n.1 and .2.)"
    arg_directory_create: "[ --working-dir ] arg (=.)   directory to create temporary files (default\\ncurrent directory)"
    arg_number_threads: "[ --num-threads ] arg (=8)   number of threads (default 8)"
    retain_read_order: "[ --allow-read-reordering ]  do not retain read order during compression\\n(paired reads still remain paired)"
    no_quality: "do not retain quality values during"
    use_compression_arbitrarily: "[ --long ]                   Use for compression of arbitrarily long read\\nlengths. Can also provide better compression\\nfor reads with significant number of indels.\\n-r disabled in this mode. For Illumina short\\nreads, compression is better without -l flag."
    enable_compression_input: "[ --gzipped-fastq ]          enable if compression input is gzipped fastq\\nor to output gzipped fastq during\\ndecompression"
    fast_a_input: "enable if compression input is fasta file\\n(i.e., no qualities)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_file = "${in_arg_output_file}"
  }
}