version 1.0

task Csbembd {
  input {
    Int? psf_size
    Directory? output_directory_sharpened
    Int? iterations
    File? output_frequency
    Boolean? verbose
  }
  command <<<
    csb_embd \
      ~{if defined(psf_size) then ("--psf-size " +  '"' + psf_size + '"') else ""} \
      ~{if defined(output_directory_sharpened) then ("--output " +  '"' + output_directory_sharpened + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(output_frequency) then ("--output-frequency " +  '"' + output_frequency + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    psf_size: "size of the point spread function (default=15)"
    output_directory_sharpened: "output directory of the sharpened maps (default=.)"
    iterations: "number of iterations (default=1000)"
    output_frequency: "create a map file each f iterations (default=50)"
    verbose: "verbose mode (default=False)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_sharpened = "${in_output_directory_sharpened}"
  }
}