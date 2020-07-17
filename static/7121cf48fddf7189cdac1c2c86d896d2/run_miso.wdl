version 1.0

task RunMiso.py {
  input {
    String? event_type
    String? use_compressed
    String? view_gene
  }
  command <<<
    run_miso.py \
      ~{if defined(event_type) then ("--event-type " +  '"' + event_type + '"') else ""} \
      ~{if defined(use_compressed) then ("--use-compressed " +  '"' + use_compressed + '"') else ""} \
      ~{if defined(view_gene) then ("--view-gene " +  '"' + view_gene + '"') else ""}
  >>>
  parameter_meta {
    event_type: "Event type of two-isoform events (e.g. 'SE', 'RI', 'A3SS', ...)"
    use_compressed: "Use compressed event IDs. Takes as input a genes_to_filenames.shelve file produced by the index_gff script."
    view_gene: "View the contents of a gene/event that has been indexed. Takes as input an indexed (.pickle) filename."
  }
}