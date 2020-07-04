version 1.0

task VariantAnnotateFrequency {
  input {
    File? in
    File? bam
    File? out
    Boolean? depth
    Boolean? mapq_zero
    String? name
    File? ref
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    VariantAnnotateFrequency \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(bam) then ("-bam " +  '"' + bam + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="-depth" false="" depth} \
      ~{true="-mapq0" false="" mapq_zero} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if defined(ref) then ("-ref " +  '"' + ref + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input variant list to annotate in VCF or GSvar format."
    bam: "Input BAM file."
    out: "Output variant list file name (VCF or GSvar)."
    depth: "Annotate an additional column containing the depth. Default value: 'false'"
    mapq_zero: "Annotate an additional column containing the percentage of mapq 0 reads. Default value: 'false'"
    name: "Column header prefix in output file. Default value: ''"
    ref: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini' file is used. Default value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}