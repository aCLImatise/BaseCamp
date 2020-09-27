version 1.0

task RsatDownloadorganism {
  input {
    String? org
    Int? tax_on
    String download_organism
    String jacques_do_tv_and_otheldenatulbdotacdotbe
    String supported_organisms_server
    String rs_at_dot
    String wget_dot
    Float escherichia_coli_gcf_zero_zero_zero_zero_zero_five_eight_four_five_dot_two_asm_five_eight_four_v_two
  }
  command <<<
    rsat download_organism \
      ~{download_organism} \
      ~{jacques_do_tv_and_otheldenatulbdotacdotbe} \
      ~{supported_organisms_server} \
      ~{rs_at_dot} \
      ~{wget_dot} \
      ~{escherichia_coli_gcf_zero_zero_zero_zero_zero_five_eight_four_five_dot_two_asm_five_eight_four_v_two} \
      ~{if defined(org) then ("-org " +  '"' + org + '"') else ""} \
      ~{if defined(tax_on) then ("-taxon " +  '"' + tax_on + '"') else ""}
  >>>
  parameter_meta {
    org: "\\\\n-org Saccharomyces_cerevisiae"
    tax_on: "[1m-no_blast[0m | [1m-blast[0m\\nOptions to specify whether the cross-species blast files should be\\ndownloaded or not together with the genome.\\nDefault: -no_blast\\nThese files are used by several comparative genomics programs\\n([33mget-orthologs[0m, [33mfootprint-discovery[0m, [33mfootprint-scan[0m...). With the\\nincrease of th number of sequenced genomes, the blast-hit folder\\noccupies a large disk space, and should be downloaded only\\n[1m-dir output directory[0m\\nDirectory for exporting the genome(s) of the selected organism(s).\\nBy default, genomes are exported in the standar RSAT genome folder\\n($RSAT/public_html/data/genomes/). This requires write permissions\\non this folder. If you don't have those writing permissions,\\nspecifying an alternative directory may be convenient for obtaining\\nthe data files, but the downloaded genoems will not be supported on\\nthe local machine unless the configuration file is adapted (and this\\nanyways requires the writing permission in the RSAT directory).\\n[1m-o outputfile[0m\\nThe output file contains timing and information about downloaded\\norganisms (installation directories, ...).\\nIf no output file is specified, the standard output is used. This\\nallows to use the command within a pipe.\\n[1m-server server/path[0m\\nSpecify an alternative server.\\nDefault: http://rsat-tagc.univ-mrs.fr/rsat/\\n[1m-rsync[0m\\nThis option requires a ssh login on the main RSAT server, it is\\nreserved for the RSAT maintenance team.\\nWhen this option is activated, genomes are downloaded with the\\nprogram [33mrsync[0m is used instead of [33mwget[0m. This ensures a faster\\ntransfer (using the powerful featres of rsync such as on-the-fly\\ncompression, smart updating, etc).\\n[1m-ssh your.login@some.rsat.server[0m =item [1m-ssh\\nyour.login@some.rsat.server:rsat_path_on_server[0m\\nThis option requires a ssh login on the main RSAT server, it is\\nreserved for the RSAT maintenance team.\\nWhen this option is activated, genomes are downloaded with the\\nprogram [33mrsync[0m is used instead of [33mwget[0m. This ensures a faster\\ntransfer (using the powerful features of rsync such as on-the-fly\\ncompression, smart updating, etc).\\nThe rsync connection however requires a user account enabled with\\nssh access on the server, so it is reserved to the members of the\\nRSAT team.\\nThe RSAT path on the remote server can be specified in the argument.\\nIf not, the program will attempt to obtain the RSAT environment\\nvariable by ssh connection to the server, but this might fail (e.g.\\nif the server issues some message at login).\\nExamples:\\ndownload-organism -v 1 -org Saccharomyces_cerevisiae \\\\n-ssh your.login@your.rsat.server.org\\ndownload-organism -v 1 -org Saccharomyces_cerevisiae \\\\n-ssh your.login@your.rsat.server.org:rsat_path_on_server\\n[1m-bashrc bahrc_file[0m\\nThis option is only used with the option -ssh.\\nSpecify the path of the RSAT bashrc file. The ssh synchronization\\nmode requires for the client to load the RSAT_config.bashrc file.\\nDepending on server configuration, this file might not be loaded in\\nnon-interactive secure shell mode. The file specified with the\\noption -bashrc will be sourced as the first instruction of the\\nremote ssh commands.\\n[1m-upload[0m\\nThis option is only possible with the ssh option.\\n[1m-skip[0m\\nSkip the N first organisms of the list. This option is useful for\\nresuming an interrupted download.\\n[1m-last[0m\\nStop after the N first organisms of the list. This option is useful\\nfor testing the options with taxon-wise queries.\\n[1m-no_config[0m\\nDownload (or upload) the files but do not run the configuration task\\n(install-organisms -task config).\\n[1m-dry[0m\\nDry run: print the commands but do not execute them (just for\\ntesting).\\n"
    download_organism: "[1mVERSION[0m"
    jacques_do_tv_and_otheldenatulbdotacdotbe: "[1mCATEGORY[0m"
    supported_organisms_server: "The query to the remote server can also be restricted to a given taxon."
    rs_at_dot: "This differs from [33mdownload-organism[0m, which transfers the RSAT-formatted"
    wget_dot: "[1manonymous rsync[0m"
    escherichia_coli_gcf_zero_zero_zero_zero_zero_five_eight_four_five_dot_two_asm_five_eight_four_v_two: "The option -org can be used iteratively on teh command line to"
  }
  output {
    File out_stdout = stdout()
  }
}