version 1.0

task Anviscriptreformatfasta {
  input {
    Int? min_len
    File? max_percentage_gaps
    File? file__excludeids
    Int? file__keepids
    File? file__outputfile
    Boolean? simplify_names
    File? file_reportfile_path
    String names_dot
  }
  command <<<
    anvi_script_reformat_fasta \
      ~{names_dot} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(max_percentage_gaps) then ("--max-percentage-gaps " +  '"' + max_percentage_gaps + '"') else ""} \
      ~{if defined(file__excludeids) then ("-i " +  '"' + file__excludeids + '"') else ""} \
      ~{if defined(file__keepids) then ("-I " +  '"' + file__keepids + '"') else ""} \
      ~{if defined(file__outputfile) then ("-o " +  '"' + file__outputfile + '"') else ""} \
      ~{if (simplify_names) then "--simplify-names" else ""} \
      ~{if defined(file_reportfile_path) then ("-r " +  '"' + file_reportfile_path + '"') else ""}
  >>>
  parameter_meta {
    min_len: "Minimum length of contigs to keep (contigs shorter\\nthan this value will not be included in the output\\nfile). The default is 0, so nothing will be removed if\\nyou do not declare a minimum size."
    max_percentage_gaps: "Maximum fraction of gaps in a sequence (any sequence\\nwith more gaps will be removed from the output FASTA\\nfile). The default is 100.000000."
    file__excludeids: "FILE, --exclude-ids TXT FILE\\nIDs to remove from the FASTA file. You cannot provide\\nboth --keep-ids and --exclude-ids."
    file__keepids: "FILE, --keep-ids TXT FILE\\nIf provided, all IDs not in this file will be excluded\\nfrom the reformatted FASTA file. Any additional\\nfilters (such as --min-len) will still be applied to\\nthe IDs in this file. You cannot provide both\\n--exclude-ids and --keep-ids."
    file__outputfile: "FILE, --output-file FASTA FILE\\nOutput file path."
    simplify_names: "Edit deflines to make sure they contigs have simple"
    file_reportfile_path: "FILE, --report-file REPORT FILE\\nReport file path. When you run this program with\\n`--simplify-names` flag, all changes to deflines will\\nbe reported in this file in case you need to go back\\nto this information later. It is not mandatory to\\ndeclare one, but it is a very good idea to have it.\\n"
    names_dot: "--prefix PREFIX       Use this parameter if you would like to add a prefix"
  }
  output {
    File out_stdout = stdout()
    File out_max_percentage_gaps = "${in_max_percentage_gaps}"
    File out_file__outputfile = "${in_file__outputfile}"
  }
}