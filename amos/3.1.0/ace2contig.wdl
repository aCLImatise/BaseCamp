version 1.0

task Ace2contig {
  input {
    File? file
    String? prefix_output_prefixcontig
  }
  command <<<
    ace2contig \
      ~{if defined(file) then ("-i " +  '"' + file + '"') else ""} \
      ~{if defined(prefix_output_prefixcontig) then ("-o " +  '"' + prefix_output_prefixcontig + '"') else ""}
  >>>
  parameter_meta {
    file: "file"
    prefix_output_prefixcontig: "prefix (output is <prefix>.contig)"
  }
  output {
    File out_stdout = stdout()
  }
}