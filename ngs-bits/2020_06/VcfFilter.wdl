version 1.0

task VcfFilter {
  input {
    File? in
    File? out
    Int? reg
    String? variant_type
    String? id
    Float? qual
    String? filter
    Boolean? filter_empty
    Int? info
    Int? sample
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
      ~{if (filter_empty) then "-filter_empty" else ""} \
      ~{if defined(info) then ("-info " +  '"' + info + '"') else ""} \
      ~{if defined(sample) then ("-sample " +  '"' + sample + '"') else ""} \
      ~{if (sample_one_match) then "-sample_one_match" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  parameter_meta {
    in: "Input VCF file. If unset, reads from STDIN.\\nDefault value: ''"
    out: "Output VCF list. If unset, writes to STDOUT.\\nDefault value: ''"
    reg: "Region of interest in BED format, or comma-separated list of region, e.g. 'chr1:454540-454678,chr2:473457-4734990'.\\nDefault value: ''"
    variant_type: "Filters by variant type. Possible types are: 'snp','indel','multi-allelic','other'.\\nDefault value: ''"
    id: "Filter by ID column (regular expression).\\nDefault value: ''"
    qual: "Filter by QUAL column (minimum).\\nDefault value: '0'"
    filter: "Filter by FILTER column (regular expression).\\nDefault value: ''"
    filter_empty: "Removes entries with non-empty FILTER column.\\nDefault value: 'false'"
    info: "Filter by INFO column entries - use ';' as separator for several filters, e.g. 'DP > 5;AO > 2' (spaces are important)."
    sample: "Filter by sample-specific entries - use ';' as separator for several filters, e.g. 'GT is 1/1' (spaces are important)."
    sample_one_match: "If set, a line will pass if one sample passes all filters (default behaviour is that all samples have to pass all filters).\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
  }
}