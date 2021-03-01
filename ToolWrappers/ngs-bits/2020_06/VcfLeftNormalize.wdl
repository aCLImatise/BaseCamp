version 1.0

task VcfLeftNormalize {
  input {
    File? in
    File? out
    File? ref
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    VcfLeftNormalize \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "Input VCF file. If unset, reads from STDIN.\\nDefault value: ''"
    out: "Output VCF list. If unset, writes to STDOUT.\\nDefault value: ''"
    ref: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini' file is used.\\nDefault value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
  }
}