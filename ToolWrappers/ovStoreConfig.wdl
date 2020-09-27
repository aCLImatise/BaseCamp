version 1.0

task OvStoreConfig {
  input {
    File? path_seqstore_assembly
    File? list_ovb_files
    Float? use_gigabytes_memory
    File? create
    String? describe
    Boolean? num_buckets
    Boolean? num_slices
    Boolean? sort_memory
    String? list_inputs
    String ov_overlap
    String ov_overlap_sort_size
    String sc_child_max
    String sc_open_max
  }
  command <<<
    ovStoreConfig \
      ~{ov_overlap} \
      ~{ov_overlap_sort_size} \
      ~{sc_child_max} \
      ~{sc_open_max} \
      ~{if defined(path_seqstore_assembly) then ("-S " +  '"' + path_seqstore_assembly + '"') else ""} \
      ~{if defined(list_ovb_files) then ("-L " +  '"' + list_ovb_files + '"') else ""} \
      ~{if defined(use_gigabytes_memory) then ("-M " +  '"' + use_gigabytes_memory + '"') else ""} \
      ~{if defined(create) then ("-create " +  '"' + create + '"') else ""} \
      ~{if defined(describe) then ("-describe " +  '"' + describe + '"') else ""} \
      ~{if (num_buckets) then "-numbuckets" else ""} \
      ~{if (num_slices) then "-numslices" else ""} \
      ~{if (sort_memory) then "-sortmemory" else ""} \
      ~{if defined(list_inputs) then ("-listinputs " +  '"' + list_inputs + '"') else ""}
  >>>
  parameter_meta {
    path_seqstore_assembly: "path to seqStore for this assembly"
    list_ovb_files: "a list of ovb files in 'fileList'"
    use_gigabytes_memory: "use up to 'g' gigabytes memory for sorting overlaps\\ndefault 4; g-0.25 gb is available for sorting overlaps"
    create: "write overlap store configuration to file 'config'"
    describe: "write a readable description of the config in 'config' to the screen"
    num_buckets: "write the number of buckets to the screen"
    num_slices: "write the number of slices to the screen"
    sort_memory: "write the memory needed (in GB) for a sort job to the screen"
    list_inputs: "write a list of the input ovb files needed for bucketizer job 'n'  -listslices n         write a list of the input slice files needed for sorter job 'n'"
    ov_overlap: "2 words of 64 bits each."
    ov_overlap_sort_size: "192 bits"
    sc_child_max: "-1 processes"
    sc_open_max: "1048576 files"
  }
  output {
    File out_stdout = stdout()
  }
}