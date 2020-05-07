version 1.0

task DownsampleTraingenes.pl {
  input {
    String lambdaLambda
    String intronIntronNumLst
  }
  command <<<
    downsample_traingenes.pl \
      ~{if defined(lambdaLambda) then ("--lambda " +  '"' + lambdaLambda + '"') else ""} \
      ~{if defined(intronIntronNumLst) then ("--intron_num_lst " +  '"' + intronIntronNumLst + '"') else ""}
  >>>
}