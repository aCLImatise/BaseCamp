version 1.0

task ChunkifypyRemap {
  input {
    String? alphabet
    File? input_strand_list
    Int? jobs
    Int? km_er_len
    Int? limit
    Boolean? no_overwrite
    Float? blanks
    Int? chunk_len
    String? normalisation
    Int? min_length
    Boolean? no_use_scaled
    Int? trim
    String? section
    File? compile
    Float? min_prob
    File? output_strand_list
    Float? prior
    Float? slip
    String? segmentation
    String input_folder
    String output_hdf_file
    String model
    String references
  }
  command <<<
    chunkify_py remap \
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
      ~{if defined(blanks) then ("--blanks " +  '"' + blanks + '"') else ""} \
      ~{if defined(chunk_len) then ("--chunk_len " +  '"' + chunk_len + '"') else ""} \
      ~{if defined(normalisation) then ("--normalisation " +  '"' + normalisation + '"') else ""} \
      ~{if defined(min_length) then ("--min_length " +  '"' + min_length + '"') else ""} \
      ~{if (no_use_scaled) then "--no-use_scaled" else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""} \
      ~{if defined(section) then ("--section " +  '"' + section + '"') else ""} \
      ~{if defined(compile) then ("--compile " +  '"' + compile + '"') else ""} \
      ~{if defined(min_prob) then ("--min_prob " +  '"' + min_prob + '"') else ""} \
      ~{if defined(output_strand_list) then ("--output_strand_list " +  '"' + output_strand_list + '"') else ""} \
      ~{if defined(prior) then ("--prior " +  '"' + prior + '"') else ""} \
      ~{if defined(slip) then ("--slip " +  '"' + slip + '"') else ""} \
      ~{if defined(segmentation) then ("--segmentation " +  '"' + segmentation + '"') else ""}
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
    blanks: "Maximum proportion of blanks in labels (default: 0.7)"
    chunk_len: "Length of each read chunk (default: 500)"
    normalisation: "Whether to perform studentisation and with what scope\\n(default: per-read)"
    min_length: "Minimum events in acceptable read (default: 1200)"
    no_use_scaled: "Train from scaled event statistics (Default: --no-\\nuse_scaled) (default: False)"
    trim: "end  Number of events to trim off start and end (default:\\n(50, 10))"
    section: "Section to call (default: template)"
    compile: "File output compiled model (default: None)"
    min_prob: "Minimum allowed probabiility for basecalls (default:\\n1e-05)"
    output_strand_list: "Strand summary output file (default:\\nstrand_output_list.txt)"
    prior: "end     Mean of start and end positions (default: (25.0,\\n25.0))"
    slip: "Slip penalty (default: 5.0)"
    segmentation: "Location of segmentation information (default:\\nSegmentation)\\n"
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