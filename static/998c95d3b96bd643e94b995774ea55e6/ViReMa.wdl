version 1.0

task ViReMa.py {
  input {
    String? host_index
    String? number_mismatches_tolerated
    String? seed
    String? three_pad
    String? five_pad
    String? number_allowed_of
    String? host_seed
    Boolean? select_data_fasta
    String? de_fuzz
    Int? max_fuzz
    Boolean? ded_up
    Boolean? read_names_entry
    String? micro_in_del_length
    String? compound_handling
    String? output_tag
    String? output_dir
    String? enter_number_available
    String? chunk
    String? aligner
    Boolean? no_compile
    Boolean? bed
    Boolean? win
    String virus_index
    String input_data
    String output_data
  }
  command <<<
    ViReMa.py \
      ~{virus_index} \
      ~{input_data} \
      ~{output_data} \
      ~{if defined(host_index) then ("--Host_Index " +  '"' + host_index + '"') else ""} \
      ~{if defined(number_mismatches_tolerated) then ("--N " +  '"' + number_mismatches_tolerated + '"') else ""} \
      ~{if defined(seed) then ("--Seed " +  '"' + seed + '"') else ""} \
      ~{if defined(three_pad) then ("--ThreePad " +  '"' + three_pad + '"') else ""} \
      ~{if defined(five_pad) then ("--FivePad " +  '"' + five_pad + '"') else ""} \
      ~{if defined(number_allowed_of) then ("--X " +  '"' + number_allowed_of + '"') else ""} \
      ~{if defined(host_seed) then ("--Host_Seed " +  '"' + host_seed + '"') else ""} \
      ~{true="-F" false="" select_data_fasta} \
      ~{if defined(de_fuzz) then ("--Defuzz " +  '"' + de_fuzz + '"') else ""} \
      ~{if defined(max_fuzz) then ("--MaxFuzz " +  '"' + max_fuzz + '"') else ""} \
      ~{true="-DeDup" false="" ded_up} \
      ~{true="-ReadNamesEntry" false="" read_names_entry} \
      ~{if defined(micro_in_del_length) then ("--MicroInDel_Length " +  '"' + micro_in_del_length + '"') else ""} \
      ~{if defined(compound_handling) then ("--Compound_Handling " +  '"' + compound_handling + '"') else ""} \
      ~{if defined(output_tag) then ("--Output_Tag " +  '"' + output_tag + '"') else ""} \
      ~{if defined(output_dir) then ("--Output_Dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(enter_number_available) then ("--p " +  '"' + enter_number_available + '"') else ""} \
      ~{if defined(chunk) then ("--Chunk " +  '"' + chunk + '"') else ""} \
      ~{if defined(aligner) then ("--Aligner " +  '"' + aligner + '"') else ""} \
      ~{true="-No_Compile" false="" no_compile} \
      ~{true="-BED" false="" bed} \
      ~{true="-Win" false="" win}
  >>>
  parameter_meta {
    host_index: "Host genome reference index key, e.g. d_melanogaster_fb5_22"
    number_mismatches_tolerated: "Number of mismatches tolerated in mapped seed and in mapped segments. Default is 1."
    seed: "Number of nucleotides in the Seed region. Default is 25."
    three_pad: "Number of nucleotides not allowed to have mismatches at 3' end of segment. Default is 5."
    five_pad: "Number of nucleotides not allowed to have mismatches at 5' end of segment. Default is 5."
    number_allowed_of: "Number of nucleotides not allowed to have mismatches at 3' end and 5' of segment. Overrides seperate ThreePad and FivePad settings. Default is 5."
    host_seed: "Number of nucleotides in the Seed region when mapping to the Host Genome. Default is same as Seed value."
    select_data_fasta: "Select '-F' if data is in FASTA format fasta. Default is FASTQ."
    de_fuzz: "Choose how to defuzz data: '5' to report at 5' end of fuzzy region, '3' to report at 3' end, or '0' to report in centre of fuzzy region. Default is no fuzz handling (similar to choosing Right - see Routh et al)."
    max_fuzz: "Select maximum allowed length of fuzzy region. Recombination events with longer fuzzy regions will not be reported. Default is Seed Length."
    ded_up: "Remove potential PCR duplicates. Default is 'off'."
    read_names_entry: "Append Read Names contributing to each compiled result. Default is off."
    micro_in_del_length: "Size of MicroInDels - these are common artifacts of cDNA preparation. See Routh et al JMB 2012. Default size is 0)"
    compound_handling: "Select this option for compound recombination event mapping (see manual for details). Enter number of nucleotides to map (must be less than Seed, and greater than number of nts in MicroInDel). Default is off."
    output_tag: "Enter a tag name that will be appended to end of each output file."
    output_dir: "Enter a directory name that all compiled output files will be saved in."
    enter_number_available: "Enter number of available processors. Default is 1."
    chunk: "Enter number of reads to process together."
    aligner: "Enter Alignment Software: 'bwa', 'bowtie'. Default is bowtie."
    no_compile: "Select this option if you do not wish to compile the results file into. Maybe useful when combining results from different datasets."
    bed: "Output recombination data into BED files."
    win: "Select this option if running ViReMa from a Windows/Cygwin shell."
    virus_index: "Virus genome reference index key. e.g. FHV_Genome"
    input_data: "File containing single reads in FASTQ format"
    output_data: "Destination file for results"
  }
}