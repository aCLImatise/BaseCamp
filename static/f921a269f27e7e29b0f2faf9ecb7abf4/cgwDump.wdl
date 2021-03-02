version 1.0

task CgwDump {
  input {
    File? mandatory_path_gkpstore
    File? version_mandatory_path_tigstore_version
    File? version_mandatory_path_checkpoint_version
    String? output_written_prefixposmapfrgscf
    Boolean? all
    Boolean? reads
    Boolean? unit_igs
    Boolean? contigs
    Boolean? scaffolds
    String? dumps_objects_endiid
    String? dumps_specific_multiple
    Boolean? consensus
    Boolean? layout
    Boolean? edges
    Boolean? label_tig_s
    Boolean? label_reads
    String version
    String? action
  }
  command <<<
    cgwDump \
      ~{version} \
      ~{action} \
      ~{if defined(mandatory_path_gkpstore) then ("-g " +  '"' + mandatory_path_gkpstore + '"') else ""} \
      ~{if defined(version_mandatory_path_tigstore_version) then ("-t " +  '"' + version_mandatory_path_tigstore_version + '"') else ""} \
      ~{if defined(version_mandatory_path_checkpoint_version) then ("-c " +  '"' + version_mandatory_path_checkpoint_version + '"') else ""} \
      ~{if defined(output_written_prefixposmapfrgscf) then ("-o " +  '"' + output_written_prefixposmapfrgscf + '"') else ""} \
      ~{if (all) then "-all" else ""} \
      ~{if (reads) then "-reads" else ""} \
      ~{if (unit_igs) then "-unitigs" else ""} \
      ~{if (contigs) then "-contigs" else ""} \
      ~{if (scaffolds) then "-scaffolds" else ""} \
      ~{if defined(dumps_objects_endiid) then ("-b " +  '"' + dumps_objects_endiid + '"') else ""} \
      ~{if defined(dumps_specific_multiple) then ("-e " +  '"' + dumps_specific_multiple + '"') else ""} \
      ~{if (consensus) then "-consensus" else ""} \
      ~{if (layout) then "-layout" else ""} \
      ~{if (edges) then "-edges" else ""} \
      ~{if (label_tig_s) then "-labeltigs" else ""} \
      ~{if (label_reads) then "-labelreads" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mandatory_path_gkpstore: "mandatory path to the gkpStore"
    version_mandatory_path_tigstore_version: "version     mandatory path to the tigStore and version"
    version_mandatory_path_checkpoint_version: "version   mandatory path to a checkpoint and version"
    output_written_prefixposmapfrgscf: "output is written to files starting with 'prefix'\\n(e.g., prefix.ctg.fasta)\\n(e.g., prefix.posmap.frgscf)"
    all: "dump all data for all object types"
    reads: "dumps reads"
    unit_igs: "dumps unitigs"
    contigs: "dumps contigs"
    scaffolds: "dumps scaffolds"
    dumps_objects_endiid: "dumps objects bgnIID <= IID <= endIID"
    dumps_specific_multiple: "dumps a specific object (multiple -i allowed)"
    consensus: "dumps consensus sequence"
    layout: "dumps posmap layout of component objects"
    edges: "dumps unused mate edges involving selected objects"
    label_tig_s: "assign labels to unitigs/contigs"
    label_reads: "assign labels to mate pairs"
    version: ""
    action: ""
  }
  output {
    File out_stdout = stdout()
  }
}