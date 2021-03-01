version 1.0

task IucnSimGetIucnData {
  input {
    File? reference_group
    String? reference_rank
    File? target_species_list
    File? outdir
    Int? iucn_key
    Boolean? no_online_sync
  }
  command <<<
    iucn_sim get_iucn_data \
      ~{if defined(reference_group) then ("--reference_group " +  '"' + reference_group + '"') else ""} \
      ~{if defined(reference_rank) then ("--reference_rank " +  '"' + reference_rank + '"') else ""} \
      ~{if defined(target_species_list) then ("--target_species_list " +  '"' + target_species_list + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(iucn_key) then ("--iucn_key " +  '"' + iucn_key + '"') else ""} \
      ~{if (no_online_sync) then "--no_online_sync" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference_group: "Name of taxonomic group (or list of groups) to be used\\nfor calculating status transition rates (e.g.\\n'Mammalia' or 'Rodentia,Chiroptera'). Alternatively\\nprovide path to text file containing a list of species\\nnames, compatible with IUCN taxonomy (>1000 species\\nrecommended). If none provided, the target species\\nlist ('--target_species_list') will be used for\\ncalculating transition rates. Tip: Use precompiled\\ngroup for faster processing and in case you don't have\\nan IUCN key (see available groups at github.com/tobias\\nhofmann88/iucn_extinction_simulator/data/precompiled/i\\nucn_history/ or request specific groups to be added:\\ntobias.andermann@bioenv.gu.se)"
    reference_rank: "Provide the taxonomic rank of the provided reference\\ngroup(s). E.g. in case of 'Mammalia', provide 'class'\\nfor this flag, in case of 'Rodentia,Chiroptera'\\nprovide 'order,order'. Has to be at least 'Family' or\\nabove. This flag is not needed if species list is\\nprovided as reference_group or if reference group is\\nalready pre-compiled."
    target_species_list: "File containing the list of species that you want to\\nsimulate future extinctions for. In case you have\\ngeneration length (GL) data available, provide the\\nfile containing the GL data for each species here\\n(including the species names). This function will\\noutput one central data file for downstream processing\\nthat contains the current status information as well\\nas the GL data (if available) for each species. You\\ncan provide multiple GL values for each species, e.g.\\nseveral randomely sampled values from the GL\\nuncertainty interval of a given species. Set this flag\\nto 0 if you want to supress downloading of current\\nstatus information, e.g. if you already have current\\nstatus information for your species (may be necessary\\nif you don't have a valid IUCN key). Set to 1 if you\\nwant to use the same taxa that are present in the\\nreference group. See https://github.com/tobiashofmann8\\n8/iucn_extinction_simulator/data/precompiled/ for\\nexamples of the format of GL data input files and the\\nformat of the output file conataining current status\\ninformation."
    outdir: "Provide path to outdir where results will be saved."
    iucn_key: "Provide your IUCN API key (see\\nhttps://apiv3.iucnredlist.org/api/v3/token) for\\ndownloading IUCN history of your provided reference\\ngroup. Not required if using precompiled reference\\ngroup and a manually compiled current status list (to\\nbe used in the 'transition_rates' function). Also not\\nrequired if all species in your target_species_list\\nare present in the precompiled reference_group)."
    no_online_sync: "Turn off the online-search for precompiled IUCN\\nhistory files for your reference group.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}