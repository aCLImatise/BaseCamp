version 1.0

task AnviScriptReformatFasta {
  input {
    Int? min_len
    String? max_percentage_gaps
    String? file__excludeids
    String? file__keepids
    String? file__outputfile
    Boolean? simplify_names
    String? prefix
    String? file__reportfile
  }
  command <<<
    anvi-script-reformat-fasta \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(max_percentage_gaps) then ("--max-percentage-gaps " +  '"' + max_percentage_gaps + '"') else ""} \
      ~{if defined(file__excludeids) then ("-i " +  '"' + file__excludeids + '"') else ""} \
      ~{if defined(file__keepids) then ("-I " +  '"' + file__keepids + '"') else ""} \
      ~{if defined(file__outputfile) then ("-o " +  '"' + file__outputfile + '"') else ""} \
      ~{true="--simplify-names" false="" simplify_names} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(file__reportfile) then ("-r " +  '"' + file__reportfile + '"') else ""}
  >>>
  parameter_meta {
    min_len: "Minimum length of contigs to keep (contigs shorter than this value will not be included in the output file). The default is 0, so nothing will be removed if you do not declare a minimum size."
    max_percentage_gaps: "Maximum fraction of gaps in a sequence (any sequence with more gaps will be removed from the output FASTA file). The default is 100.000000."
    file__excludeids: "FILE, --exclude-ids TXT FILE IDs to remove from the FASTA file. You cannot provide both --keep-ids and --exclude-ids."
    file__keepids: "FILE, --keep-ids TXT FILE If provided, all IDs not in this file will be excluded from the reformatted FASTA file. Any additional filters (such as --min-len) will still be applied to the IDs in this file. You cannot provide both --exclude-ids and --keep-ids."
    file__outputfile: "FILE, --output-file FASTA FILE Output file path."
    simplify_names: "Edit deflines to make sure they contigs have simple names."
    prefix: "Use this parameter if you would like to add a prefix to your contig names while simplifying them. The prefix must be a single word (you can use underscor character, but nothing more!)."
    file__reportfile: "FILE, --report-file REPORT FILE Report file path. When you run this program with `--simplify-names` flag, all changes to deflines will be reported in this file in case you need to go back to this information later. It is not mandatory to declare one, but it is a very good idea to have it."
  }
}