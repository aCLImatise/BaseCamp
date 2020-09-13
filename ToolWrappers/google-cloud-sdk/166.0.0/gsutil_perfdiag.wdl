version 1.0

task GsutilPerfdiag {
  input {
    Boolean? sets_number_downloading
    Boolean? sets_number_use_running
    Boolean? sets_number_use_receive
    Boolean? sets_type_used
    Boolean? sets_number_divide
    Boolean? sets_size_set
    Boolean? sets_directory_store
    Boolean? sets_list_perform
    File? adds_metadata_file
    File? writes_results_diagnostic
    File? reads_json_file
  }
  command <<<
    gsutil perfdiag \
      ~{if (sets_number_downloading) then "-n" else ""} \
      ~{if (sets_number_use_running) then "-c" else ""} \
      ~{if (sets_number_use_receive) then "-k" else ""} \
      ~{if (sets_type_used) then "-p" else ""} \
      ~{if (sets_number_divide) then "-y" else ""} \
      ~{if (sets_size_set) then "-s" else ""} \
      ~{if (sets_directory_store) then "-d" else ""} \
      ~{if (sets_list_perform) then "-t" else ""} \
      ~{if (adds_metadata_file) then "-m" else ""} \
      ~{if (writes_results_diagnostic) then "-o" else ""} \
      ~{if (reads_json_file) then "-i" else ""}
  >>>
  parameter_meta {
    sets_number_downloading: "Sets the number of objects to use when downloading and uploading\\nfiles during tests. Defaults to 5."
    sets_number_use_running: "Sets the number of processes to use while running throughput\\nexperiments. The default value is 1."
    sets_number_use_receive: "Sets the number of threads per process to use while running\\nthroughput experiments. Each process will receive an equal number\\nof threads. The default value is 1.\\nNote: All specified threads and processes will be created, but may\\nnot by saturated with work if too few objects (specified with -n)\\nand too few components (specified with -y) are specified."
    sets_type_used: "Sets the type of parallelism to be used (only applicable when\\nthreads or processes are specified and threads * processes > 1).\\nThe default is to use fan. Must be one of the following:\\nfan\\nUse one thread per object. This is akin to using gsutil -m cp,\\nwith sliced object download / parallel composite upload\\ndisabled.\\nslice\\nUse Y (specified with -y) threads for each object, transferring\\none object at a time. This is akin to using parallel object\\ndownload / parallel composite upload, without -m. Sliced\\nuploads not supported for s3.\\nboth\\nUse Y (specified with -y) threads for each object, transferring\\nmultiple objects at a time. This is akin to simultaneously\\nusing sliced object download / parallel composite upload and\\ngsutil -m cp. Sliced uploads not supported for s3."
    sets_number_divide: "Sets the number of slices to divide each file/object into while\\ntransferring data. Only applicable with the slice (or both)\\nparallelism type. The default is 4 slices."
    sets_size_set: "Sets the size (in bytes) for each of the N (set with -n) objects\\nused in the read and write throughput tests. The default is 1 MiB.\\nThis can also be specified using byte suffixes such as 500K or 1M.\\nNote: these values are interpreted as multiples of 1024 (K=1024,\\nM=1024*1024, etc.)\\nNote: If rthru_file or wthru_file are performed, N (set with -n)\\ntimes as much disk space as specified will be required for the\\noperation."
    sets_directory_store: "Sets the directory to store temporary local files in. If not\\nspecified, a default temporary directory will be used."
    sets_list_perform: "Sets the list of diagnostic tests to perform. The default is to\\nrun the lat, rthru, and wthru diagnostic tests. Must be a\\ncomma-separated list containing one or more of the following:\\nlat\\nFor N (set with -n) objects, write the object, retrieve its\\nmetadata, read the object, and finally delete the object.\\nRecord the latency of each operation.\\nlist\\nWrite N (set with -n) objects to the bucket, record how long\\nit takes for the eventually consistent listing call to return\\nthe N objects in its result, delete the N objects, then record\\nhow long it takes listing to stop returning the N objects.\\nrthru\\nRuns N (set with -n) read operations, with at most C\\n(set with -c) reads outstanding at any given time.\\nrthru_file\\nThe same as rthru, but simultaneously writes data to the disk,\\nto gauge the performance impact of the local disk on downloads.\\nwthru\\nRuns N (set with -n) write operations, with at most C\\n(set with -c) writes outstanding at any given time.\\nwthru_file\\nThe same as wthru, but simultaneously reads data from the disk,\\nto gauge the performance impact of the local disk on uploads."
    adds_metadata_file: "Adds metadata to the result JSON file. Multiple -m values can be\\nspecified. Example:\\ngsutil perfdiag -m \\\"key1:val1\\\" -m \\\"key2:val2\\\" gs://bucketname\\nEach metadata key will be added to the top-level \\\"metadata\\\"\\ndictionary in the output JSON file."
    writes_results_diagnostic: "Writes the results of the diagnostic to an output file. The output\\nis a JSON file containing system information and performance\\ndiagnostic results. The file can be read and reported later using\\nthe -i option."
    reads_json_file: "Reads the JSON output file created using the -o command and prints\\na formatted description of the results."
  }
  output {
    File out_stdout = stdout()
    File out_adds_metadata_file = "${in_adds_metadata_file}"
    File out_writes_results_diagnostic = "${in_writes_results_diagnostic}"
    File out_reads_json_file = "${in_reads_json_file}"
  }
}