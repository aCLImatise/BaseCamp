version 1.0

task AdvntrGenotype {
  input {
    File? alignment_file
    File? reference_filename
    File? fast_a
    Boolean? pac_bio
    Boolean? nano_pore
    Boolean? frameshift
    Boolean? expansion
    Float? coverage
    Boolean? haploid
    Boolean? naive
    File? working_directory
    File? models
    Int? threads
    Boolean? update
    String? vntr_id
    String illumina
    String specified_dot
  }
  command <<<
    advntr genotype \
      ~{illumina} \
      ~{specified_dot} \
      ~{if defined(alignment_file) then ("--alignment_file " +  '"' + alignment_file + '"') else ""} \
      ~{if defined(reference_filename) then ("--reference_filename " +  '"' + reference_filename + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (pac_bio) then "--pacbio" else ""} \
      ~{if (nano_pore) then "--nanopore" else ""} \
      ~{if (frameshift) then "--frameshift" else ""} \
      ~{if (expansion) then "--expansion" else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if (haploid) then "--haploid" else ""} \
      ~{if (naive) then "--naive" else ""} \
      ~{if defined(working_directory) then ("--working_directory " +  '"' + working_directory + '"') else ""} \
      ~{if defined(models) then ("--models " +  '"' + models + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (update) then "--update" else ""} \
      ~{if defined(vntr_id) then ("--vntr_id " +  '"' + vntr_id + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    alignment_file: "alignment file in SAM/BAM/CRAM format"
    reference_filename: "path to a FASTA-formatted reference file for CRAM files. It overrides\\nfilename specified in header, which is normally used to find the reference"
    fast_a: "Fasta file containing raw reads"
    pac_bio: "set this flag if input file contains PacBio reads instead of Illumina reads"
    nano_pore: "set this flag if input file contains Nanopore MinION reads instead of"
    frameshift: "set this flag to search for frameshifts in VNTR instead of copy number.\\nSupported VNTR IDs: [25561, 519759]"
    expansion: "set this flag to determine long expansion from PCR-free data"
    coverage: "average sequencing coverage in PCR-free sequencing"
    haploid: "set this flag if the organism is haploid"
    naive: "use naive approach for PacBio reads"
    working_directory: "working directory for creating temporary files needed for computation"
    models: "VNTR models file [vntr_data/hg19_selected_VNTRs_Illumina.db]"
    threads: "number of threads [1]"
    update: "set this flag to iteratively update the model"
    vntr_id: "comma-separated list of VNTR IDs"
    illumina: "-o/--outfile <file>             file to write results. adVNTR writes output to stdout if oufile is not"
    specified_dot: "-of/--outfmt <format>           output format. Allowed values are {text, bed} [text]"
  }
  output {
    File out_stdout = stdout()
  }
}