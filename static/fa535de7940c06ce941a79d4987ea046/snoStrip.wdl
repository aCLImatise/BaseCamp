version 1.0

task SnoStrip.pl {
  input {
    Boolean? dir_output_directory
    Boolean? kingdom_specify_kingdom
    Boolean? genome_genome_source
    Boolean? name_name_organism
    Boolean? clan_single_snorna
    Boolean? infernal_incorporate_infernal
    Boolean? quiet_suppress_unnecessary
    Boolean? force_force_search
    Boolean? sequences_directory_targetrnas
    Boolean? alignments_directory_alignments
    Boolean? profiles_directory_profiles
    String perl
  }
  command <<<
    snoStrip.pl \
      ~{perl} \
      ~{true="-d" false="" dir_output_directory} \
      ~{true="-k" false="" kingdom_specify_kingdom} \
      ~{true="-g" false="" genome_genome_source} \
      ~{true="-n" false="" name_name_organism} \
      ~{true="-c" false="" clan_single_snorna} \
      ~{true="-j" false="" infernal_incorporate_infernal} \
      ~{true="-q" false="" quiet_suppress_unnecessary} \
      ~{true="-f" false="" force_force_search} \
      ~{true="-s" false="" sequences_directory_targetrnas} \
      ~{true="-a" false="" alignments_directory_alignments} \
      ~{true="-p" false="" profiles_directory_profiles}
  >>>
  parameter_meta {
    dir_output_directory: "|dir             Output directory where all retrieved information will be stored. [REQUIRED]"
    kingdom_specify_kingdom: "|kingdom         Specify the kingdom which shall be analyzed. 'pro' ... Protostomia 'deu' ... Deuterostomia 'fun' ... Fungi 'pla' ... Plants [REQUIRED]"
    genome_genome_source: "|genome          Genome source to search for potential snoRNAs."
    name_name_organism: "|name            Name of the organism: 'Genus epithet'."
    clan_single_snorna: "|clan            Single snoRNA families to search for, e.g., -c CD_12 HACA_100  [analyze CD_12.fa and HACA_100.fa] -c CD_1* HACA*     [analyze CD_10.fa, CD_11.fa, etc. and ALL HACA families] "
    infernal_incorporate_infernal: "|infernal        Incorporate infernal in the homology-based  search procedure."
    quiet_suppress_unnecessary: "|quiet           Suppress unnecessary output."
    force_force_search: "|force           Force to search for novel snoRNA candidates in every organism, even though there are already species-specific sequences in the current family."
    sequences_directory_targetrnas: "|sequences       Directory of targetRNAs."
    alignments_directory_alignments: "|alignments      Directory of targetRNA alignments."
    profiles_directory_profiles: "|profiles        Directory of targetRNA profiles."
    perl: ""
  }
}