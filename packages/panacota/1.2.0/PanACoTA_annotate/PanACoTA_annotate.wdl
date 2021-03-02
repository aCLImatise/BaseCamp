version 1.0

task PanACoTAAnnotate {
  input {
    File? path_folder_containing
    File? path_folder_annotated
    File? file_containing_list
    Int? choose_name_genomes
    Boolean? add_option_you_want_only
    Int? info
    Boolean? prodigal
    Boolean? small
    Int? l_nine_zero
    Int? nb_cont
    Int? cut_n
    Int? date
    String? tmp
    Directory? an_not_dir
    Boolean? force
    Int? threads
    Boolean? verbose
    Boolean? quiet
    String saved
  }
  command <<<
    PanACoTA annotate \
      ~{saved} \
      ~{if defined(path_folder_containing) then ("-d " +  '"' + path_folder_containing + '"') else ""} \
      ~{if defined(path_folder_annotated) then ("-r " +  '"' + path_folder_annotated + '"') else ""} \
      ~{if defined(file_containing_list) then ("-l " +  '"' + file_containing_list + '"') else ""} \
      ~{if defined(choose_name_genomes) then ("-n " +  '"' + choose_name_genomes + '"') else ""} \
      ~{if (add_option_you_want_only) then "-Q" else ""} \
      ~{if defined(info) then ("--info " +  '"' + info + '"') else ""} \
      ~{if (prodigal) then "--prodigal" else ""} \
      ~{if (small) then "--small" else ""} \
      ~{if defined(l_nine_zero) then ("--l90 " +  '"' + l_nine_zero + '"') else ""} \
      ~{if defined(nb_cont) then ("--nbcont " +  '"' + nb_cont + '"') else ""} \
      ~{if defined(cut_n) then ("--cutn " +  '"' + cut_n + '"') else ""} \
      ~{if defined(date) then ("--date " +  '"' + date + '"') else ""} \
      ~{if defined(tmp) then ("--tmp " +  '"' + tmp + '"') else ""} \
      ~{if defined(an_not_dir) then ("--annot_dir " +  '"' + an_not_dir + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/panacota:1.2.0--py_0"
  }
  parameter_meta {
    path_folder_containing: "Path to folder containing all multifasta genome files"
    path_folder_annotated: "Path to folder where output annotated genomes must be"
    file_containing_list: "File containing the list of genome filenames to\\nannotate (1 genome per line). Each genome must be in\\nmulti-fasta format. You can specify the species name\\n(4 characters) you want to give to some genome, as\\nwell as the download (or any other reason) date of\\nyour choice. Format 'genome_name :: name.date'. name\\nand date are optional. See doc for more information on\\nthis file format. If you want to run this module from\\n'prepare_module' results, use '--info' instead."
    choose_name_genomes: "Choose a name for your annotated genomes. This name\\nshould contain 4 alphanumeric characters. Generally,\\nthey correspond to the 2 first letters of genus, and 2\\nfirst letters of species, e.g. ESCO for Escherichia\\nColi."
    add_option_you_want_only: "Add this option if you want only to do quality control\\non your genomes (cut at 5N if asked, calculate L90 and\\nnumber of contigs and plot their distributions). This\\nallows you to check which genomes would be annotated\\nwith the given parameters, and to modify those\\nparameters if you want, before you launch the\\nannotation and formatting steps."
    info: "If you already ran the 'prepare' data module, or\\nalready calculated yourself the L90 and number of\\ncontigs for each genome, you can give this\\ninformation, to go directly to annotation and\\nformatting steps. This file contains at least 4\\ncolumns, tab separated, with the following headers:\\n'to_annotate', 'gsize', 'nb_conts', 'L90'. Any other\\ncolumn will be ignored."
    prodigal: "Add this option if you only want syntactical\\nannotation, given by prodigal, and not functional\\nannotation requiring prokka and is slower."
    small: "If you use Prodigal to annotate genomes, if you\\nsequences are too small (less than 20000 characters),\\nit cannot annotate them with the default options. Add\\nthis option to use 'meta' procedure."
    l_nine_zero: "Maximum value of L90 allowed to keep a genome. Default\\nis 100."
    nb_cont: "Maximum number of contigs allowed to keep a genome.\\nDefault is 999."
    cut_n: "By default, each genome will be cut into new contigs\\nwhen at least 5 'N' in a row are found in its\\nsequence. If you don't want to cut genomes into new\\ncontigs when there are rows of 'N', put 0 to this\\noption. If you want to cut from a different number of\\n'N' occurrences, put this value to this option."
    date: "Specify the date (MMYY) to give to your annotated\\ngenomes. By default, will give today's date. The only\\nrequirement on the given date is that it is 4\\ncharacters long. You can use letters if you want. But\\nthe common way is to use 4 digits, corresponding to\\nMMYY."
    tmp: "Specify where the temporary files (sequence split by\\nrows of 'N', sequence with new contig names etc.) must\\nbe saved. By default, it will be saved in your\\nresult_directory/tmp_files."
    an_not_dir: "Specify in which directory the prokka/prodigal output\\nfiles (1 folder per genome, called\\n<genome_name>-[prokka, Prodigal]Res) must be saved. By\\ndefault, they are saved in the same directory as your\\ntemporary files (see --tmp option to change it)."
    force: "Force run: Add this option if you want to (re)run\\nannotation and formatting steps for all genomes even\\nif their result folder (for annotation step) or files\\n(for format step) already exist: override existing\\nresults. Without this option, if there already are\\nresults in the given result folder, the program stops.\\nIf there are no results, but prokka/prodigal folder\\nalready exists, prokka/prodigal won't run again, and\\nthe formating step will use the already existing\\nfolder if correct, or skip the genome if there are\\nproblems in prokka/prodigal folder."
    threads: "Specify how many threads can be used (default=1)"
    verbose: "Increase verbosity in stdout/stderr."
    quiet: "Do not display anything to stdout/stderr. log files\\nwill still be created."
    saved: "Optional arguments:"
  }
  output {
    File out_stdout = stdout()
    File out_path_folder_annotated = "${in_path_folder_annotated}"
    Directory out_an_not_dir = "${in_an_not_dir}"
  }
}