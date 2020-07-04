version 1.0

task GsutilPerfdiag {
  input {
    Boolean? sets_number_use_downloading
    Boolean? sets_number_processes_use_running_throughput_experiments
    Boolean? sets_number_use_running_throughput_experiments_receive
    Boolean? sets_type_used
    Boolean? sets_number_divide
    Boolean? sets_size_write
    Boolean? sets_directory_store
    Boolean? sets_list_perform
    Boolean? adds_metadata_file
    Boolean? writes_results_diagnostic
    Boolean? reads_json_file
  }
  command <<<
    gsutil perfdiag \
      ~{true="-n" false="" sets_number_use_downloading} \
      ~{true="-c" false="" sets_number_processes_use_running_throughput_experiments} \
      ~{true="-k" false="" sets_number_use_running_throughput_experiments_receive} \
      ~{true="-p" false="" sets_type_used} \
      ~{true="-y" false="" sets_number_divide} \
      ~{true="-s" false="" sets_size_write} \
      ~{true="-d" false="" sets_directory_store} \
      ~{true="-t" false="" sets_list_perform} \
      ~{true="-m" false="" adds_metadata_file} \
      ~{true="-o" false="" writes_results_diagnostic} \
      ~{true="-i" false="" reads_json_file}
  >>>
  parameter_meta {
    sets_number_use_downloading: "Sets the number of objects to use when downloading and uploading files during tests. Defaults to 5."
    sets_number_processes_use_running_throughput_experiments: "Sets the number of processes to use while running throughput experiments. The default value is 1."
    sets_number_use_running_throughput_experiments_receive: "Sets the number of threads per process to use while running throughput experiments. Each process will receive an equal number of threads. The default value is 1. Note: All specified threads and processes will be created, but may not by saturated with work if too few objects (specified with -n) and too few components (specified with -y) are specified."
    sets_type_used: "Sets the type of parallelism to be used (only applicable when threads or processes are specified and threads * processes > 1). The default is to use fan. Must be one of the following: fan Use one thread per object. This is akin to using gsutil -m cp, with sliced object download / parallel composite upload disabled. slice Use Y (specified with -y) threads for each object, transferring one object at a time. This is akin to using parallel object download / parallel composite upload, without -m. Sliced uploads not supported for s3. both Use Y (specified with -y) threads for each object, transferring multiple objects at a time. This is akin to simultaneously using sliced object download / parallel composite upload and gsutil -m cp. Sliced uploads not supported for s3."
    sets_number_divide: "Sets the number of slices to divide each file/object into while transferring data. Only applicable with the slice (or both) parallelism type. The default is 4 slices."
    sets_size_write: "Sets the size (in bytes) for each of the N (set with -n) objects used in the read and write throughput tests. The default is 1 MiB. This can also be specified using byte suffixes such as 500K or 1M. Note: these values are interpreted as multiples of 1024 (K=1024, M=1024*1024, etc.) Note: If rthru_file or wthru_file are performed, N (set with -n) times as much disk space as specified will be required for the operation."
    sets_directory_store: "Sets the directory to store temporary local files in. If not specified, a default temporary directory will be used."
    sets_list_perform: "Sets the list of diagnostic tests to perform. The default is to run the lat, rthru, and wthru diagnostic tests. Must be a comma-separated list containing one or more of the following: lat For N (set with -n) objects, write the object, retrieve its metadata, read the object, and finally delete the object. Record the latency of each operation. list Write N (set with -n) objects to the bucket, record how long it takes for the eventually consistent listing call to return the N objects in its result, delete the N objects, then record how long it takes listing to stop returning the N objects. rthru Runs N (set with -n) read operations, with at most C (set with -c) reads outstanding at any given time. rthru_file The same as rthru, but simultaneously writes data to the disk, to gauge the performance impact of the local disk on downloads. wthru Runs N (set with -n) write operations, with at most C (set with -c) writes outstanding at any given time. wthru_file The same as wthru, but simultaneously reads data from the disk, to gauge the performance impact of the local disk on uploads."
    adds_metadata_file: "Adds metadata to the result JSON file. Multiple -m values can be specified. Example: gsutil perfdiag -m \"key1:val1\" -m \"key2:val2\" gs://bucketname Each metadata key will be added to the top-level \"metadata\" dictionary in the output JSON file."
    writes_results_diagnostic: "Writes the results of the diagnostic to an output file. The output is a JSON file containing system information and performance diagnostic results. The file can be read and reported later using the -i option."
    reads_json_file: "Reads the JSON output file created using the -o command and prints a formatted description of the results."
  }
}