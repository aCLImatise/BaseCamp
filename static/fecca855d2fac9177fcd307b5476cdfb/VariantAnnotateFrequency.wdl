version 1.0

task VariantAnnotateFrequency {
  input {
    File? in
    File? bam
    File? out
    Boolean? depth
    Boolean? mapq_zero
    File? name
    File? ref
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    VariantAnnotateFrequency \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(bam) then ("-bam " +  '"' + bam + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (depth) then "-depth" else ""} \
      ~{if (mapq_zero) then "-mapq0" else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  parameter_meta {
    in: "Input variant list to annotate in VCF or GSvar format."
    bam: "Input BAM file."
    out: "Output variant list file name (VCF or GSvar)."
    depth: "Annotate an additional column containing the depth.\\nDefault value: 'false'"
    mapq_zero: "Annotate an additional column containing the percentage of mapq 0 reads.\\nDefault value: 'false'"
    name: "Column header prefix in output file.\\nDefault value: ''"
    ref: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini' file is used.\\nDefault value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_name = "${in_name}"
  }
}