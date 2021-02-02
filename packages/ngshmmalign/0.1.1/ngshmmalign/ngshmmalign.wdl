version 1.0

task Ngshmmalign {
  input {
    File? file_containing_profilemsa
    File? alnsam_filename_written
    Boolean? arg_devnull_filename
    Int? number_threads_use
    Boolean? clean_mafft_files
    Boolean? use_search_avoiding
    String? consensus_name_created
    Boolean? loci_ambiguous_bases
    Boolean? arg_value_seed
    Boolean? hardclip_reads_bein
    Boolean? extreme_hardclip_reads
    Boolean? show_progress_indicator
    Int? l_minimum_mapped
    Float? minimum_frequency_calling
    Float? error
    Float? go
    Float? ge
    Float? io
    Float? ie
    Int? ep
    Float? lco
    Float? lce
    String? rco
    Float? rce
    String reference
    String lookup
  }
  command <<<
    ngshmmalign \
      ~{reference} \
      ~{lookup} \
      ~{if defined(file_containing_profilemsa) then ("-r " +  '"' + file_containing_profilemsa + '"') else ""} \
      ~{if defined(alnsam_filename_written) then ("-o " +  '"' + alnsam_filename_written + '"') else ""} \
      ~{if (arg_devnull_filename) then "-w" else ""} \
      ~{if defined(number_threads_use) then ("-t " +  '"' + number_threads_use + '"') else ""} \
      ~{if (clean_mafft_files) then "-l" else ""} \
      ~{if (use_search_avoiding) then "-E" else ""} \
      ~{if defined(consensus_name_created) then ("-N " +  '"' + consensus_name_created + '"') else ""} \
      ~{if (loci_ambiguous_bases) then "-U" else ""} \
      ~{if (arg_value_seed) then "-s" else ""} \
      ~{if (hardclip_reads_bein) then "--hard" else ""} \
      ~{if (extreme_hardclip_reads) then "--HARD" else ""} \
      ~{if (show_progress_indicator) then "-v" else ""} \
      ~{if defined(l_minimum_mapped) then ("-M " +  '"' + l_minimum_mapped + '"') else ""} \
      ~{if defined(minimum_frequency_calling) then ("-a " +  '"' + minimum_frequency_calling + '"') else ""} \
      ~{if defined(error) then ("--error " +  '"' + error + '"') else ""} \
      ~{if defined(go) then ("--go " +  '"' + go + '"') else ""} \
      ~{if defined(ge) then ("--ge " +  '"' + ge + '"') else ""} \
      ~{if defined(io) then ("--io " +  '"' + io + '"') else ""} \
      ~{if defined(ie) then ("--ie " +  '"' + ie + '"') else ""} \
      ~{if defined(ep) then ("--ep " +  '"' + ep + '"') else ""} \
      ~{if defined(lco) then ("--lco " +  '"' + lco + '"') else ""} \
      ~{if defined(lce) then ("--lce " +  '"' + lce + '"') else ""} \
      ~{if defined(rco) then ("--rco " +  '"' + rco + '"') else ""} \
      ~{if defined(rce) then ("--rce " +  '"' + rce + '"') else ""}
  >>>
  parameter_meta {
    file_containing_profilemsa: "File containing the profile/MSA of the"
    alnsam_filename_written: "(=aln.sam)                Filename where alignment will be written to"
    arg_devnull_filename: "[ --wrong ] arg (=/dev/null)  Filename where alignment will be written\\nthat are filtered (too short, unpaired)"
    number_threads_use: "(=8)                      Number of threads to use for alignment.\\nDefaults to number of logical cores found"
    clean_mafft_files: "Do not clean up MAFFT temporary MSA files"
    use_search_avoiding: "Use full-exhaustive search, avoiding indexed"
    consensus_name_created: "(=CONSENSUS)              Name of consensus reference contig that will\\nbe created"
    loci_ambiguous_bases: "Loci with ambiguous bases get their emission\\nprobabilities according to their allele\\nfrequencies. In practice this is\\nundesirable, as it leads to systematic\\naccumulation of gaps in homopolymeric\\nregions with SNVs"
    arg_value_seed: "[ --seed ] arg (=42)          Value of seed for deterministic run. A value\\nof 0 will pick a random seed from some\\nnon-deterministic entropy source"
    hardclip_reads_bein: "Hard-clip reads. Clipped bases will NOT be\\nin the sequence in the alignment"
    extreme_hardclip_reads: "Extreme Hard-clip reads. Do not write\\nhard-clip in CIGAR, as if the hard-clipped\\nbases never existed. Mutually exclusive with\\nprevious option"
    show_progress_indicator: "Show progress indicator while aligning"
    l_minimum_mapped: "(=L * 0.8)                Minimum mapped length of read"
    minimum_frequency_calling: "(=0.05)                   Minimum frequency for calling ambiguous base"
    error: "(=0.005)             Global substitution probability"
    go: "(=1e-4)                 Gap open probability"
    ge: "(=0.30)                 Gap extend probability"
    io: "(=5e-5)                 Insert open probability"
    ie: "(=0.50)                 Insert extend probability"
    ep: "(=1/L)                  Jump to end probability; usually 1/L, where\\nL is the average length of the reads"
    lco: "(=0.10)                Left clip open probability"
    lce: "(=0.90)                Left clip extend probability"
    rco: "(=lco/L)               Right clip open probability"
    rce: "(=0.90)                Right clip extend probability"
    reference: "-R arg                           File containing the profile/MSA of the "
    lookup: "-X                               Replace general aligned state 'M' with '=' "
  }
  output {
    File out_stdout = stdout()
  }
}