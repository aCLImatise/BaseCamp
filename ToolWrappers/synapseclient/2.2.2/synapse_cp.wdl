version 1.0

task SynapseCp {
  input {
    Int? destination_id
    String? set_provenance
    Boolean? update_existing
    Boolean? skip_copy_annotations
    Boolean? exclude_types
    Boolean? skip_copy_wiki
  }
  command <<<
    synapse cp \
      ~{if defined(destination_id) then ("--destinationId " +  '"' + destination_id + '"') else ""} \
      ~{if defined(set_provenance) then ("--setProvenance " +  '"' + set_provenance + '"') else ""} \
      ~{if (update_existing) then "--updateExisting" else ""} \
      ~{if (skip_copy_annotations) then "--skipCopyAnnotations" else ""} \
      ~{if (exclude_types) then "--excludeTypes" else ""} \
      ~{if (skip_copy_wiki) then "--skipCopyWiki" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/synapseclient:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    destination_id: "Synapse ID of project or folder where file will be\\ncopied to."
    set_provenance: "Has three values to set the provenance of the copied\\nentity-traceback: Sets to the source entityexisting:\\nSets to source entity's original provenance (if it\\nexists)None/none: No provenance is set"
    update_existing: "Will update the file if there is already a file that\\nis named the same in the destination"
    skip_copy_annotations: "Do not copy the annotations"
    exclude_types: "[file table ...]\\nAccepts a list of entity types (file, table, link)\\nwhich determines which entity types to not copy."
    skip_copy_wiki: "Do not copy the wiki pages"
  }
  output {
    File out_stdout = stdout()
  }
}