version 1.0

task Jar {
  input {
    Boolean? create
    File? generate_index
    Boolean? update
    Boolean? extract
    Boolean? describe_module
    File? change_include_file
    File? archive_file_name
    Directory? release
    Boolean? verbose
    String? main_class
    File? manifest
    Boolean? no_manifest
    String? module_version
    String? hash_modules
    Boolean? module_path
    Boolean? no_compress
    Boolean? help_extra
    String archives
  }
  command <<<
    jar \
      ~{archives} \
      ~{if (create) then "--create" else ""} \
      ~{if defined(generate_index) then ("--generate-index " +  '"' + generate_index + '"') else ""} \
      ~{if (update) then "--update" else ""} \
      ~{if (extract) then "--extract" else ""} \
      ~{if (describe_module) then "--describe-module" else ""} \
      ~{if defined(change_include_file) then ("-C " +  '"' + change_include_file + '"') else ""} \
      ~{if defined(archive_file_name) then ("--file " +  '"' + archive_file_name + '"') else ""} \
      ~{if defined(release) then ("--release " +  '"' + release + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(main_class) then ("--main-class " +  '"' + main_class + '"') else ""} \
      ~{if defined(manifest) then ("--manifest " +  '"' + manifest + '"') else ""} \
      ~{if (no_manifest) then "--no-manifest" else ""} \
      ~{if defined(module_version) then ("--module-version " +  '"' + module_version + '"') else ""} \
      ~{if defined(hash_modules) then ("--hash-modules " +  '"' + hash_modules + '"') else ""} \
      ~{if (module_path) then "--module-path" else ""} \
      ~{if (no_compress) then "--no-compress" else ""} \
      ~{if (help_extra) then "--help-extra" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    create: "Create the archive"
    generate_index: "Generate index information for the specified jar"
    update: "Update an existing jar archive"
    extract: "Extract named (or all) files from the archive"
    describe_module: "Print the module descriptor, or automatic module name"
    change_include_file: "Change to the specified directory and include the\\nfollowing file"
    archive_file_name: "The archive file name. When omitted, either stdin or\\nstdout is used based on the operation"
    release: "Places all following files in a versioned directory\\nof the jar (i.e. META-INF/versions/VERSION/)"
    verbose: "Generate verbose output on standard output"
    main_class: "The application entry point for stand-alone\\napplications bundled into a modular, or executable,\\njar archive"
    manifest: "Include the manifest information from the given\\nmanifest file"
    no_manifest: "Do not create a manifest file for the entries"
    module_version: "The module version, when creating a modular\\njar, or updating a non-modular jar"
    hash_modules: "Compute and record the hashes of modules\\nmatched by the given pattern and that depend upon\\ndirectly or indirectly on a modular jar being\\ncreated or a non-modular jar being updated"
    module_path: "Location of module dependence for generating\\nthe hash"
    no_compress: "Store only; use no ZIP compression"
    help_extra: "Give help on extra options"
    archives: "-t, --list                 List the table of contents for the archive"
  }
  output {
    File out_stdout = stdout()
  }
}