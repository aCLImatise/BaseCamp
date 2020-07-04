version 1.0

task AdvntrGenotype {
  input {
    File? a_slash_alignment_file
    File? r_slash_reference_filename
    File? f_slash_fast_a
    Boolean? p_slash_pac_bio
    Boolean? n_slash_nano_pore
    File? oslash_outfile
    String? of_slash_out_fmt
    Boolean? fs_slash_frameshift
    Boolean? e_slash_expansion
    Float? c_slash_coverage
    Boolean? haploid
    Boolean? naive_slash_naive
    Boolean? h_slash_help
    File? working_directory
    File? m_slash_models
    Int? t_slash_threads
    Boolean? us_lash_update
    String? vid_slash_vntr_id
  }
  command <<<
    advntr genotype \
      ~{if defined(a_slash_alignment_file) then ("-a/--alignment_file " +  '"' + a_slash_alignment_file + '"') else ""} \
      ~{if defined(r_slash_reference_filename) then ("-r/--reference_filename " +  '"' + r_slash_reference_filename + '"') else ""} \
      ~{if defined(f_slash_fast_a) then ("-f/--fasta " +  '"' + f_slash_fast_a + '"') else ""} \
      ~{true="-p/--pacbio" false="" p_slash_pac_bio} \
      ~{true="-n/--nanopore" false="" n_slash_nano_pore} \
      ~{if defined(oslash_outfile) then ("-o/--outfile " +  '"' + oslash_outfile + '"') else ""} \
      ~{if defined(of_slash_out_fmt) then ("-of/--outfmt " +  '"' + of_slash_out_fmt + '"') else ""} \
      ~{true="-fs/--frameshift" false="" fs_slash_frameshift} \
      ~{true="-e/--expansion" false="" e_slash_expansion} \
      ~{if defined(c_slash_coverage) then ("-c/--coverage " +  '"' + c_slash_coverage + '"') else ""} \
      ~{true="--haploid" false="" haploid} \
      ~{true="-naive/--naive" false="" naive_slash_naive} \
      ~{true="-h/--help" false="" h_slash_help} \
      ~{if defined(working_directory) then ("--working_directory " +  '"' + working_directory + '"') else ""} \
      ~{if defined(m_slash_models) then ("-m/--models " +  '"' + m_slash_models + '"') else ""} \
      ~{if defined(t_slash_threads) then ("-t/--threads " +  '"' + t_slash_threads + '"') else ""} \
      ~{true="-u/--update" false="" us_lash_update} \
      ~{if defined(vid_slash_vntr_id) then ("-vid/--vntr_id " +  '"' + vid_slash_vntr_id + '"') else ""}
  >>>
  parameter_meta {
    a_slash_alignment_file: "alignment file in SAM/BAM/CRAM format"
    r_slash_reference_filename: "path to a FASTA-formatted reference file for CRAM files. It overrides filename specified in header, which is normally used to find the reference"
    f_slash_fast_a: "Fasta file containing raw reads"
    p_slash_pac_bio: "set this flag if input file contains PacBio reads instead of Illumina reads"
    n_slash_nano_pore: "set this flag if input file contains Nanopore MinION reads instead of Illumina"
    oslash_outfile: "file to write results. adVNTR writes output to stdout if oufile is not specified."
    of_slash_out_fmt: "output format. Allowed values are {text, bed} [text]"
    fs_slash_frameshift: "set this flag to search for frameshifts in VNTR instead of copy number. Supported VNTR IDs: [25561, 519759]"
    e_slash_expansion: "set this flag to determine long expansion from PCR-free data"
    c_slash_coverage: "average sequencing coverage in PCR-free sequencing"
    haploid: "set this flag if the organism is haploid"
    naive_slash_naive: "use naive approach for PacBio reads"
    h_slash_help: "show this help message and exit"
    working_directory: "working directory for creating temporary files needed for computation"
    m_slash_models: "VNTR models file [vntr_data/hg19_selected_VNTRs_Illumina.db]"
    t_slash_threads: "number of threads [1]"
    us_lash_update: "set this flag to iteratively update the model"
    vid_slash_vntr_id: "comma-separated list of VNTR IDs"
  }
}