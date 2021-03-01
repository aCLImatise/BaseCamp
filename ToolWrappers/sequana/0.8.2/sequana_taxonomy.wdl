version 1.0

task SequanaTaxonomy {
  input {
    Boolean? homeuserconfigsequanakrakentoydb
    File? file_one
    File? file_two
    Directory? output_directory
    Boolean? keep_temp_files
    Boolean? show_html
    String? download
    File? unclassified_out
    File? classified_out
    String _thread_number
  }
  command <<<
    sequana_taxonomy \
      ~{_thread_number} \
      ~{if (homeuserconfigsequanakrakentoydb) then "--databases" else ""} \
      ~{if defined(file_one) then ("--file1 " +  '"' + file_one + '"') else ""} \
      ~{if defined(file_two) then ("--file2 " +  '"' + file_two + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if (keep_temp_files) then "--keep-temp-files" else ""} \
      ~{if (show_html) then "--show-html" else ""} \
      ~{if defined(download) then ("--download " +  '"' + download + '"') else ""} \
      ~{if defined(unclassified_out) then ("--unclassified-out " +  '"' + unclassified_out + '"') else ""} \
      ~{if defined(classified_out) then ("--classified-out " +  '"' + classified_out + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    homeuserconfigsequanakrakentoydb: "/home/user/.config/sequana/kraken_toydb"
    file_one: "R1 fastq file (zipped)"
    file_two: "R2 fastq file (zipped)"
    output_directory: "name of the output directory"
    keep_temp_files: "keep temporary files (hierarchical case with several"
    show_html: "Results are stored in report/ directory and results\\nare not shown by default"
    download: "download an official sequana DB. The sequana_db1 is\\nstored in a dedicated Synapse page (www.synapse.org).\\nminikraken is downloaded from the kraken's author\\npage, and toydb from sequana github."
    unclassified_out: "save unclassified sequences to filename"
    classified_out: "save unclassified sequences to filename"
    _thread_number: "--thread THREAD       number of threads to use (default 4)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}