version 1.0

task Interleavereadspy {
  input {
    Boolean? info
    File? no_reformat
    File? force
    Boolean? gzip
    Boolean? bzip
    String var_left
  }
  command <<<
    interleave_reads_py \
      ~{var_left} \
      ~{if (info) then "--info" else ""} \
      ~{if defined(no_reformat) then ("--no-reformat " +  '"' + no_reformat + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (bzip) then "--bzip" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    info: "print citation information"
    no_reformat: "Do not reformat read names or enforce consistency\\n(default: False)"
    force: "Overwrite output file if it exists (default: False)"
    gzip: "Compress output using gzip (default: False)"
    bzip: "Compress output using bzip2 (default: False)"
    var_left: "right"
  }
  output {
    File out_stdout = stdout()
    File out_force = "${in_force}"
  }
}