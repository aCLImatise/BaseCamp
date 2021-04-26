version 1.0

task ArcasHLAExtract {
  input {
    Boolean? log
    Boolean? single
    Boolean? unmapped
    Directory? outdir
    Boolean? temp
    Boolean? keep_files
    String bam
  }
  command <<<
    arcasHLA extract \
      ~{bam} \
      ~{if (log) then "--log" else ""} \
      ~{if (single) then "--single" else ""} \
      ~{if (unmapped) then "--unmapped" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (temp) then "--temp" else ""} \
      ~{if (keep_files) then "--keep_files" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/arcas-hla:0.2.5--hdfd78af_0"
  }
  parameter_meta {
    log: "log file for run summary\\ndefault: sample.extract.log"
    single: "single-end reads\\ndefault: False"
    unmapped: "include unmapped reads\\ndefault: False"
    outdir: "out directory"
    temp: "temp directory"
    keep_files: "keep intermediate files"
    bam: "/path/to/sample.bam"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}