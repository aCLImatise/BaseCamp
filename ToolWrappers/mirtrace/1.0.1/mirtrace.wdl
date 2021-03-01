version 1.0

task Mirtrace {
  input {
    Boolean? species
    Boolean? config
    Boolean? adapter
    Boolean? protocol
    File? output_dir
    Directory? force
    Boolean? enable_pipes
    Directory? write_fast_a
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
      ~{if (species) then "--species" else ""} \
      ~{if (config) then "--config" else ""} \
      ~{if (adapter) then "--adapter" else ""} \
      ~{if (protocol) then "--protocol" else ""} \
      ~{if (output_dir) then "--output-dir" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (enable_pipes) then "--enable-pipes" else ""} \
      ~{if (write_fast_a) then "--write-fasta" else ""} \
      ~{if (un_collapse_fast_a) then "--uncollapse-fasta" else ""} \
      ~{if (title) then "--title" else ""} \
      ~{if (comment) then "--comment" else ""} \
      ~{if (num_threads) then "--num-threads" else ""} \
      ~{if (verbosity_level) then "--verbosity-level" else ""} \
      ~{if (global_mem_reserve) then "--global-mem-reserve" else ""} \
      ~{if (custom_db_folder) then "--custom-db-folder" else ""} \
      ~{if (list_species) then "--list-species" else ""} \
      ~{if (cite) then "--cite" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    species: "Species (miRBase encoding). EXAMPLE: \\\"hsa\\\" for Homo sapiens.\\nTo list all codes, run \\\"miRTrace --list-species\\\"."
    config: "List of FASTQ files to process. This is a CSV (comma separated\\nvalue) file, i.e. with one entry per row.\\nEach row consists of the following columns\\n(only the first is required):\\nfilename,name-displayed-in-report,adapter,PHRED-ASCII-offset\\nNOTE: the PHRED ASCII offset can typically be reliably\\nauto-detected and is not necessary to specify.\\nEXAMPLE CONFIG FILE:\\npath/sample1.fastq,sample 1 (control),TGGAATTC\\npath/sample2.fastq,sample 2 (+drug X),TGGAATTC"
    adapter: "<DNA sequence>. [DEFAULT: none]."
    protocol: "One of the following (read structure schematic in parens):\\nillumina (miRNA--3'-adapter--index) [DEFAULT]\\nqiaseq (miRNA--3'-adapter--UMI--3'-adapter--index)\\nNOTE: Only the first (leftmost) 3' adapter should be specified.\\ncats (NNN--miRNA--poly-A--3'-adapter--index)\\nNOTE: It's not possible to specify an adapter for -p cats.\\nnextflex (NNNN--miRNA--NNNN--3'-adapter--index)"
    output_dir: "Directory for output files. [DEFAULT: <file listing>.output]"
    force: "Overwrite output directory if it exists."
    enable_pipes: "Enable support for named pipes (fifos) as input.\\nNOTE: Requires a config file with PHRED and adapter\\ngiven for each entry. Input must not be compressed."
    write_fast_a: "Write QC-passed reads and unknown reads (as defined\\nin the RNA type plot) to the output folder.\\nIdentical reads are collapsed. Entries are sorted by abundance."
    un_collapse_fast_a: "Write one FASTA entry per original FASTQ entry."
    title: "Set the report title."
    comment: "Add a comment to the generated report. Multiple\\narguments can be given."
    num_threads: "Maximum number of processing threads to use.\\n[DEFAULT: <number of virtual cores>]"
    verbosity_level: "Level of detail for debug messages. [default: 1]"
    global_mem_reserve: "Amount of Java memory reserved for\\n\\\"housekeeping\\\" tasks (in MB).\\nIncrease only if OutOfMemoryErrors are occurring.\\nDecrease only if available system memory is very low.\\n[Current value: 400 MB]"
    custom_db_folder: "Folder containing user-generated reference databases."
    list_species: "List all species that miRTrace has reference databases for."
    cite: "Show information about how to cite our paper."
    trace: "miRNA trace mode. Produces a clade report. --species is ignored."
    qc: "Quality control mode (full set of reports). --species must be given."
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
    Directory out_force = "${in_force}"
    Directory out_write_fast_a = "${in_write_fast_a}"
  }
}