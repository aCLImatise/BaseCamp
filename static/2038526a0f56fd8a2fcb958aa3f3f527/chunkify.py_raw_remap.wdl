version 1.0

task ChunkifypyRawRemap {
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
    File? compile
    Float? min_prob
    File? output_strand_list
    Float? prior
    Float? slip
    Int? open_pore_fraction
    String input_folder
    String output_hdf_file
    String model
    String references
  }
  command <<<
    chunkify_py raw_remap \
      ~{input_folder} \
      ~{output_hdf_file} \
      ~{model} \
      ~{references} \
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
      ~{if (no_interpolation) then "--no-interpolation" else ""} \
      ~{if defined(compile) then ("--compile " +  '"' + compile + '"') else ""} \
      ~{if defined(min_prob) then ("--min_prob " +  '"' + min_prob + '"') else ""} \
      ~{if defined(output_strand_list) then ("--output_strand_list " +  '"' + output_strand_list + '"') else ""} \
      ~{if defined(prior) then ("--prior " +  '"' + prior + '"') else ""} \
      ~{if defined(slip) then ("--slip " +  '"' + slip + '"') else ""} \
      ~{if defined(open_pore_fraction) then ("--open_pore_fraction " +  '"' + open_pore_fraction + '"') else ""}
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
    no_interpolation: "Interpolate reference sequence positions between\\nmapped samples (Default: --no-interpolation) (default:\\nFalse)"
    compile: "File output compiled model (default: None)"
    min_prob: "Minimum allowed probabiility for basecalls (default:\\n1e-05)"
    output_strand_list: "Strand summary output file (default:\\nstrand_output_list.txt)"
    prior: "end     Mean of start and end positions (default: (25.0,\\n25.0))"
    slip: "Slip penalty (default: 5.0)"
    open_pore_fraction: "Max fraction of signal to trim due to open pore\\n(default: 0.0)\\n"
    input_folder: "Directory containing single-read fast5 files"
    output_hdf_file: "Output HDF5 file"
    model: "Pickled model file"
    references: "Reference sequences in fasta format"
  }
  output {
    File out_stdout = stdout()
    File out_compile = "${in_compile}"
    File out_output_strand_list = "${in_output_strand_list}"
  }
}