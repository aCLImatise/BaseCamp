version 1.0

task SampleGender {
  input {
    File? in
    String? method
    File? out
    Float? max_female
    Float? min_male
    Float? min_female
    Float? max_male
    Float? sry_cov
    Int? build
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    SampleGender \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(method) then ("-method " +  '"' + method + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(max_female) then ("-max_female " +  '"' + max_female + '"') else ""} \
      ~{if defined(min_male) then ("-min_male " +  '"' + min_male + '"') else ""} \
      ~{if defined(min_female) then ("-min_female " +  '"' + min_female + '"') else ""} \
      ~{if defined(max_male) then ("-max_male " +  '"' + max_male + '"') else ""} \
      ~{if defined(sry_cov) then ("-sry_cov " +  '"' + sry_cov + '"') else ""} \
      ~{if defined(build) then ("-build " +  '"' + build + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "Input BAM file(s)."
    method: "Method selection: Read distribution on X and Y chromosome (xy), fraction of heterocygous variants on X chromosome (hetx), or coverage of SRY gene (sry).\\nValid: 'xy,hetx,sry'"
    out: "Output TSV file - one line per input BAM file. If unset, writes to STDOUT.\\nDefault value: ''"
    max_female: "Maximum Y/X ratio for female (method xy).\\nDefault value: '0.06'"
    min_male: "Minimum Y/X ratio for male (method xy).\\nDefault value: '0.09'"
    min_female: "Minimum heterocygous SNP fraction for female (method hetx).\\nDefault value: '0.24'"
    max_male: "Maximum heterocygous SNP fraction for male (method hetx).\\nDefault value: '0.15'"
    sry_cov: "Minimum average coverage of SRY gene for males (method sry).\\nDefault value: '20'"
    build: "Genome build used to generate the input (methods hetx and sry).\\nDefault value: 'hg19'\\nValid: 'hg19,hg38'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
  }
}