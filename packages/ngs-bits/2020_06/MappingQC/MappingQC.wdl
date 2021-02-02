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
    Int? build
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    MappingQC \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(roi) then ("-roi " +  '"' + roi + '"') else ""} \
      ~{if (wgs) then "-wgs" else ""} \
      ~{if (rna) then "-rna" else ""} \
      ~{if (txt) then "-txt" else ""} \
      ~{if defined(min_mapq) then ("-min_mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if (no_cont) then "-no_cont" else ""} \
      ~{if (debug) then "-debug" else ""} \
      ~{if defined(build) then ("-build " +  '"' + build + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  parameter_meta {
    in: "Input BAM file."
    out: "Output qcML file. If unset, writes to STDOUT.\\nDefault value: ''"
    roi: "Input target region BED file (for panel, WES, etc.).\\nDefault value: ''"
    wgs: "WGS mode without target region. Genome information is taken from the BAM file.\\nDefault value: 'false'"
    rna: "RNA mode without target region. Genome information is taken from the BAM file.\\nDefault value: 'false'"
    txt: "Writes TXT format instead of qcML.\\nDefault value: 'false'"
    min_mapq: "Minmum mapping quality to consider a read mapped.\\nDefault value: '1'"
    no_cont: "Disables sample contamination calculation, e.g. for tumor or non-human samples.\\nDefault value: 'false'"
    debug: "Enables verbose debug outout.\\nDefault value: 'false'"
    build: "Genome build used to generate the input (needed for contamination only).\\nDefault value: 'hg19'\\nValid: 'hg19,hg38'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}