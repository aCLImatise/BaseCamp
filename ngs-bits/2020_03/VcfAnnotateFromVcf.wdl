version 1.0

task VcfAnnotateFromVcf {
  input {
    File? config_file
    File? annotation_file
    String? info_ids
    String? id_column
    String? id_prefix
    Boolean? allow_missing_header
    File? in
    File? out
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    VcfAnnotateFromVcf \
      ~{if defined(config_file) then ("-config_file " +  '"' + config_file + '"') else ""} \
      ~{if defined(annotation_file) then ("-annotation_file " +  '"' + annotation_file + '"') else ""} \
      ~{if defined(info_ids) then ("-info_ids " +  '"' + info_ids + '"') else ""} \
      ~{if defined(id_column) then ("-id_column " +  '"' + id_column + '"') else ""} \
      ~{if defined(id_prefix) then ("-id_prefix " +  '"' + id_prefix + '"') else ""} \
      ~{true="-allow_missing_header" false="" allow_missing_header} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{true="--changelog" false="" changelog} \
      ~{true="--tdx" false="" tdx}
  >>>
  parameter_meta {
    config_file: "TSV file containing the annotation file path, the prefix, the INFO ids and the id column for multiple annotations. Default value: ''"
    annotation_file: "Tabix indexed VCF.GZ file used for annotation. Default value: ''"
    info_ids: "INFO id(s) in annotation VCF file (Multiple ids can be separated by ',', optional new id names in output file can be added by '=': original_id=new_id). Default value: ''"
    id_column: "Name of the ID column in annotation file. (If  it will be ignored in output file, alternative output name can be specified by old_id_column_name=new_name Default value: ''"
    id_prefix: "Prefix for INFO id(s) in output VCF file. Default value: ''"
    allow_missing_header: "If set the execution is not aborted if a INFO header is missing in annotation file Default value: 'false'"
    in: "Input VCF(.GZ) file. If unset, reads from STDIN. Default value: ''"
    out: "Output VCF list. If unset, writes to STDOUT. Default value: ''"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
}