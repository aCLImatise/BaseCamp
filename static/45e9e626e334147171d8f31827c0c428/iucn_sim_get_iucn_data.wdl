version 1.0

task IucnSimGetIucnData {
  input {
    String? reference_group
    String? reference_rank
    File? target_species_list
    File? outdir
    String? iucn_key
    Boolean? no_online_sync
  }
  command <<<
    iucn_sim get_iucn_data \
      ~{if defined(reference_group) then ("--reference_group " +  '"' + reference_group + '"') else ""} \
      ~{if defined(reference_rank) then ("--reference_rank " +  '"' + reference_rank + '"') else ""} \
      ~{if defined(target_species_list) then ("--target_species_list " +  '"' + target_species_list + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(iucn_key) then ("--iucn_key " +  '"' + iucn_key + '"') else ""} \
      ~{true="--no_online_sync" false="" no_online_sync}
  >>>
  parameter_meta {
    reference_group: "Name of taxonomic group (or list of groups) to be used for calculating status transition rates (e.g. 'Mammalia' or 'Rodentia,Chiroptera'). Alternatively provide path to text file containing a list of species names, compatible with IUCN taxonomy (>1000 species recommended). If none provided, the target species list ('--target_species_list') will be used for calculating transition rates. Tip: Use precompiled group for faster processing and in case you don't have an IUCN key (see available groups at github.com/tobias hofmann88/iucn_extinction_simulator/data/precompiled/i ucn_history/ or request specific groups to be added: tobias.andermann@bioenv.gu.se)"
    reference_rank: "Provide the taxonomic rank of the provided reference group(s). E.g. in case of 'Mammalia', provide 'class' for this flag, in case of 'Rodentia,Chiroptera' provide 'order,order'. Has to be at least 'Family' or above. This flag is not needed if species list is provided as reference_group or if reference group is already pre-compiled."
    target_species_list: "File containing the list of species that you want to simulate future extinctions for. In case you have generation length (GL) data available, provide the file containing the GL data for each species here (including the species names). This function will output one central data file for downstream processing that contains the current status information as well as the GL data (if available) for each species. You can provide multiple GL values for each species, e.g. several randomely sampled values from the GL uncertainty interval of a given species. Set this flag to 0 if you want to supress downloading of current status information, e.g. if you already have current status information for your species (may be necessary if you don't have a valid IUCN key). Set to 1 if you want to use the same taxa that are present in the reference group. See https://github.com/tobiashofmann8 8/iucn_extinction_simulator/data/precompiled/ for examples of the format of GL data input files and the format of the output file conataining current status information."
    outdir: "Provide path to outdir where results will be saved."
    iucn_key: "Provide your IUCN API key (see https://apiv3.iucnredlist.org/api/v3/token) for downloading IUCN history of your provided reference group. Not required if using precompiled reference group and a manually compiled current status list (to be used in the 'transition_rates' function). Also not required if all species in your target_species_list are present in the precompiled reference_group)."
    no_online_sync: "Turn off the online-search for precompiled IUCN history files for your reference group."
  }
}