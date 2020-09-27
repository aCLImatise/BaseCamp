version 1.0

task PurgeHaplotigsPlace {
  input {
    Boolean? primary_primary_contigs
    File? placement_file_name
    Boolean? threads_threads_minimap
    Boolean? coverage_coverage_cutoff
    Boolean? falconnaming_rename_contigs
    String? h
  }
  command <<<
    purge_haplotigs place \
      ~{if (primary_primary_contigs) then "-p" else ""} \
      ~{if (placement_file_name) then "-o" else ""} \
      ~{if (threads_threads_minimap) then "-t" else ""} \
      ~{if (coverage_coverage_cutoff) then "-c" else ""} \
      ~{if (falconnaming_rename_contigs) then "-f" else ""} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""}
  >>>
  parameter_meta {
    primary_primary_contigs: "/ -primary       Primary contigs fasta file"
    placement_file_name: "/ -out           Placement file name. DEFAULT = ncbi_placements.tsv"
    threads_threads_minimap: "/ -threads       Threads for Minimap2. DEFAULT = 4"
    coverage_coverage_cutoff: "/ -coverage      Coverage cutoff percentage for pairing contigs.\\nDEFAULT = 50 (%)"
    falconnaming_rename_contigs: "/ -falconNaming  Rename contigs in the style used by FALCON Unzip. Saved\\nto <in-prefix>.FALC.fasta\\n"
    h: ""
  }
  output {
    File out_stdout = stdout()
    File out_placement_file_name = "${in_placement_file_name}"
  }
}