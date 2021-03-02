version 1.0

task CnvkitpyAntitarget {
  input {
    File? access
    Int? avg_size
    Int? min_size
    File? output_file_name
  }
  command <<<
    cnvkit_py antitarget \
      ~{if defined(access) then ("--access " +  '"' + access + '"') else ""} \
      ~{if defined(avg_size) then ("--avg-size " +  '"' + avg_size + '"') else ""} \
      ~{if defined(min_size) then ("--min-size " +  '"' + min_size + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    access: "Regions of accessible sequence on chromosomes (.bed),\\nas output by genome2access.py."
    avg_size: "Average size of antitarget bins (results are\\napproximate). [Default: 150000]"
    min_size: "Minimum size of antitarget bins (smaller regions are\\ndropped). [Default: 1/16 avg size, calculated]"
    output_file_name: "Output file name.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}