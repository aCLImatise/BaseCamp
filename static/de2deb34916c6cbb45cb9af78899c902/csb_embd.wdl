version 1.0

task CsbEmbd {
  input {
    String? psf_size
    String? output_directory_sharpened
    String? iterations
    String? output_frequency
    Boolean? verbose
    String map_file
  }
  command <<<
    csb-embd \
      ~{map_file} \
      ~{if defined(psf_size) then ("--psf-size " +  '"' + psf_size + '"') else ""} \
      ~{if defined(output_directory_sharpened) then ("--output " +  '"' + output_directory_sharpened + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(output_frequency) then ("--output-frequency " +  '"' + output_frequency + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    psf_size: "size of the point spread function (default=15)"
    output_directory_sharpened: "output directory of the sharpened maps (default=.)"
    iterations: "number of iterations (default=1000)"
    output_frequency: "create a map file each f iterations (default=50)"
    verbose: "verbose mode (default=False)"
    map_file: "Input Cryo EM file in CCP4 MRC format"
  }
}