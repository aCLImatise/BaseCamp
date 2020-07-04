version 1.0

task Prefetch.2.10.7 {
  input {
    File? type
    Int? min_size
    Int? max_size
    String? force
    Boolean? progress
    String? resume
    String? verify
    Boolean? check_all
    File? output_file
    Directory? output_directory
    File? ngc
    File? perm
    String? location
    File? cart
    Boolean? disable_multithreading
    String? log_level
    File? option_file
  }
  command <<<
    prefetch.2.10.7 \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(min_size) then ("--min-size " +  '"' + min_size + '"') else ""} \
      ~{if defined(max_size) then ("--max-size " +  '"' + max_size + '"') else ""} \
      ~{if defined(force) then ("--force " +  '"' + force + '"') else ""} \
      ~{true="--progress" false="" progress} \
      ~{if defined(resume) then ("--resume " +  '"' + resume + '"') else ""} \
      ~{if defined(verify) then ("--verify " +  '"' + verify + '"') else ""} \
      ~{true="--check-all" false="" check_all} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(perm) then ("--perm " +  '"' + perm + '"') else ""} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{if defined(cart) then ("--cart " +  '"' + cart + '"') else ""} \
      ~{true="--disable-multithreading" false="" disable_multithreading} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    type: "Specify file type to download. Default: sra"
    min_size: "Minimum file size to download in KB (inclusive)."
    max_size: "Maximum file size to download in KB (exclusive). Default: 20G"
    force: "Force object download - one of: no, yes, all, ALL. no [default]: skip download if the object if found and complete; yes: download it even if it is found and is complete; all: ignore lock files (stale locks or it is being downloaded by another process - use at your own risk!); ALL: ignore lock files, restart download from beginning"
    progress: "Show progress"
    resume: "Resume partial downloads - one of: no, yes [default]"
    verify: "Verify after download - one of: no, yes [default]"
    check_all: "Double-check all refseqs"
    output_file: "Write file to <file> when downloading single file"
    output_directory: "Save files to <directory>/"
    ngc: "<path> to ngc file"
    perm: "<path> to permission file"
    location: "location in cloud"
    cart: "<path> to cart file"
    disable_multithreading: "disable multithreading"
    log_level: "Logging level as number or enum string. One of (fatal|sys|int|err|warn|info|debug) or (0-6) Current/default is warn"
    option_file: "Read more options and parameters from the file."
  }
}