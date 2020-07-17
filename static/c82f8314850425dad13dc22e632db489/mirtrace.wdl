version 1.0

task Mirtrace {
  input {
    Boolean? species
    Boolean? config
    Boolean? adapter
    Boolean? protocol
    Boolean? output_dir
    Boolean? force
    Boolean? enable_pipes
    Boolean? write_fast_a
    Boolean? un_collapse_fast_a
    Boolean? title
    Boolean? comment
    Boolean? num_threads
    Boolean? verbosity_level
    Boolean? global_mem_reserve
    Boolean? custom_db_folder
    Boolean? list_species
    Boolean? cite
    String trace
    String qc
  }
  command <<<
    mirtrace \
      ~{trace} \
      ~{qc} \
      ~{true="--species" false="" species} \
      ~{true="--config" false="" config} \
      ~{true="--adapter" false="" adapter} \
      ~{true="--protocol" false="" protocol} \
      ~{true="--output-dir" false="" output_dir} \
      ~{true="--force" false="" force} \
      ~{true="--enable-pipes" false="" enable_pipes} \
      ~{true="--write-fasta" false="" write_fast_a} \
      ~{true="--uncollapse-fasta" false="" un_collapse_fast_a} \
      ~{true="--title" false="" title} \
      ~{true="--comment" false="" comment} \
      ~{true="--num-threads" false="" num_threads} \
      ~{true="--verbosity-level" false="" verbosity_level} \
      ~{true="--global-mem-reserve" false="" global_mem_reserve} \
      ~{true="--custom-db-folder" false="" custom_db_folder} \
      ~{true="--list-species" false="" list_species} \
      ~{true="--cite" false="" cite}
  >>>
  parameter_meta {
    species: "Species (miRBase encoding). EXAMPLE: \"hsa\" for Homo sapiens. To list all codes, run \"miRTrace --list-species\"."
    config: "List of FASTQ files to process. This is a CSV (comma separated value) file, i.e. with one entry per row. Each row consists of the following columns (only the first is required): filename,name-displayed-in-report,adapter,PHRED-ASCII-offset NOTE: the PHRED ASCII offset can typically be reliably auto-detected and is not necessary to specify. EXAMPLE CONFIG FILE: path/sample1.fastq,sample 1 (control),TGGAATTC path/sample2.fastq,sample 2 (+drug X),TGGAATTC"
    adapter: "<DNA sequence>. [DEFAULT: none]."
    protocol: "One of the following (read structure schematic in parens): illumina (miRNA--3'-adapter--index) [DEFAULT] qiaseq (miRNA--3'-adapter--UMI--3'-adapter--index) NOTE: Only the first (leftmost) 3' adapter should be specified. cats (NNN--miRNA--poly-A--3'-adapter--index) NOTE: It's not possible to specify an adapter for -p cats. nextflex (NNNN--miRNA--NNNN--3'-adapter--index)"
    output_dir: "Directory for output files. [DEFAULT: <file listing>.output]"
    force: "Overwrite output directory if it exists."
    enable_pipes: "Enable support for named pipes (fifos) as input. NOTE: Requires a config file with PHRED and adapter given for each entry. Input must not be compressed."
    write_fast_a: "Write QC-passed reads and unknown reads (as defined in the RNA type plot) to the output folder. Identical reads are collapsed. Entries are sorted by abundance."
    un_collapse_fast_a: "Write one FASTA entry per original FASTQ entry."
    title: "Set the report title."
    comment: "Add a comment to the generated report. Multiple arguments can be given."
    num_threads: "Maximum number of processing threads to use. [DEFAULT: <number of virtual cores>]"
    verbosity_level: "Level of detail for debug messages. [default: 1]"
    global_mem_reserve: "Amount of Java memory reserved for  \"housekeeping\" tasks (in MB). Increase only if OutOfMemoryErrors are occurring. Decrease only if available system memory is very low. [Current value: 400 MB]"
    custom_db_folder: "Folder containing user-generated reference databases."
    list_species: "List all species that miRTrace has reference databases for."
    cite: "Show information about how to cite our paper."
    trace: "miRNA trace mode. Produces a clade report. --species is ignored."
    qc: "Quality control mode (full set of reports). --species must be given."
  }
}