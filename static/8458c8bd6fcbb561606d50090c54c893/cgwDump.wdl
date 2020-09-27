version 1.0

task CgwDump {
  input {
    File? mandatory_path_gkpstore
    File? version_mandatory_path_tigstore
    File? version_mandatory_path_checkpoint
    String? output_written_files
    Boolean? all
    Boolean? reads
    Boolean? unit_igs
    Boolean? contigs
    Boolean? scaffolds
    String? dumps_objects_iid
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
      ~{if defined(version_mandatory_path_tigstore) then ("-t " +  '"' + version_mandatory_path_tigstore + '"') else ""} \
      ~{if defined(version_mandatory_path_checkpoint) then ("-c " +  '"' + version_mandatory_path_checkpoint + '"') else ""} \
      ~{if defined(output_written_files) then ("-o " +  '"' + output_written_files + '"') else ""} \
      ~{if (all) then "-all" else ""} \
      ~{if (reads) then "-reads" else ""} \
      ~{if (unit_igs) then "-unitigs" else ""} \
      ~{if (contigs) then "-contigs" else ""} \
      ~{if (scaffolds) then "-scaffolds" else ""} \
      ~{if defined(dumps_objects_iid) then ("-b " +  '"' + dumps_objects_iid + '"') else ""} \
      ~{if (consensus) then "-consensus" else ""} \
      ~{if (layout) then "-layout" else ""} \
      ~{if (edges) then "-edges" else ""} \
      ~{if (label_tig_s) then "-labeltigs" else ""} \
      ~{if (label_reads) then "-labelreads" else ""}
  >>>
  parameter_meta {
    mandatory_path_gkpstore: "mandatory path to the gkpStore"
    version_mandatory_path_tigstore: "version     mandatory path to the tigStore and version"
    version_mandatory_path_checkpoint: "version   mandatory path to a checkpoint and version"
    output_written_files: "output is written to files starting with 'prefix'\\n(e.g., prefix.ctg.fasta)\\n(e.g., prefix.posmap.frgscf)"
    all: "dump all data for all object types"
    reads: "dumps reads"
    unit_igs: "dumps unitigs"
    contigs: "dumps contigs"
    scaffolds: "dumps scaffolds"
    dumps_objects_iid: "dumps objects bgnIID <= IID <= endIID\\n-e endIID\\n-i singleIID            dumps a specific object (multiple -i allowed)"
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