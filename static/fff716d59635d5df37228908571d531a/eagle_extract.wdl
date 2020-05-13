version 1.0

task EagleExtract {
  input {
    String sampleSampleRate
    String wW
  }
  command <<<
    eagle extract \
      ~{if defined(sampleSampleRate) then ("--samplerate " +  '"' + sampleSampleRate + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""}
  >>>
}