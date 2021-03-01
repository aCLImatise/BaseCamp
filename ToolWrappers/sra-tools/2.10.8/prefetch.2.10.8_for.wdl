version 1.0

task Prefetch2108For {
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
    Int? log_level
    File? option_file
    File file_dot
  }
  command <<<
    prefetch_2_10_8 for \
      ~{file_dot} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(min_size) then ("--min-size " +  '"' + min_size + '"') else ""} \
      ~{if defined(max_size) then ("--max-size " +  '"' + max_size + '"') else ""} \
      ~{if defined(force) then ("--force " +  '"' + force + '"') else ""} \
      ~{if (progress) then "--progress" else ""} \
      ~{if defined(resume) then ("--resume " +  '"' + resume + '"') else ""} \
      ~{if defined(verify) then ("--verify " +  '"' + verify + '"') else ""} \
      ~{if (check_all) then "--check-all" else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(perm) then ("--perm " +  '"' + perm + '"') else ""} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{if defined(cart) then ("--cart " +  '"' + cart + '"') else ""} \
      ~{if (disable_multithreading) then "--disable-multithreading" else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    type: "Specify file type to download. Default: sra"
    min_size: "Minimum file size to download in KB\\n(inclusive)."
    max_size: "Maximum file size to download in KB\\n(exclusive). Default: 20G"
    force: "Force object download - one of: no, yes,\\nall, ALL. no [default]: skip download if\\nthe object if found and complete; yes:\\ndownload it even if it is found and is\\ncomplete; all: ignore lock files (stale\\nlocks or it is being downloaded by\\nanother process - use at your own\\nrisk!); ALL: ignore lock files, restart\\ndownload from beginning"
    progress: "Show progress"
    resume: "Resume partial downloads - one of: no, yes\\n[default]"
    verify: "Verify after download - one of: no, yes\\n[default]"
    check_all: "Double-check all refseqs"
    output_file: "Write file to <file> when downloading\\nsingle file"
    output_directory: "Save files to <directory>/"
    ngc: "<path> to ngc file"
    perm: "<path> to permission file"
    location: "location in cloud"
    cart: "<path> to cart file"
    disable_multithreading: "disable multithreading"
    log_level: "Logging level as number or enum string.\\nOne of\\n(fatal|sys|int|err|warn|info|debug) or\\n(0-6) Current/default is warn"
    option_file: "Read more options and parameters from the"
    file_dot: "-h|--help                        print this message"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    Directory out_output_directory = "${in_output_directory}"
  }
}