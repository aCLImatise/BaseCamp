version 1.0

task GaasMakerGetRidOfContig.pl {
  input {
    String? datastore_name
    String? contig_name
    String? delete_contig
    String? file_output_name
    String get
    String rid
    String of
    String contigs
    String not
    String processed
    String properly
    String by
    String maker
    String in
    String the
    String log
    File file
    String and
  }
  command <<<
    gaas_maker_get_rid_of_contig.pl \
      ~{get} \
      ~{rid} \
      ~{of} \
      ~{contigs} \
      ~{not} \
      ~{processed} \
      ~{properly} \
      ~{by} \
      ~{maker} \
      ~{in} \
      ~{the} \
      ~{log} \
      ~{file} \
      ~{and} \
      ~{if defined(datastore_name) then ("--datastore-name " +  '"' + datastore_name + '"') else ""} \
      ~{if defined(contig_name) then ("--contig-name " +  '"' + contig_name + '"') else ""} \
      ~{if defined(delete_contig) then ("--delete-contig " +  '"' + delete_contig + '"') else ""} \
      ~{if defined(file_output_name) then ("--output " +  '"' + file_output_name + '"') else ""}
  >>>
  parameter_meta {
    datastore_name: "Input datastore log file"
    contig_name: "Input file containing the list of wrong contig"
    delete_contig: "<log> option will only delete contigs in the log file <all> option will delete contigs in the log file and contigs' folders"
    file_output_name: "File output name"
    get: ""
    rid: ""
    of: ""
    contigs: ""
    not: ""
    processed: ""
    properly: ""
    by: ""
    maker: ""
    in: ""
    the: ""
    log: ""
    file: ""
    and: ""
  }
}