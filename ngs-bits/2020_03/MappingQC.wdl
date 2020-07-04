version 1.0

task MappingQC {
  input {
    File? in
    File? out
    File? roi
    Boolean? wgs
    Boolean? rna
    Boolean? txt
    Int? min_mapq
    Boolean? no_cont
    Boolean? debug
    String? build
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    MappingQC \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(roi) then ("-roi " +  '"' + roi + '"') else ""} \
      ~{true="-wgs" false="" wgs} \
      ~{true="-rna" false="" rna} \
      ~{true="-txt" false="" txt} \
      ~{if defined(min_mapq) then ("-min_mapq " +  '"' + min_mapq + '"') else ""} \
      ~{true="-no_cont" false="" no_cont} \
      ~{true="-debug" false="" debug} \
      ~{if defined(build) then ("-build " +  '"' + build + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input BAM file."
    out: "Output qcML file. If unset, writes to STDOUT. Default value: ''"
    roi: "Input target region BED file (for panel, WES, etc.). Default value: ''"
    wgs: "WGS mode without target region. Genome information is taken from the BAM file. Default value: 'false'"
    rna: "RNA mode without target region. Genome information is taken from the BAM file. Default value: 'false'"
    txt: "Writes TXT format instead of qcML. Default value: 'false'"
    min_mapq: "Minmum mapping quality to consider a read mapped. Default value: '1'"
    no_cont: "Disables sample contamination calculation, e.g. for tumor or non-human samples. Default value: 'false'"
    debug: "Enables verbose debug outout. Default value: 'false'"
    build: "Genome build used to generate the input (needed for contamination only). Default value: 'hg19' Valid: 'hg19,hg38'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}