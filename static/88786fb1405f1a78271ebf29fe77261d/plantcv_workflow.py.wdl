version 1.0

task Plantcvworkflowpy {
  input {
    Directory? dir
    File? adaptor
    File? workflow_script_file
    File? json
    File? image_filename_metadata
    Directory? outdir
    Int? cpu
    Boolean? create
    String? dates
    String? type
    File? delimiter
    Int? match
    String? co_process
    String? timestamp_format
    Boolean? write_img
    String? other_args
  }
  command <<<
    plantcv_workflow_py \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(adaptor) then ("--adaptor " +  '"' + adaptor + '"') else ""} \
      ~{if defined(workflow_script_file) then ("--workflow " +  '"' + workflow_script_file + '"') else ""} \
      ~{if defined(json) then ("--json " +  '"' + json + '"') else ""} \
      ~{if defined(image_filename_metadata) then ("--meta " +  '"' + image_filename_metadata + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if (create) then "--create" else ""} \
      ~{if defined(dates) then ("--dates " +  '"' + dates + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(match) then ("--match " +  '"' + match + '"') else ""} \
      ~{if defined(co_process) then ("--coprocess " +  '"' + co_process + '"') else ""} \
      ~{if defined(timestamp_format) then ("--timestampformat " +  '"' + timestamp_format + '"') else ""} \
      ~{if (write_img) then "--writeimg" else ""} \
      ~{if defined(other_args) then ("--other_args " +  '"' + other_args + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dir: "Input directory containing images or snapshots.\\n(default: None)"
    adaptor: "Image metadata reader adaptor. PhenoFront metadata is\\nstored in a CSV file and the image file name. For the\\nfilename option, all metadata is stored in the image\\nfile name. Current adaptors: phenofront, filename\\n(default: phenofront)"
    workflow_script_file: "Workflow script file. (default: None)"
    json: "Output database file name. (default: None)"
    image_filename_metadata: "Image filename metadata structure. Comma-separated\\nlist of valid metadata terms. Valid metadata fields\\nare: camera, imgtype, zoom, exposure, gain, frame,\\nlifter, timestamp, id, plantbarcode, treatment,\\ncartag, measurementlabel, other (default: None)"
    outdir: "Output directory for images. Not required by all\\nworkflows. (default: .)"
    cpu: "Number of CPU processes to use. (default: 1)"
    create: "will overwrite an existing databaseWarning: activating\\nthis option will delete an existing database!\\n(default: False)"
    dates: "Date range. Format: YYYY-MM-DD-hh-mm-ss_YYYY-MM-DD-hh-\\nmm-ss. If the second date is excluded then the current\\ndate is assumed. (default: None)"
    type: "Image format type (extension). (default: png)"
    delimiter: "Image file name metadata delimiter\\ncharacter.Alternatively, a regular expression for\\nparsing filename metadata. (default: _)"
    match: "Restrict analysis to images with metadata matching\\ninput criteria. Input a metadata:value comma-separated\\nlist. This is an exact match search. E.g.\\nimgtype:VIS,camera:SV,zoom:z500 (default: None)"
    co_process: "Coprocess the specified imgtype with the imgtype\\nspecified in --match (e.g. coprocess NIR images with\\nVIS). (default: None)"
    timestamp_format: "a date format code compatible with strptime C library,\\ne.g. \\\"%Y-%m-%d %H_%M_%S\\\", except \\\"%\\\" symbols must be\\nescaped on Windows with \\\"%\\\" e.g. \\\"%%Y-%%m-%%d\\n%%H_%%M_%%S\\\"default format code is \\\"%Y-%m-%d\\n%H:%M:%S.%f\\\" (default: %Y-%m-%d %H:%M:%S.%f)"
    write_img: "Include analysis images in output. (default: False)"
    other_args: "Other arguments to pass to the workflow script.\\n(default: None)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_json = "${in_json}"
    Directory out_outdir = "${in_outdir}"
  }
}