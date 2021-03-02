version 1.0

task BaitFilter {
  input {
    File? input_bait_file_name
    File? output_bait_file_name
    File? convert
    Int? mode
    Int? blast_second_hit_evalue
    Int? blast_first_hit_evalue
    Boolean? blast_min_hit_coverage_of_baits_in_tiling_stack
    File? ref_blast_db
    Int? blast_extra_command_line
    Int? blast_evalue_cut_off
    Int? blast_executable
    File? thinning_step_width
    File? id_prefix
    Int? verbosity
    Boolean? stats
    String bait_filter
    String below_dot
    String baits_dot
  }
  command <<<
    BaitFilter \
      ~{bait_filter} \
      ~{below_dot} \
      ~{baits_dot} \
      ~{if defined(input_bait_file_name) then ("--input-bait-file-name " +  '"' + input_bait_file_name + '"') else ""} \
      ~{if defined(output_bait_file_name) then ("--output-bait-file-name " +  '"' + output_bait_file_name + '"') else ""} \
      ~{if defined(convert) then ("--convert " +  '"' + convert + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(blast_second_hit_evalue) then ("--blast-second-hit-evalue " +  '"' + blast_second_hit_evalue + '"') else ""} \
      ~{if defined(blast_first_hit_evalue) then ("--blast-first-hit-evalue " +  '"' + blast_first_hit_evalue + '"') else ""} \
      ~{if (blast_min_hit_coverage_of_baits_in_tiling_stack) then "--blast-min-hit-coverage-of-baits-in-tiling-stack" else ""} \
      ~{if defined(ref_blast_db) then ("--ref-blast-db " +  '"' + ref_blast_db + '"') else ""} \
      ~{if defined(blast_extra_command_line) then ("--blast-extra-commandline " +  '"' + blast_extra_command_line + '"') else ""} \
      ~{if defined(blast_evalue_cut_off) then ("--blast-evalue-cutoff " +  '"' + blast_evalue_cut_off + '"') else ""} \
      ~{if defined(blast_executable) then ("--blast-executable " +  '"' + blast_executable + '"') else ""} \
      ~{if defined(thinning_step_width) then ("--thinning-step-width " +  '"' + thinning_step_width + '"') else ""} \
      ~{if defined(id_prefix) then ("--ID-prefix " +  '"' + id_prefix + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if (stats) then "--stats" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_bait_file_name: "(required)  Name of the input bait locus file. This is the bait file\\nobtained from the Bait-Fisher program."
    output_bait_file_name: "Name of the output bait file. This is the file the contains the\\nfiltered bait loci and the baits."
    convert: "Allows the user to produce the final output file for the bait\\nproducing company. In this mode, BaitFilter reads the input bait file\\nand instead of doing a filtering step, it produces a costumn bait file\\nthat can be uploaded to the baits producing company. In order to avoid\\nconfuction a filtering step cannot be done in the same run as the\\nconversion. If you want to filter a bait file and convert the output,\\nyou will need to call this program twice, first to do the filtering\\nand second to do  the conversion. Allowed conversion parameters\\ncurrently are: \\\"Agilent-Germany\\\".\\nNew output formats can be added upon request. Please contact the\\nauthor: Christoph Mayer, Email: Mayer Christoph\\n<c.mayer.zfmk@uni-bonn.de>"
    mode: "Appart form the input file this is the most essential option. This\\noption specifies which filter mode Bait-Filter uses. (See the user\\nmanual for more details):\\n\\\"ab\\\":      Retain only the best bait locus for each alignemntfile\\n(e.g. gene) when using the optimality criterion             to\\nminimize the total number of required baits.\\n\\\"as\\\":      Retain only the best bait locus for each alignemntfile\\n(e.g. gene) when using the optimality criterion             to\\nmaximize the number of sequences the result is based on.\\n\\\"fb\\\":      Retain only the best bait locus for each feature (e.g. CDS)\\nwhen using the optimality criterion             to minimize the total\\nnumber of required baits. Only applicable if alignment cutting has\\nbeen used in Bait-Fisher.\\n\\\"fs\\\":      Retain only the best bait locus for each feature (e.g. CDS)\\nwhen using the optimality criterion             to maximize the number\\nof sequences the result is based on. Only applicable if alignment\\ncutting has been used in Bait-Fisher.\\n\\\"blast-a\\\": Remove all bait loci of ALIGNMENTs for which one or more\\nbaits have multiple good hits to a reference genome.\\n\\\"blast-f\\\": Remove all bait loci of FEATUREs for which one or more\\nbaits have multiple good hits to a reference genome.\\n\\\"blast-l\\\": Remove bait LOCI that contain a bait that hos multiple good\\nhits to a reference genome.\\n\\\"thin-b\\\":  Thin out a bait file to every Nth bait region, by finding\\nthe start position that minimizes the number of baits.\\n\\\"thin-s\\\":  Thin out a bait file to every Nth bait region, by finding\\nthe start position that maximizes the number of sequences."
    blast_second_hit_evalue: "Maximum evalue for the second hit. A bait is characterized to bind\\nambiguously, if we have two good hits. This option is the evalue\\nthreshold for the second hit."
    blast_first_hit_evalue: "Maximum evalue for the first hit. A bait is characterized to bind\\nambiguously, if we have two good hits. This option is the evalue\\nthreshold for the first hit."
    blast_min_hit_coverage_of_baits_in_tiling_stack: "<floating point\\nnumber>\\nSpecifies a minimum hit coverage for the primary hit which at least\\none bait has to have in each tiling stack. Otherwise the bait region\\nis discarded. If not specified, no hit coverage is checked. This\\nparameter can only be used in conjunction with other filters. Since\\nthe order in which the coverage filter and the other filters are\\napplied matters, the order is defined as follows: For the mode\\noptions: ab, as, fb, fs the coverage is checked before determining the\\noptimal bait region. For the mode options: blast-a, blast-f, blast-l\\nthe hit coverage is checked after filtering for baits with multiple\\ngood hits to the reference genome."
    ref_blast_db: "Base name to a blast data base file. This name is passed to the blast\\ncommand. This is the name of the fasta file of your reference genome.\\nIMPORTANT: The makeblastdb program has to be called before starting\\nthe Bait-Filter program. makeblastdb takes the fasta file and  creates\\ndata base files out of it."
    blast_extra_command_line: "When invoking the blast command, extra commandline parameters can be\\npassed to the blast command. As an example with this option it is\\npossible to specifiy the number of threads the blast command should\\nuse."
    blast_evalue_cut_off: "When invoking the blast command, a default value of twice the\\n--<blast-first-hit-evalue is used. This should guarantee that all hits\\nnecessary for the blast filter are found. However, for the coverage\\nfiltering a smaller threshold might be necessary. This can be\\nspecified here."
    blast_executable: "Name of or path+name to the blast executable. Default: nblast. Minimum\\nversion number: Blast+ 2.2.x"
    thinning_step_width: "Thin out the bait file by retaining only every Nth bait region. This\\noption specified the step width N. If one of the moded thin-b, thin-s\\nis active, this option is required, otherwise it is not allowed to set\\nthis parameter."
    id_prefix: "In the conversion mode Agilent-Germany each converted file should get\\na unique ProdeID prefix, since even among multiple files, ProbeIDs are\\nnot allowed to be identical. This this option the user is able to\\nspecifiy a prefix string to all probe IDs in this file."
    verbosity: "The verbosity option controls the amount of information Bait-Filter\\nwrites to the console while running. 0: report only error messages\\nthat lead to exiting the program. 1: report also wanrings, 2: report\\nalso progress, 3: report more detailed progress, >10: debug output.\\n10000: all possible dignostic output."
    stats: "Compute stats for the input file and report these. This mode is\\nautomatically used for all modes specified with -m or the conversion\\nmode specified with -c.The purpose of the -S option is to compute\\nstats without having to filter or convert the input file. In\\nparticular, the -S mode does not require specifying an output\\nfile.\\nThis option has no effect if combined with the -m or -c modes."
    bait_filter: "-i <string> [-o <string>] [-c <string>] [-m <string>]\\n[--blast-second-hit-evalue <floating point number>]\\n[--blast-first-hit-evalue <floating point number>]\\n[--blast-min-hit-coverage-of-baits-in-tiling-stack <floating\\npoint number>] [--ref-blast-db <string>]\\n[--blast-extra-commandline <string>] [--blast-evalue-cutoff\\n<floating point number>] [-B <string>] [-t <positive\\ninteger>] [--ID-prefix <string>] [--verbosity <unsigned\\ninteger>] [-S] [--] [--version] [-h]"
    below_dot: "To compute stats of an input file, see the -S option below."
    baits_dot: "2b) Retain only best bait locus per feature (requires that features were"
  }
  output {
    File out_stdout = stdout()
    File out_output_bait_file_name = "${in_output_bait_file_name}"
    File out_ref_blast_db = "${in_ref_blast_db}"
    File out_thinning_step_width = "${in_thinning_step_width}"
  }
}