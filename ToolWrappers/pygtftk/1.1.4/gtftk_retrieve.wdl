version 1.0

task GtftkRetrieve {
  input {
    Boolean? species_name
    File? output_file
    Boolean? ensembl_collection
    Boolean? release
    Boolean? list_only
    Boolean? hide_species_name
    Boolean? to_stdout
    Boolean? delete
    Boolean? verbosity
    File? no_date
    Boolean? add_chr
    Boolean? tmp_dir
    Boolean? keep_all
    Boolean? logger_file
    Boolean? write_message_to_file
    Int arguments
  }
  command <<<
    gtftk retrieve \
      ~{arguments} \
      ~{if (species_name) then "--species-name" else ""} \
      ~{if (output_file) then "--outputfile" else ""} \
      ~{if (ensembl_collection) then "--ensembl-collection" else ""} \
      ~{if (release) then "--release" else ""} \
      ~{if (list_only) then "--list-only" else ""} \
      ~{if (hide_species_name) then "--hide-species-name" else ""} \
      ~{if (to_stdout) then "--to-stdout" else ""} \
      ~{if (delete) then "--delete" else ""} \
      ~{if (verbosity) then "--verbosity" else ""} \
      ~{if (no_date) then "--no-date" else ""} \
      ~{if (add_chr) then "--add-chr" else ""} \
      ~{if (tmp_dir) then "--tmp-dir" else ""} \
      ~{if (keep_all) then "--keep-all" else ""} \
      ~{if (logger_file) then "--logger-file" else ""} \
      ~{if (write_message_to_file) then "--write-message-to-file" else ""}
  >>>
  parameter_meta {
    species_name: "The species name. (default: homo_sapiens)"
    output_file: "Output file (gtf.gz). (default: None)"
    ensembl_collection: "Which ensembl collection to interrogate('vertebrate', 'protists', 'fungi', 'plants', 'metazoa'). (default: vertebrate)"
    release: "Release number. By default, the latest. (default: None)"
    list_only: "If selected, list available species. (default: False)"
    hide_species_name: "If selected, hide species names upon listing. (default: False)"
    to_stdout: "This option specifies that output will go to the standard output stream, leaving downloaded files intact (or not, see -d). (default: False)"
    delete: "Delete the gtf file after processing (e.g if -c is used). (default: False)"
    verbosity: "Set output verbosity ([0-3]). (default: 0)"
    no_date: "Do not add date to output file names. (default: False)"
    add_chr: "Add 'chr' to chromosome names before printing output. (default: False)"
    tmp_dir: "Keep all temporary files into this folder. (default: None)"
    keep_all: "Try to keep all temporary files even if process does not terminate normally. (default: False)"
    logger_file: "Stores the arguments passed to the command into a file. (default: None)"
    write_message_to_file: "Store all message into a file. (default: None)"
    arguments: "Arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_no_date = "${in_no_date}"
  }
}