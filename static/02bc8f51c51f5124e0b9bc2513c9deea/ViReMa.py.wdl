version 1.0

task ViReMapy {
  input {
    Int? host_index
    Int? number_mismatches_tolerated
    Int? seed
    Int? five_pad
    Int? of_segment_seperatethreepad
    Int? host_seed
    Boolean? select_data_is
    Int? de_fuzz
    Int? max_fuzz
    Boolean? ded_up
    Boolean? read_names_entry
    Int? micro_in_del_length
    Int? compound_handling
    File? output_tag
    Directory? output_dir
    Int? enter_number_available
    Int? chunk
    String? aligner
    Boolean? bed
    Boolean? win
    String virus_index
    String input_data
    String output_data
    Int two_five_dot
    String bowtie_dot
  }
  command <<<
    ViReMa_py \
      ~{virus_index} \
      ~{input_data} \
      ~{output_data} \
      ~{two_five_dot} \
      ~{bowtie_dot} \
      ~{if defined(host_index) then ("--Host_Index " +  '"' + host_index + '"') else ""} \
      ~{if defined(number_mismatches_tolerated) then ("--N " +  '"' + number_mismatches_tolerated + '"') else ""} \
      ~{if defined(seed) then ("--Seed " +  '"' + seed + '"') else ""} \
      ~{if defined(five_pad) then ("--FivePad " +  '"' + five_pad + '"') else ""} \
      ~{if defined(of_segment_seperatethreepad) then ("--X " +  '"' + of_segment_seperatethreepad + '"') else ""} \
      ~{if defined(host_seed) then ("--Host_Seed " +  '"' + host_seed + '"') else ""} \
      ~{if (select_data_is) then "-F" else ""} \
      ~{if defined(de_fuzz) then ("--Defuzz " +  '"' + de_fuzz + '"') else ""} \
      ~{if defined(max_fuzz) then ("--MaxFuzz " +  '"' + max_fuzz + '"') else ""} \
      ~{if (ded_up) then "-DeDup" else ""} \
      ~{if (read_names_entry) then "-ReadNamesEntry" else ""} \
      ~{if defined(micro_in_del_length) then ("--MicroInDel_Length " +  '"' + micro_in_del_length + '"') else ""} \
      ~{if defined(compound_handling) then ("--Compound_Handling " +  '"' + compound_handling + '"') else ""} \
      ~{if defined(output_tag) then ("--Output_Tag " +  '"' + output_tag + '"') else ""} \
      ~{if defined(output_dir) then ("--Output_Dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(enter_number_available) then ("--p " +  '"' + enter_number_available + '"') else ""} \
      ~{if defined(chunk) then ("--Chunk " +  '"' + chunk + '"') else ""} \
      ~{if defined(aligner) then ("--Aligner " +  '"' + aligner + '"') else ""} \
      ~{if (bed) then "-BED" else ""} \
      ~{if (win) then "-Win" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    host_index: "Host genome reference index key, e.g.\\nd_melanogaster_fb5_22"
    number_mismatches_tolerated: "Number of mismatches tolerated in mapped seed and in\\nmapped segments. Default is 1."
    seed: "Number of nucleotides in the Seed region. Default is"
    five_pad: "Number of nucleotides not allowed to have mismatches\\nat 5' end of segment. Default is 5."
    of_segment_seperatethreepad: "Number of nucleotides not allowed to have mismatches\\nat 3' end and 5' of segment. Overrides seperate\\nThreePad and FivePad settings. Default is 5."
    host_seed: "Number of nucleotides in the Seed region when mapping\\nto the Host Genome. Default is same as Seed value."
    select_data_is: "Select '-F' if data is in FASTA format fasta. Default\\nis FASTQ."
    de_fuzz: "Choose how to defuzz data: '5' to report at 5' end of\\nfuzzy region, '3' to report at 3' end, or '0' to\\nreport in centre of fuzzy region. Default is no fuzz\\nhandling (similar to choosing Right - see Routh et\\nal)."
    max_fuzz: "Select maximum allowed length of fuzzy region.\\nRecombination events with longer fuzzy regions will\\nnot be reported. Default is Seed Length."
    ded_up: "Remove potential PCR duplicates. Default is 'off'."
    read_names_entry: "Append Read Names contributing to each compiled\\nresult. Default is off."
    micro_in_del_length: "Size of MicroInDels - these are common artifacts of\\ncDNA preparation. See Routh et al JMB 2012. Default\\nsize is 0)"
    compound_handling: "Select this option for compound recombination event\\nmapping (see manual for details). Enter number of\\nnucleotides to map (must be less than Seed, and\\ngreater than number of nts in MicroInDel). Default is\\noff."
    output_tag: "Enter a tag name that will be appended to end of each\\noutput file."
    output_dir: "Enter a directory name that all compiled output files\\nwill be saved in."
    enter_number_available: "Enter number of available processors. Default is 1."
    chunk: "Enter number of reads to process together."
    aligner: "Enter Alignment Software: 'bwa', 'bowtie'. Default is"
    bed: "Output recombination data into BED files."
    win: "Select this option if running ViReMa from a\\nWindows/Cygwin shell.\\n"
    virus_index: "Virus genome reference index key. e.g. FHV_Genome"
    input_data: "File containing single reads in FASTQ format"
    output_data: "Destination file for results"
    two_five_dot: "--ThreePad THREEPAD   Number of nucleotides not allowed to have mismatches"
    bowtie_dot: "-No_Compile           Select this option if you do not wish to compile the"
  }
  output {
    File out_stdout = stdout()
    File out_output_tag = "${in_output_tag}"
    Directory out_output_dir = "${in_output_dir}"
  }
}