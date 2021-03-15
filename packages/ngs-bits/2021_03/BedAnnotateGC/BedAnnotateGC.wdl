version 1.0

task BedAnnotateGC {
  input {
    File? in
    File? out
    File? ref
    Int? extend
    Boolean? clear
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BedAnnotateGC \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if defined(extend) then ("-extend " +  '"' + extend + '"') else ""} \
      ~{if (clear) then "-clear" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  parameter_meta {
    in: "Input BED file. If unset, reads from STDIN.\\nDefault value: ''"
    out: "Output BED file. If unset, writes to STDOUT.\\nDefault value: ''"
    ref: "Reference genome FASTA file. If unset, 'reference_genome' from the 'settings.ini' file is used.\\nDefault value: ''"
    extend: "Bases to extend around the input region for calculating the GC content.\\nDefault value: '0'"
    clear: "Clear all annotations present in the input file.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}