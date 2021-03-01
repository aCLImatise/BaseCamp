class: CommandLineTool
id: gsutil_perfdiag.cwl
inputs:
- id: in_sets_number_objects
  doc: "Sets the number of objects to use when downloading and uploading\nfiles during\
    \ tests. Defaults to 5."
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_sets_number_running
  doc: "Sets the number of processes to use while running throughput\nexperiments.\
    \ The default value is 1."
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_sets_number_use
  doc: "Sets the number of threads per process to use while running\nthroughput experiments.\
    \ Each process will receive an equal number\nof threads. The default value is\
    \ 1.\nNote: All specified threads and processes will be created, but may\nnot\
    \ by saturated with work if too few objects (specified with -n)\nand too few components\
    \ (specified with -y) are specified."
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_sets_type_used
  doc: "Sets the type of parallelism to be used (only applicable when\nthreads or\
    \ processes are specified and threads * processes > 1).\nThe default is to use\
    \ fan. Must be one of the following:\nfan\nUse one thread per object. This is\
    \ akin to using gsutil -m cp,\nwith sliced object download / parallel composite\
    \ upload\ndisabled.\nslice\nUse Y (specified with -y) threads for each object,\
    \ transferring\none object at a time. This is akin to using parallel object\n\
    download / parallel composite upload, without -m. Sliced\nuploads not supported\
    \ for s3.\nboth\nUse Y (specified with -y) threads for each object, transferring\n\
    multiple objects at a time. This is akin to simultaneously\nusing sliced object\
    \ download / parallel composite upload and\ngsutil -m cp. Sliced uploads not supported\
    \ for s3."
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_sets_number_divide
  doc: "Sets the number of slices to divide each file/object into while\ntransferring\
    \ data. Only applicable with the slice (or both)\nparallelism type. The default\
    \ is 4 slices."
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_sets_size_n
  doc: "Sets the size (in bytes) for each of the N (set with -n) objects\nused in\
    \ the read and write throughput tests. The default is 1 MiB.\nThis can also be\
    \ specified using byte suffixes such as 500K or 1M.\nNote: these values are interpreted\
    \ as multiples of 1024 (K=1024,\nM=1024*1024, etc.)\nNote: If rthru_file or wthru_file\
    \ are performed, N (set with -n)\ntimes as much disk space as specified will be\
    \ required for the\noperation."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_sets_directory_store
  doc: "Sets the directory to store temporary local files in. If not\nspecified, a\
    \ default temporary directory will be used."
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_sets_list_perform
  doc: "Sets the list of diagnostic tests to perform. The default is to\nrun the lat,\
    \ rthru, and wthru diagnostic tests. Must be a\ncomma-separated list containing\
    \ one or more of the following:\nlat\nFor N (set with -n) objects, write the object,\
    \ retrieve its\nmetadata, read the object, and finally delete the object.\nRecord\
    \ the latency of each operation.\nlist\nWrite N (set with -n) objects to the bucket,\
    \ record how long\nit takes for the eventually consistent listing call to return\n\
    the N objects in its result, delete the N objects, then record\nhow long it takes\
    \ listing to stop returning the N objects.\nrthru\nRuns N (set with -n) read operations,\
    \ with at most C\n(set with -c) reads outstanding at any given time.\nrthru_file\n\
    The same as rthru, but simultaneously writes data to the disk,\nto gauge the performance\
    \ impact of the local disk on downloads.\nwthru\nRuns N (set with -n) write operations,\
    \ with at most C\n(set with -c) writes outstanding at any given time.\nwthru_file\n\
    The same as wthru, but simultaneously reads data from the disk,\nto gauge the\
    \ performance impact of the local disk on uploads."
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_adds_metadata_m
  doc: "Adds metadata to the result JSON file. Multiple -m values can be\nspecified.\
    \ Example:\ngsutil perfdiag -m \"key1:val1\" -m \"key2:val2\" gs://bucketname\n\
    Each metadata key will be added to the top-level \"metadata\"\ndictionary in the\
    \ output JSON file."
  type: File?
  inputBinding:
    prefix: -m
- id: in_writes_results_file
  doc: "Writes the results of the diagnostic to an output file. The output\nis a JSON\
    \ file containing system information and performance\ndiagnostic results. The\
    \ file can be read and reported later using\nthe -i option."
  type: File?
  inputBinding:
    prefix: -o
- id: in_reads_json_file
  doc: "Reads the JSON output file created using the -o command and prints\na formatted\
    \ description of the results."
  type: File?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_adds_metadata_m
  doc: "Adds metadata to the result JSON file. Multiple -m values can be\nspecified.\
    \ Example:\ngsutil perfdiag -m \"key1:val1\" -m \"key2:val2\" gs://bucketname\n\
    Each metadata key will be added to the top-level \"metadata\"\ndictionary in the\
    \ output JSON file."
  type: File?
  outputBinding:
    glob: $(inputs.in_adds_metadata_m)
- id: out_writes_results_file
  doc: "Writes the results of the diagnostic to an output file. The output\nis a JSON\
    \ file containing system information and performance\ndiagnostic results. The\
    \ file can be read and reported later using\nthe -i option."
  type: File?
  outputBinding:
    glob: $(inputs.in_writes_results_file)
- id: out_reads_json_file
  doc: "Reads the JSON output file created using the -o command and prints\na formatted\
    \ description of the results."
  type: File?
  outputBinding:
    glob: $(inputs.in_reads_json_file)
hints: []
cwlVersion: v1.1
baseCommand:
- gsutil
- perfdiag
