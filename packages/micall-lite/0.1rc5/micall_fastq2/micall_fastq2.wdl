version 1.0

task MicallFastq2 {
  input {
    Boolean? keep
    Boolean? unzipped
    String? outdir
    String? batch
    String mic_all
  }
  command <<<
    micall fastq2 \
      ~{mic_all} \
      ~{if (keep) then "--keep" else ""} \
      ~{if (unzipped) then "--unzipped" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(batch) then ("--batch " +  '"' + batch + '"') else ""}
  >>>
  parameter_meta {
    keep: ""
    unzipped: ""
    outdir: ""
    batch: ""
    mic_all: ""
  }
  output {
    File out_stdout = stdout()
  }
}