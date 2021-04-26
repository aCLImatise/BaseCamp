version 1.0

task BasenjiHdf5Genespy {
  input {
    File? chromosome_lengths_file
    Int? sequence_length
    Float? center_proportion_required
    Int? number_parallel_processes
    File? store_target_values
    Boolean? w_five
    String files
  }
  command <<<
    basenji_hdf5_genes_py \
      ~{files} \
      ~{if defined(chromosome_lengths_file) then ("-g " +  '"' + chromosome_lengths_file + '"') else ""} \
      ~{if defined(sequence_length) then ("-l " +  '"' + sequence_length + '"') else ""} \
      ~{if defined(center_proportion_required) then ("-c " +  '"' + center_proportion_required + '"') else ""} \
      ~{if defined(number_parallel_processes) then ("-p " +  '"' + number_parallel_processes + '"') else ""} \
      ~{if defined(store_target_values) then ("-t " +  '"' + store_target_values + '"') else ""} \
      ~{if (w_five) then "--w5" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0"
  }
  parameter_meta {
    chromosome_lengths_file: "Chromosome lengths file [Default: none]"
    sequence_length: "Sequence length [Default: 1024]"
    center_proportion_required: "Center proportion in which TSSs are required to be\\n[Default: 0.333]"
    number_parallel_processes: "Number parallel processes to load data [Default: 1]"
    store_target_values: "Store target values, extracted from this list of WIG"
    w_five: "Coverage files are w5 rather than BigWig [Default:\\nFalse]\\n"
    files: "-w POOL_WIDTH        Average pooling width [Default: 1]"
  }
  output {
    File out_stdout = stdout()
  }
}