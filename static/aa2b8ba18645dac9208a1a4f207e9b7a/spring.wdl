version 1.0

task Spring {
  input {
    Boolean? _compress
    Boolean? _decompress
    String? decompress_range
    Boolean? arg_input_file
    Boolean? arg_output_file
    Boolean? arg_directory_create
    Boolean? arg_number_threads
    Boolean? retain_read_order
    Boolean? no_quality
    Boolean? no_ids
    Boolean? arg_quality_mode
    Boolean? use_compression_arbitrarily
    Boolean? enable_compression_input_gzipped
    Boolean? fast_a_input
  }
  command <<<
    spring \
      ~{true="-c" false="" _compress} \
      ~{true="-d" false="" _decompress} \
      ~{if defined(decompress_range) then ("--decompress-range " +  '"' + decompress_range + '"') else ""} \
      ~{true="-i" false="" arg_input_file} \
      ~{true="-o" false="" arg_output_file} \
      ~{true="-w" false="" arg_directory_create} \
      ~{true="-t" false="" arg_number_threads} \
      ~{true="-r" false="" retain_read_order} \
      ~{true="--no-quality" false="" no_quality} \
      ~{true="--no-ids" false="" no_ids} \
      ~{true="-q" false="" arg_quality_mode} \
      ~{true="-l" false="" use_compression_arbitrarily} \
      ~{true="-g" false="" enable_compression_input_gzipped} \
      ~{true="--fasta-input" false="" fast_a_input}
  >>>
  parameter_meta {
    _compress: "[ --compress ]               compress"
    _decompress: "[ --decompress ]             decompress"
    decompress_range: "--decompress-range start end (optional) decompress only reads (or read  pairs for PE datasets) from start to end  (both inclusive) (1 <= start <= end <=  num_reads (or num_read_pairs for PE)). If -r  was specified during compression, the range  of reads does not correspond to the original  order of reads in the FASTQ file."
    arg_input_file: "[ --input-file ] arg         input file name (two files for paired end)"
    arg_output_file: "[ --output-file ] arg        output file name (for paired end  decompression, if only one file is specified, two output files will be created by suffixing .1 and .2.)"
    arg_directory_create: "[ --working-dir ] arg (=.)   directory to create temporary files (default  current directory)"
    arg_number_threads: "[ --num-threads ] arg (=8)   number of threads (default 8)"
    retain_read_order: "[ --allow-read-reordering ]  do not retain read order during compression  (paired reads still remain paired)"
    no_quality: "do not retain quality values during  compression"
    no_ids: "do not retain read identifiers during  compression"
    arg_quality_mode: "[ --quality-opts ] arg       quality mode: possible modes are 1. -q lossless (default) 2. -q qvz qv_ratio (QVZ lossy compression,  parameter qv_ratio roughly corresponds to  bits used per quality value) 3. -q ill_bin (Illumina 8-level binning) 4. -q binary thr high low (binary (2-level)  thresholding, quality binned to high if >=  thr and to low if < thr)"
    use_compression_arbitrarily: "[ --long ]                   Use for compression of arbitrarily long read  lengths. Can also provide better compression  for reads with significant number of indels.  -r disabled in this mode. For Illumina short  reads, compression is better without -l flag."
    enable_compression_input_gzipped: "[ --gzipped-fastq ]          enable if compression input is gzipped fastq  or to output gzipped fastq during  decompression"
    fast_a_input: "enable if compression input is fasta file  (i.e., no qualities)"
  }
}