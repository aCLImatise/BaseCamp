version 1.0

task Prefetchorig {
  input {
    File? type
    String? transport
    String? location
    Int? min_size
    Int? max_size
    String? force
    String? resume
    String? verify
    Boolean? progress
    Int? heartbeat
    Boolean? eliminate_quals
    Boolean? check_all
    Int? order
    String? rows
    File? perm
    File? ngc
    File? cart
    File? ascp_path
    String? ascp_options
    Directory? output_directory
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String line_dot
    String quit_dot
    File file_dot
  }
  command <<<
    prefetch_orig \
      ~{line_dot} \
      ~{quit_dot} \
      ~{file_dot} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(transport) then ("--transport " +  '"' + transport + '"') else ""} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{if defined(min_size) then ("--min-size " +  '"' + min_size + '"') else ""} \
      ~{if defined(max_size) then ("--max-size " +  '"' + max_size + '"') else ""} \
      ~{if defined(force) then ("--force " +  '"' + force + '"') else ""} \
      ~{if defined(resume) then ("--resume " +  '"' + resume + '"') else ""} \
      ~{if defined(verify) then ("--verify " +  '"' + verify + '"') else ""} \
      ~{if (progress) then "--progress" else ""} \
      ~{if defined(heartbeat) then ("--heartbeat " +  '"' + heartbeat + '"') else ""} \
      ~{if (eliminate_quals) then "--eliminate-quals" else ""} \
      ~{if (check_all) then "--check-all" else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if defined(rows) then ("--rows " +  '"' + rows + '"') else ""} \
      ~{if defined(perm) then ("--perm " +  '"' + perm + '"') else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(cart) then ("--cart " +  '"' + cart + '"') else ""} \
      ~{if defined(ascp_path) then ("--ascp-path " +  '"' + ascp_path + '"') else ""} \
      ~{if defined(ascp_options) then ("--ascp-options " +  '"' + ascp_options + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0"
  }
  parameter_meta {
    type: "Specify file type to download. Default: sra"
    transport: "Transport: one of: fasp; http; both\\n[default]. (fasp only; http only; first try\\nfasp (ascp), use http if cannot download\\nusing fasp)."
    location: "Location of data."
    min_size: "Minimum file size to download in KB\\n(inclusive)."
    max_size: "Maximum file size to download in KB\\n(exclusive). Default: 20G"
    force: "Force object download: one of: no, yes,\\nall, ALL. no [default]: skip download if the\\nobject if found and complete; yes: download\\nit even if it is found and is complete; all:\\nignore lock files (stale locks or it is\\nbeing downloaded by another process use\\nat your own risk!); ALL: ignore lock files,\\nrestart download from beginning."
    resume: "Resume partial downloads: one of: no, yes\\n[default]."
    verify: "Verify after download one of: no, yes\\n[default]."
    progress: "Show progress."
    heartbeat: "Time period in minutes to display download\\nprogress. (0: no progress), default: 1"
    eliminate_quals: "Don't download QUALITY column."
    check_all: "Double-check all refseqs."
    order: "Kart prefetch order when downloading\\nkart: one of: kart, size. (in kart order, by\\nfile size: smallest first), default: size."
    rows: "Kart rows to download (default all). Row\\nlist should be ordered."
    perm: "PATH to jwt cart file."
    ngc: "PATH to ngc file."
    cart: "To read kart file."
    ascp_path: "Path to ascp program and\\nprivate key file (asperaweb_id_dsa.putty)"
    ascp_options: "Arbitrary options to pass to ascp command"
    output_directory: "Save files to DIRECTORY/"
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    line_dot: "-o|--output-file <FILE>          Write file to FILE when downloading "
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "prefetch-orig : 2.10.9"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}