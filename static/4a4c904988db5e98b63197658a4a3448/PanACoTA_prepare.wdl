version 1.0

task PanACoTAPrepare {
  input {
    Int? species_taxid_download
    Int? taxid_download_be
    String? species_download_corresponding
    String? ncbi_section_download
    String? assembly_level
    File? give_path_directory
    String? tmp
    Int? cut_n
    Int? l_nine_zero
    Int? nb_cont
    Float? min_dist
    Int? max_dist
    Int? threads
    Boolean? no_refseq
    File? your_already_downloaded
    Boolean? only_mash
    File? info
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    PanACoTA prepare \
      ~{if defined(species_taxid_download) then ("-T " +  '"' + species_taxid_download + '"') else ""} \
      ~{if defined(taxid_download_be) then ("-t " +  '"' + taxid_download_be + '"') else ""} \
      ~{if defined(species_download_corresponding) then ("-g " +  '"' + species_download_corresponding + '"') else ""} \
      ~{if defined(ncbi_section_download) then ("-s " +  '"' + ncbi_section_download + '"') else ""} \
      ~{if defined(assembly_level) then ("--assembly_level " +  '"' + assembly_level + '"') else ""} \
      ~{if defined(give_path_directory) then ("-o " +  '"' + give_path_directory + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{if defined(cut_n) then ("--cutn " +  '"' + cut_n + '"') else ""} \
      ~{if defined(l_nine_zero) then ("--l90 " +  '"' + l_nine_zero + '"') else ""} \
      ~{if defined(nb_cont) then ("--nbcont " +  '"' + nb_cont + '"') else ""} \
      ~{if defined(min_dist) then ("--min_dist " +  '"' + min_dist + '"') else ""} \
      ~{if defined(max_dist) then ("--max_dist " +  '"' + max_dist + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (no_refseq) then "--norefseq" else ""} \
      ~{if defined(your_already_downloaded) then ("-d " +  '"' + your_already_downloaded + '"') else ""} \
      ~{if (only_mash) then "--only-mash" else ""} \
      ~{if defined(info) then ("--info " +  '"' + info + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/panacota:1.2.0--py_0"
  }
  parameter_meta {
    species_taxid_download: "Species taxid to download, corresponding to the\\n'species taxid' provided by the NCBI. This will\\ndownload all sequences of this species and all its\\nsub-species.A comma-separated list of species taxids\\ncan also be provided. (Ex: -T 573 for Klebsiella\\npneumoniae)"
    taxid_download_be: "Taxid to download. This can be the taxid of a sub-\\nspecies, or of a specific strain. A taxid of a\\nsubspecies will download all strains in this\\nsubspecies EXCEPT the ones which have a specific\\ntaxid.A comma-separated list of taxids can also be\\nprovided.Ex: '-t 72407' will download all 'general' K.\\npneumoniae subsp. pneumoniae strains, and '-t 1123862'\\nwill download the strain K. pneumoniae subsp.\\npneumoniae Kp13 (not included in -t 72407, as it is a\\nstrain of the subspecies with a specific taxid)."
    species_download_corresponding: "Species to download, corresponding to the 'organism\\nname' provided by the NCBI. Give name between quotes\\n(for example \\\"escherichia coli\\\")"
    ncbi_section_download: "NCBI section to download: all genbank, or only refseq\\n(default)"
    assembly_level: "Assembly levels of genomes to download (default: all).\\nPossible levels are: 'all', 'complete', 'chromosome',\\n'scaffold', 'contig'.You can also provide a comma-\\nseparated list of assembly levels. For ex:\\n'complete,chromosome'"
    give_path_directory: "Give the path to the directory where you want to save\\nthe downloaded database. In the given directory, it\\nwill create a folder 'Database_init' containing all\\nfasta files that will be sent to the control\\nprocedure, as well as a folder 'refseq' with all\\noriginal compressed files downloaded from refseq. By\\ndefault, this output dir name is the ncbi_species name\\nif given, or ncbi_species_taxid or ncbi_taxid\\notherwise."
    tmp: "Specify where the temporary files (sequence split by\\nrows of 'N', sequence with new contig names etc.) must\\nbe saved. By default, it will be saved in your\\nout_dir/tmp_files."
    cut_n: "By default, each genome will be cut into new contigs\\nwhen at least 5 'N' in a row are found in its\\nsequence. If you don't want to cut genomes into new\\ncontigs when there are rows of 'N', put 0 to this\\noption. If you want to cut from a different number of\\n'N' in a row, put this value to this option."
    l_nine_zero: "Maximum value of L90 allowed to keep a genome. Default\\nis 100."
    nb_cont: "Maximum number of contigs allowed to keep a genome.\\nDefault is 999."
    min_dist: "By default, genomes whose distance to the reference is\\nnot between 1e-4 and 0.06 are discarded. You can\\nspecify your own lower limit (instead of 1e-4) with\\nthis option."
    max_dist: "By default, genomes whose distance to the reference is\\nnot between 1e-4 and 0.06 are discarded. You can\\nspecify your own lower limit (instead of 0.06) with\\nthis option."
    threads: "Run 'N' downloads in parallel (default=1). Put 0 if\\nyou want to use all cores of your computer."
    no_refseq: "If you already downloaded refseq genomes and do not\\nwant to check them, add this option to directly go to\\nthe next steps:quality control (L90, number of\\ncontigs...) and mash filter. Don't forget to specify\\nthe db_dir (-d option) where you already have your\\ngenome sequences."
    your_already_downloaded: "If your already downloaded sequences are not in the\\ndefault directory (outdir/Database_init), you can\\nspecify here the path to those fasta files."
    only_mash: "Add this option if you already downloaded complete and\\nrefseq genomes, and ran quality control (you have, a\\nfile containing all genome names, as well as their\\ngenome size, number of contigs and L90 values). It\\nwill then get information on genomes quality from this\\nfile, and run mash steps."
    info: "If you already ran the quality control, specify from\\nwhich file PanACoTA can read this information, in\\norder to proceed to the mash step. This file must\\ncontain at least 4 columns, tab separated, with the\\nfollowing headers: 'to_annotate', 'gsize', 'nb_conts',\\n'L90'. Any other column will be ignored."
    verbose: "Increase verbosity in stdout/stderr and log files."
    quiet: "Do not display anything to stdout/stderr. log files\\nwill still be created."
  }
  output {
    File out_stdout = stdout()
    File out_give_path_directory = "${in_give_path_directory}"
  }
}