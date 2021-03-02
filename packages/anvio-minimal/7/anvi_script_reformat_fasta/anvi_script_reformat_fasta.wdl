version 1.0

task Anviscriptreformatfasta {
  input {
    Int? min_len
    File? max_percentage_gaps
    Int? max_gaps
    File? file__excludeids
    Int? export_gap_counts_table
    Int? file__keepids
    File? file__default
    Boolean? simplify_names
    String? prefix
    Int? seq_type
    File? file__reportfile
    String fast_a
    String contigs_fast_a
  }
  command <<<
    anvi_script_reformat_fasta \
      ~{fast_a} \
      ~{contigs_fast_a} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(max_percentage_gaps) then ("--max-percentage-gaps " +  '"' + max_percentage_gaps + '"') else ""} \
      ~{if defined(max_gaps) then ("--max-gaps " +  '"' + max_gaps + '"') else ""} \
      ~{if defined(file__excludeids) then ("-i " +  '"' + file__excludeids + '"') else ""} \
      ~{if defined(export_gap_counts_table) then ("--export-gap-counts-table " +  '"' + export_gap_counts_table + '"') else ""} \
      ~{if defined(file__keepids) then ("-I " +  '"' + file__keepids + '"') else ""} \
      ~{if defined(file__default) then ("-o " +  '"' + file__default + '"') else ""} \
      ~{if (simplify_names) then "--simplify-names" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(seq_type) then ("--seq-type " +  '"' + seq_type + '"') else ""} \
      ~{if defined(file__reportfile) then ("-r " +  '"' + file__reportfile + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    min_len: "Minimum length of contigs to keep (contigs shorter\\nthan this value will not be included in the output\\nfile). The default is 0, so nothing will be removed if\\nyou do not declare a minimum size."
    max_percentage_gaps: "Maximum fraction of gaps in a sequence (any sequence\\nwith more gaps will be removed from the output FASTA\\nfile). The default is 100.000000."
    max_gaps: "Maximum amount of gaps allowed per sequence in the\\nalignment. Don't know which threshold to pick? Use\\n--export-gap-counts-table to explore the gap counts\\nper sequence distribution! (default: 1000000)"
    file__excludeids: "FILE, --exclude-ids TXT FILE\\nIDs to remove from the FASTA file. You cannot provide\\nboth --keep-ids and --exclude-ids. (default: None)"
    export_gap_counts_table: "FILE\\nExport a table with the number of gaps per sequence.\\nPlease provide a prefix to name the file. (default:\\nNone)"
    file__keepids: "FILE, --keep-ids TXT FILE\\nIf provided, all IDs not in this file will be excluded\\nfrom the reformatted FASTA file. Any additional\\nfilters (such as --min-len) will still be applied to\\nthe IDs in this file. You cannot provide both\\n--exclude-ids and --keep-ids. (default: None)"
    file__default: "FILE, --output-file FASTA FILE\\nOutput file path. (default: None)"
    simplify_names: "Edit deflines to make sure they contigs have simple\\nnames. (default: False)"
    prefix: "Use this parameter if you would like to add a prefix\\nto your contig names while simplifying them. The\\nprefix must be a single word (you can use underscor\\ncharacter, but nothing more!). (default: None)"
    seq_type: "TYPE   Supply either 'NT' or 'AA' (if you want). If 'NT', any\\ncharacters besides {A,C,T,G} will by replaced with\\n'N'. If 'AA', any characters that are not 1-letter\\namino acid characters will be replaced with 'X'. If\\nyou don't supply anything, no charaters will be\\nmodified. (default: None)"
    file__reportfile: "FILE, --report-file REPORT FILE\\nReport file path. When you run this program with\\n`--simplify-names` flag, all changes to deflines will\\nbe reported in this file in case you need to go back\\nto this information later. It is not mandatory to\\ndeclare one, but it is a very good idea to have it.\\n(default: None)"
    fast_a: "🍕 Can provide: "
    contigs_fast_a: "🍺 More on `anvi-script-reformat-fasta`:"
  }
  output {
    File out_stdout = stdout()
    File out_max_percentage_gaps = "${in_max_percentage_gaps}"
    File out_file__default = "${in_file__default}"
  }
}