version 1.0

task BamToFastq {
  input {
    File? in
    File? out_one
    File? out_two
    String? reg
    Boolean? remove_duplicates
    Int? compression_level
    Int? write_buffer_size
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    BamToFastq \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out_one) then ("-out1 " +  '"' + out_one + '"') else ""} \
      ~{if defined(out_two) then ("-out2 " +  '"' + out_two + '"') else ""} \
      ~{if defined(reg) then ("-reg " +  '"' + reg + '"') else ""} \
      ~{if (remove_duplicates) then "-remove_duplicates" else ""} \
      ~{if defined(compression_level) then ("-compression_level " +  '"' + compression_level + '"') else ""} \
      ~{if defined(write_buffer_size) then ("-write_buffer_size " +  '"' + write_buffer_size + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  parameter_meta {
    in: "Input BAM file."
    out_one: "Read 1 output FASTQ.GZ file."
    out_two: "Read 2 output FASTQ.GZ file."
    reg: "Export only reads in the given region. Format: chr:start-end.\\nDefault value: ''"
    remove_duplicates: "Does not export duplicate reads into the FASTQ file.\\nDefault value: 'false'"
    compression_level: "Output gzip compression level from 1 (fastest) to 9 (best compression).\\nDefault value: '1'"
    write_buffer_size: "Output write buffer size (number of FASTQ entry pairs).\\nDefault value: '100'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out_one = "${in_out_one}"
    File out_out_two = "${in_out_two}"
  }
}