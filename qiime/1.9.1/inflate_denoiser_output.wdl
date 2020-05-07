version 1.0

task InflateDenoiserOutput.py {
  input {
    String centroidCentroidFps
    String singletonSingletonFps
    String fastFastAFps
    String deDeNoiseRMapFps
    String outputOutputFastAFp
  }
  command <<<
    inflate_denoiser_output.py \
      ~{if defined(centroidCentroidFps) then ("--centroid_fps " +  '"' + centroidCentroidFps + '"') else ""} \
      ~{if defined(singletonSingletonFps) then ("--singleton_fps " +  '"' + singletonSingletonFps + '"') else ""} \
      ~{if defined(fastFastAFps) then ("--fasta_fps " +  '"' + fastFastAFps + '"') else ""} \
      ~{if defined(deDeNoiseRMapFps) then ("--denoiser_map_fps " +  '"' + deDeNoiseRMapFps + '"') else ""} \
      ~{if defined(outputOutputFastAFp) then ("--output_fasta_fp " +  '"' + outputOutputFastAFp + '"') else ""}
  >>>
}