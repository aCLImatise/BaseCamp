version 1.0

task PlantcvutilspySampleImages {
  input {
    Directory? source
    Directory? outdir
    Int? number
  }
  command <<<
    plantcv_utils_py sample_images \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    source: "Source directory of images"
    outdir: "Output directory for the random sample to get saved"
    number: "The number of images to sample\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}