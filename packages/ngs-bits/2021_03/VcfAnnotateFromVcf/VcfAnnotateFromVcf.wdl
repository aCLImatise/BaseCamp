version 1.0

task VcfAnnotateFromVcf {
  input {
    File? config_file
    File? annotation_file
    File? info_ids
    File? id_column
    File? id_prefix
    Boolean? allow_missing_header
    File? in
    File? out
    Int? threads
    Int? block_size
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
      ~{if (allow_missing_header) then "-allow_missing_header" else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(block_size) then ("-block_size " +  '"' + block_size + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0"
  }
  parameter_meta {
    config_file: "TSV file containing the annotation file path, the prefix, the INFO ids and the id column for multiple annotations.\\nDefault value: ''"
    annotation_file: "Tabix indexed VCF.GZ file used for annotation.\\nDefault value: ''"
    info_ids: "INFO id(s) in annotation VCF file (Multiple ids can be separated by ',', optional new id names in output file can be added by '=': original_id=new_id).\\nDefault value: ''"
    id_column: "Name of the ID column in annotation file. (If  it will be ignored in output file, alternative output name can be specified by old_id_column_name=new_name\\nDefault value: ''"
    id_prefix: "Prefix for INFO id(s) in output VCF file.\\nDefault value: ''"
    allow_missing_header: "If set the execution is not aborted if a INFO header is missing in annotation file\\nDefault value: 'false'"
    in: "Input VCF(.GZ) file. If unset, reads from STDIN.\\nDefault value: ''"
    out: "Output VCF list. If unset, writes to STDOUT.\\nDefault value: ''"
    threads: "The number of threads used to read, process and write files.\\nDefault value: '1'"
    block_size: "Number of lines processed in one chunk.\\nDefault value: '5000'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_info_ids = "${in_info_ids}"
    File out_id_column = "${in_id_column}"
    File out_id_prefix = "${in_id_prefix}"
  }
}