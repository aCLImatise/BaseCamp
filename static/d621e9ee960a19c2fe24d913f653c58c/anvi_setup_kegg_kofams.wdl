version 1.0

task Anvisetupkeggkofams {
  input {
    File? kegg_data_dir
    File? kegg_archive
    Boolean? download_from_kegg
    Int? kegg_snapshot
    Boolean? reset
    Boolean? just_do_it
  }
  command <<<
    anvi_setup_kegg_kofams \
      ~{if defined(kegg_data_dir) then ("--kegg-data-dir " +  '"' + kegg_data_dir + '"') else ""} \
      ~{if defined(kegg_archive) then ("--kegg-archive " +  '"' + kegg_archive + '"') else ""} \
      ~{if (download_from_kegg) then "--download-from-kegg" else ""} \
      ~{if defined(kegg_snapshot) then ("--kegg-snapshot " +  '"' + kegg_snapshot + '"') else ""} \
      ~{if (reset) then "--reset" else ""} \
      ~{if (just_do_it) then "--just-do-it" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    kegg_data_dir: "The directory path for your KEGG setup, which will\\ninclude things like KOfam profiles and KEGG MODULE\\ndata. Anvi'o will try to use the default path if you\\ndo not specify anything. (default: None)"
    kegg_archive: "The path to an archived (.tar.gz) KEGG directory\\n(which you have downloaded from figshare or from a\\ncollaborator who has a KEGG data directory generated\\nby anvi'o). If you provide this parameter, anvi'o will\\nset up the KEGG data directory from the archive you\\nspecify rather than downloading and setting up our\\ndefault KEGG archive. (default: None)"
    download_from_kegg: "This flag is for those people who always need the\\nlatest data. You know who you are :) By default, this\\nprogram will set up a snapshot of the KEGG databases,\\nwhich will be dated to the time of the anvi'o release\\nthat you are currently working with. The pros of this\\nare that the KEGG data will be the same for everyone\\n(which makes sharing your KEGG-annotated datasets\\neasy), and you will not have to worry about updating\\nyour datasets with new annotations every time that\\nKEGG updates. However, KEGG updates regularly, so the\\ncon of this is that you will not have the most up-to-\\ndate version of KEGG for your annotations, metabolism\\nestimations, or any other downstream uses of this\\ndata. If that is going to be a problem for you, do not\\nfear - you can provide this flag to tell anvi'o to\\ndownload the latest, freshest data directly from\\nKEGG's REST API and set it up into an\\nanvi'o-compatible database. (default: False)"
    kegg_snapshot: "If you are particularly interested in an earlier\\nsnapshot of KEGG that anvi'o knows about, you can set\\nit here. Otherwise anvi'o will always use the latest\\nsnapshot it knows about, which is likely to be the one\\nassociated with the current release of anvi'o.\\n(default: None)"
    reset: "Remove all the previously stored files and start over.\\nIf something is feels wrong for some reason and if you\\nbelieve re-downloading files and setting them up could\\naddress the issue, this is the flag that will tell\\nanvi'o to act like a real computer scientist\\nchallenged with a computational problem. (default:\\nFalse)"
    just_do_it: "Don't bother me with questions or warnings, just do\\nit. (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}