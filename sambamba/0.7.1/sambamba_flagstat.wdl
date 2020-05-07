version 1.0

task SambambaFlagstat {
  input {
    String nNThreads
    Boolean showShowProgress
    String? sambaSambaMbaFlagStat
    String? inputInputBam
  }
  command <<<
    sambamba flagstat \
      ~{sambaSambaMbaFlagStat} \
      ~{if defined(nNThreads) then ("--nthreads " +  '"' + nNThreads + '"') else ""} \
      ~{true="--show-progress" false="" showShowProgress} \
      ~{inputInputBam}
  >>>
}