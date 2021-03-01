version 1.0

task ChunkifypyRawIdentity {
  input {
    String? alphabet
    File? input_strand_list
    Int? jobs
    Int? km_er_len
    Int? limit
    Boolean? no_overwrite
    Int? blanks_percentile
    Int? chunk_len
    String? normalisation
    Int? trim
    Int? min_length
    Int? down_sample_factor
    Boolean? no_interpolation
    String input_folder
    String output_hdf_file
  }
  command <<<
    chunkify_py raw_identity \
      ~{input_folder} \
      ~{output_hdf_file} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{if defined(input_strand_list) then ("--input_strand_list " +  '"' + input_strand_list + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(km_er_len) then ("--kmer_len " +  '"' + km_er_len + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if (no_overwrite) then "--no-overwrite" else ""} \
      ~{if defined(blanks_percentile) then ("--blanks_percentile " +  '"' + blanks_percentile + '"') else ""} \
      ~{if defined(chunk_len) then ("--chunk_len " +  '"' + chunk_len + '"') else ""} \
      ~{if defined(normalisation) then ("--normalisation " +  '"' + normalisation + '"') else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if defined(down_sample_factor) then ("--downsample_factor " +  '"' + down_sample_factor + '"') else ""} \
      ~{if (no_interpolation) then "--no-interpolation" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alphabet: "Alphabet of the sequences (default: b'ACGT')"
    input_strand_list: "Strand summary file containing subset (default: None)"
    jobs: "Number of threads to use when processing data\\n(default: 1)"
    km_er_len: "Length of kmer to estimate (default: 5)"
    limit: "Limit number of reads to process (default: None)"
    no_overwrite: "Whether to overwrite any output files (Default: --no-\\noverwrite) (default: False)"
    blanks_percentile: "Percentile above which to filter out chunks with too\\nmany blanks (default: 95)"
    chunk_len: "Length of each read chunk (default: 2000)"
    normalisation: "Whether to perform median-mad normalisation and with\\nwhat scope (default: per-read)"
    trim: "end  Number of samples to trim off start and end (default:\\n(200, 50))"
    min_length: "Minimum samples in acceptable read (default: 2500)"
    down_sample_factor: "Rate of label downsampling (default: 1)"
    no_interpolation: "Interpolate reference sequence positions between\\nmapped samples (Default: --no-interpolation) (default:\\nFalse)\\n"
    input_folder: "Directory containing single-read fast5 files"
    output_hdf_file: "Output HDF5 file"
  }
  output {
    File out_stdout = stdout()
  }
}