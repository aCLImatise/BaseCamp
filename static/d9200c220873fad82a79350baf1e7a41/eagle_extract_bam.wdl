version 1.0

task EagleExtractBam {
  input {
    String sampleSampleRate
    String wW
    String? bamBam
    String? captureCaptureKit
  }
  command <<<
    eagle extract bam \
      ~{bamBam} \
      ~{if defined(sampleSampleRate) then ("--samplerate " +  '"' + sampleSampleRate + '"') else ""} \
      ~{if defined(wW) then ("-w " +  '"' + wW + '"') else ""} \
      ~{captureCaptureKit}
  >>>
}