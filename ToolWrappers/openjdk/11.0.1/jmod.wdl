version 1.0

task Jmod {
  input {
    File? class_path
    File? config
    File? dir
    Boolean? dry_run
    String? exclude
    File? hash_modules
    File? header_files
    Boolean? help_extra
    File? legal_notices
    File? libs
    Boolean? main_class
    File? man_pages
    String? module_version
    File? module_path
    Boolean? target_platform
    String create
    String extract
    String list
    String describe
    String hash
    String option
    String classes
  }
  command <<<
    jmod \
      ~{create} \
      ~{extract} \
      ~{list} \
      ~{describe} \
      ~{hash} \
      ~{option} \
      ~{classes} \
      ~{if defined(class_path) then ("--class-path " +  '"' + class_path + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if defined(hash_modules) then ("--hash-modules " +  '"' + hash_modules + '"') else ""} \
      ~{if defined(header_files) then ("--header-files " +  '"' + header_files + '"') else ""} \
      ~{if (help_extra) then "--help-extra" else ""} \
      ~{if defined(legal_notices) then ("--legal-notices " +  '"' + legal_notices + '"') else ""} \
      ~{if defined(libs) then ("--libs " +  '"' + libs + '"') else ""} \
      ~{if (main_class) then "--main-class" else ""} \
      ~{if defined(man_pages) then ("--man-pages " +  '"' + man_pages + '"') else ""} \
      ~{if defined(module_version) then ("--module-version " +  '"' + module_version + '"') else ""} \
      ~{if defined(module_path) then ("--module-path " +  '"' + module_path + '"') else ""} \
      ~{if (target_platform) then "--target-platform" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    class_path: "Application jar files|dir containing"
    config: "Location of user-editable config files"
    dir: "Target directory for extract"
    dry_run: "Dry run of hash mode"
    exclude: "Exclude files matching the supplied\\ncomma separated pattern list, each\\nelement using one the following\\nforms: <glob-pattern>, glob:<glob-\\npattern> or regex:<regex-pattern>"
    hash_modules: "Compute and record hashes to tie a\\npackaged module with modules\\nmatching the given <regex-pattern>\\nand depending upon it directly or\\nindirectly. The hashes are recorded\\nin the JMOD file being created, or a\\nJMOD file or modular JAR on the\\nmodule path specified the jmod hash\\ncommand."
    header_files: "Location of header files"
    help_extra: "Print help on extra options"
    legal_notices: "Location of legal notices"
    libs: "Location of native libraries"
    main_class: "<String: class-name>   Main class"
    man_pages: "Location of man pages"
    module_version: "Module version"
    module_path: "Module path"
    target_platform: "<String: target-  Target platform\\nplatform>"
    create: "- Creates a new jmod archive"
    extract: "- Extracts all the files from the archive"
    list: "- Prints the names of all the entries"
    describe: "- Prints the module details"
    hash: "- Records hashes of tied modules."
    option: "Description                           "
    classes: "--cmds <path>                       Location of native commands           "
  }
  output {
    File out_stdout = stdout()
  }
}