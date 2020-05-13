version 1.0

task HalLiftover {
  input {
    String outOutBedVersion
  }
  command <<<
    halLiftover \
      ~{if defined(outOutBedVersion) then ("--outBedVersion " +  '"' + outOutBedVersion + '"') else ""}
  >>>
}