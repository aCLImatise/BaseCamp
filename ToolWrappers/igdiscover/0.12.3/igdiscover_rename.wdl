version 1.0

task IgdiscoverRename {
  input {
    Boolean? no_sort
    String? not_found
    File? rename_from
    Int? order_by
  }
  command <<<
    igdiscover rename \
      ~{if (no_sort) then "--no-sort" else ""} \
      ~{if defined(not_found) then ("--not-found " +  '"' + not_found + '"') else ""} \
      ~{if defined(rename_from) then ("--rename-from " +  '"' + rename_from + '"') else ""} \
      ~{if defined(order_by) then ("--order-by " +  '"' + order_by + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    no_sort: "Do not sort sequences by name"
    not_found: "Append this text to the record name when the sequence\\nwas not found in the template. Default: ' (not found)'"
    rename_from: "FASTA template file with correctly named sequences. If\\na sequence in the target file is identical to one in\\nthe template, it is assigned the name of the sequence\\nin the template."
    order_by: "FASTA template that contains genes in the desired\\norder. If a name contains a \\\"*\\\" (asterisk), only the\\npreceding part is used. Thus, VH4-4*01 and VH4-4*02\\nare equivalent.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}