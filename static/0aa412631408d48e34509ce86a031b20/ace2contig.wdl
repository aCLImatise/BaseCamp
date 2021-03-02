version 1.0

task Ace2contig {
  input {
    File? i
    String? prefix_output_prefixcontig
  }
  command <<<
    ace2contig \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(prefix_output_prefixcontig) then ("-o " +  '"' + prefix_output_prefixcontig + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    i: "file"
    prefix_output_prefixcontig: "prefix (output is <prefix>.contig)"
  }
  output {
    File out_stdout = stdout()
  }
}