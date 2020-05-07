version 1.0

task PyprophetExportCompound {
  input {
    File inIn
    File outOut
    Boolean formatFormat
    Boolean csvCsv
    Float maxMaxRsPeakGroupQValue
  }
  command <<<
    pyprophet export-compound \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{if defined(outOut) then ("--out " +  '"' + outOut + '"') else ""} \
      ~{true="--format" false="" formatFormat} \
      ~{true="--csv" false="" csvCsv} \
      ~{if defined(maxMaxRsPeakGroupQValue) then ("--max_rs_peakgroup_qvalue " +  '"' + maxMaxRsPeakGroupQValue + '"') else ""}
  >>>
}