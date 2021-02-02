version 1.0

task SnoStrippl {
  input {
    Directory? dir_output_directory
    Boolean? kingdom_specify_kingdom
    Boolean? info_file_containing
    Boolean? genome_genome_source
    Boolean? name_name_organism
    Boolean? infernal_incorporate_infernal
    Boolean? quiet_suppress_unnecessary
    Boolean? force_force_search
    Boolean? targets
    Boolean? sequences_directory_targetrnas
    Boolean? alignments_directory_targetrna
    Boolean? profiles_directory_targetrna
    String perl
  }
  command <<<
    snoStrip_pl \
      ~{perl} \
      ~{if (dir_output_directory) then "-d" else ""} \
      ~{if (kingdom_specify_kingdom) then "-k" else ""} \
      ~{if (info_file_containing) then "-i" else ""} \
      ~{if (genome_genome_source) then "-g" else ""} \
      ~{if (name_name_organism) then "-n" else ""} \
      ~{if (infernal_incorporate_infernal) then "-j" else ""} \
      ~{if (quiet_suppress_unnecessary) then "-q" else ""} \
      ~{if (force_force_search) then "-f" else ""} \
      ~{if (targets) then "--targets" else ""} \
      ~{if (sequences_directory_targetrnas) then "-s" else ""} \
      ~{if (alignments_directory_targetrna) then "-a" else ""} \
      ~{if (profiles_directory_targetrna) then "-p" else ""}
  >>>
  parameter_meta {
    dir_output_directory: "|dir             Output directory where all retrieved information will\\nbe stored.\\n[REQUIRED]"
    kingdom_specify_kingdom: "|kingdom         Specify the kingdom which shall be analyzed.\\n'pro' ... Protostomia\\n'deu' ... Deuterostomia\\n'fun' ... Fungi\\n'pla' ... Plants\\n[REQUIRED]"
    info_file_containing: "|info            File containing information of the organisms to be analyzed\\nfile format: genome  Genus epithet   3-letter abbreviation (tab-separated)\\nEspecially useful in case more than one organism shall be searched."
    genome_genome_source: "|genome          Genome source to search for potential snoRNAs."
    name_name_organism: "|name            Name of the organism: 'Genus epithet'."
    infernal_incorporate_infernal: "|infernal        Incorporate infernal in the homology-based\\nsearch procedure."
    quiet_suppress_unnecessary: "|quiet           Suppress unnecessary output."
    force_force_search: "|force           Force to search for novel snoRNA candidates in every\\norganism, even though there are already species-specific\\nsequences in the current family."
    targets: "Enable target prediction and make use of the target RNAs\\nthat were shipped with snoStrip.\\nLocation: /"
    sequences_directory_targetrnas: "|sequences       Directory of targetRNAs."
    alignments_directory_targetrna: "|alignments      Directory of targetRNA alignments."
    profiles_directory_targetrna: "|profiles        Directory of targetRNA profiles."
    perl: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_dir_output_directory = "${in_dir_output_directory}"
  }
}