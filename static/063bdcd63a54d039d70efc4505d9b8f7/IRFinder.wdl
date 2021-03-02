version 1.0

task IRFinder {
  input {
    Int? version_number_current
    String? this_usage_information
    File? fastq_default_quantifies
    Directory? directory_yet_exist
    Int? integer_parsed_mode
    String? typically_ercc_reference
    String? bed_regions_excluded
    File? nonoverlapping_bed_file
    File? existing_star_reference
    File? be_fasta_file
    File? be_gtf_file
    String? sequence_disable_universal
    Int? default_number_physical
    Directory? directory_default_current
    String? memory_mode_default
    String? executable_default_is
    String? extra_string_parsed
    File? output_sort_file
    Int? memory_maximum_memory
    String unsorted_dot_bam
    String ftp
    Int raw_reads_one_dot_fast_q
  }
  command <<<
    IRFinder \
      ~{unsorted_dot_bam} \
      ~{ftp} \
      ~{raw_reads_one_dot_fast_q} \
      ~{if defined(version_number_current) then ("-v " +  '"' + version_number_current + '"') else ""} \
      ~{if defined(this_usage_information) then ("-h " +  '"' + this_usage_information + '"') else ""} \
      ~{if defined(fastq_default_quantifies) then ("-m " +  '"' + fastq_default_quantifies + '"') else ""} \
      ~{if defined(directory_yet_exist) then ("-r " +  '"' + directory_yet_exist + '"') else ""} \
      ~{if defined(integer_parsed_mode) then ("-j " +  '"' + integer_parsed_mode + '"') else ""} \
      ~{if defined(typically_ercc_reference) then ("-e " +  '"' + typically_ercc_reference + '"') else ""} \
      ~{if defined(bed_regions_excluded) then ("-b " +  '"' + bed_regions_excluded + '"') else ""} \
      ~{if defined(nonoverlapping_bed_file) then ("-R " +  '"' + nonoverlapping_bed_file + '"') else ""} \
      ~{if defined(existing_star_reference) then ("-x " +  '"' + existing_star_reference + '"') else ""} \
      ~{if defined(be_fasta_file) then ("-f " +  '"' + be_fasta_file + '"') else ""} \
      ~{if defined(be_gtf_file) then ("-g " +  '"' + be_gtf_file + '"') else ""} \
      ~{if defined(sequence_disable_universal) then ("-a " +  '"' + sequence_disable_universal + '"') else ""} \
      ~{if defined(default_number_physical) then ("-t " +  '"' + default_number_physical + '"') else ""} \
      ~{if defined(directory_default_current) then ("-d " +  '"' + directory_default_current + '"') else ""} \
      ~{if defined(memory_mode_default) then ("-s " +  '"' + memory_mode_default + '"') else ""} \
      ~{if defined(executable_default_is) then ("-S " +  '"' + executable_default_is + '"') else ""} \
      ~{if defined(extra_string_parsed) then ("-y " +  '"' + extra_string_parsed + '"') else ""} \
      ~{if defined(output_sort_file) then ("-u " +  '"' + output_sort_file + '"') else ""} \
      ~{if defined(memory_maximum_memory) then ("-M " +  '"' + memory_maximum_memory + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    version_number_current: "version number of current IRFinder."
    this_usage_information: "this usage information."
    fastq_default_quantifies: "FastQ (default. Quantifies intron retention from FASTQ file);\\nBAM (quantifies intron retention from a name-sorted BAM file);\\nBuildRef (builds IRFinder reference from Ensembl FTP site. Requires Internet),\\nBuildRefDownload (only downloads FASTA and GTF files from Ensembl FTP site, without building IRFinder reference. Requires Internet),\\nBuildRefProcess (builds IRFinder reference from local FASTA and GTF files),\\nBuildRefFromSTARRef (builds IRFinder reference from a local STAR reference)."
    directory_yet_exist: ": Directory should not yet exist, will be created."
    integer_parsed_mode: ": an integer that is parsed to '--sjdbOverhang' under STAR 'genomeGenerate' mode. Default: 150."
    typically_ercc_reference: ": Typically an ERCC reference."
    bed_regions_excluded: ": BED of regions to be excluded from analysis."
    nonoverlapping_bed_file: ": A non-overlapping BED file of additional Regions of Interest for read counts."
    existing_star_reference: "An existing STAR reference folder.\\nPlease note: By default, BuildRefFromSTARRef mode automatically looks for the original FASTA and GTF files used to generate STARRefDir.\\nSpecifically, IRFinder investigates 'genomeParameters.txt' in STARRefDir.\\nIf both files can be located, IRFinder will continue to generate reference, ignoring '-f' and '-g' options.\\nIf either file is missing, IRFinder will quit and you have to re-run it by giving both '-f' and '-g' options."
    be_fasta_file: ": This MUST be the same FASTA file used to generate STARRefDir. Ignored when IRFinder can automatically locate the original file."
    be_gtf_file: ": This MUST be the same GTF file used to generate STARRefDir. Ignored when IRFinder can automatically locate the original file."
    sequence_disable_universal: "sequence: 'none' to disable. Default: Illumina Universal is trimmed."
    default_number_physical: ": Default is the number of physical CPUs"
    directory_default_current: "Directory: Default is the current directory."
    memory_mode_default: "memory mode: NoSharedMemory (default), LoadAndKeep, LoadAndRemove."
    executable_default_is: "executable: Default is 'STAR'."
    extra_string_parsed: ": an extra string that is parsed to STAR for reads alignment."
    output_sort_file: "output: Do not sort the read fragment BAM file. Default is to sort ONLY IF a novosort license is present."
    memory_maximum_memory: "memory. Maximum memory to use for sort, in MB. Default, auto-detected no greater than 10,000MB."
    unsorted_dot_bam: ""
    ftp: ""
    raw_reads_one_dot_fast_q: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_sort_file = "${in_output_sort_file}"
  }
}