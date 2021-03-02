version 1.0

task KodojaRetrievepy {
  input {
    File? file_dir
    Int? read_one
    Int? read_two
    String? user_format
    String? taxid
    Boolean? genus
    Boolean? stringent
  }
  command <<<
    kodoja_retrieve_py \
      ~{if defined(file_dir) then ("--file_dir " +  '"' + file_dir + '"') else ""} \
      ~{if defined(read_one) then ("--read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(read_two) then ("--read2 " +  '"' + read_two + '"') else ""} \
      ~{if defined(user_format) then ("--user_format " +  '"' + user_format + '"') else ""} \
      ~{if defined(taxid) then ("--taxID " +  '"' + taxid + '"') else ""} \
      ~{if (genus) then "--genus" else ""} \
      ~{if (stringent) then "--stringent" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_dir: "Path to directory of kodoja_search results, required"
    read_one: "Read 1 file path, required"
    read_two: "Read 2 file path, default: False"
    user_format: "Sequence data format, default: fastq"
    taxid: "Virus tax ID for subsetting, default: All viral\\nsequences"
    genus: "Include sequences classified at genus"
    stringent: "Only subset sequences identified by both tools"
  }
  output {
    File out_stdout = stdout()
  }
}