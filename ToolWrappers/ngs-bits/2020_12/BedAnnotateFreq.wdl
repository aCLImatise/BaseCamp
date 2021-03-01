version 1.0

task BedAnnotateFreq {
  input {
    File? bam
    File? in
    File? out
    String? ref
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedAnnotateFreq \
      ~{if defined(bam) then ("-bam " +  '"' + bam + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0"
  }
  parameter_meta {
    bam: "Input BAM/CRAM file(s)."
    in: "Input BED file. If unset, reads from STDIN.\\nDefault value: ''"
    out: "Output TSV file. If unset, writes to STDOUT.\\nDefault value: ''"
    ref: "Reference genome for CRAM support (mandatory if CRAM is used).\\nDefault value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}