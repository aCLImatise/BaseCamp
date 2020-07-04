version 1.0

task VcfFilter {
  input {
    File? in
    File? out
    String? reg
    String? variant_type
    String? id
    Float? qual
    String? filter
    Boolean? filter_empty
    String? info
    String? sample
    Boolean? sample_one_match
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    VcfFilter \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(reg) then ("-reg " +  '"' + reg + '"') else ""} \
      ~{if defined(variant_type) then ("-variant_type " +  '"' + variant_type + '"') else ""} \
      ~{if defined(id) then ("-id " +  '"' + id + '"') else ""} \
      ~{if defined(qual) then ("-qual " +  '"' + qual + '"') else ""} \
      ~{if defined(filter) then ("-filter " +  '"' + filter + '"') else ""} \
      ~{true="-filter_empty" false="" filter_empty} \
      ~{if defined(info) then ("-info " +  '"' + info + '"') else ""} \
      ~{if defined(sample) then ("-sample " +  '"' + sample + '"') else ""} \
      ~{true="-sample_one_match" false="" sample_one_match} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    in: "Input VCF file. If unset, reads from STDIN. Default value: ''"
    out: "Output VCF list. If unset, writes to STDOUT. Default value: ''"
    reg: "Region of interest in BED format, or comma-separated list of region, e.g. 'chr1:454540-454678,chr2:473457-4734990'. Default value: ''"
    variant_type: "Filters by variant type. Possible types are: 'snp','indel','multi-allelic','other'. Default value: ''"
    id: "Filter by ID column (regular expression). Default value: ''"
    qual: "Filter by QUAL column (minimum). Default value: '0'"
    filter: "Filter by FILTER column (regular expression). Default value: ''"
    filter_empty: "Removes entries with non-empty FILTER column. Default value: 'false'"
    info: "Filter by INFO column entries - use ';' as separator for several filters, e.g. 'DP > 5;AO > 2' (spaces are important)."
    sample: "Filter by sample-specific entries - use ';' as separator for several filters, e.g. 'GT is 1/1' (spaces are important)."
    sample_one_match: "If set, a line will pass if one sample passes all filters (default behaviour is that all samples have to pass all filters). Default value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}