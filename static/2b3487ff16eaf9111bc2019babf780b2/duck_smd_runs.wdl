version 1.0

task DuckSmdRuns {
  input {
    String inputInput
    String picklePickle
    String numNumRuns
    String mdMdLen
    String startStartDist
    String inInItVelocity
    String gpuGpuId
  }
  command <<<
    duck_smd_runs \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(picklePickle) then ("--pickle " +  '"' + picklePickle + '"') else ""} \
      ~{if defined(numNumRuns) then ("--num-runs " +  '"' + numNumRuns + '"') else ""} \
      ~{if defined(mdMdLen) then ("--md-len " +  '"' + mdMdLen + '"') else ""} \
      ~{if defined(startStartDist) then ("--start-dist " +  '"' + startStartDist + '"') else ""} \
      ~{if defined(inInItVelocity) then ("--init-velocity " +  '"' + inInItVelocity + '"') else ""} \
      ~{if defined(gpuGpuId) then ("--gpu-id " +  '"' + gpuGpuId + '"') else ""}
  >>>
}