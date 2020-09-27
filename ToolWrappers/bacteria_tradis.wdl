version 1.0

task BacteriaTradis {
  input {
    Boolean? text_file_listing
    Boolean? tag_search_set
    Boolean? reference_genome_fasta
    Boolean? td
    Boolean? mm
    Boolean? mapping_quality_cutoff
    Boolean? custom_kmer_value_min
    Boolean? s_malt
    Boolean? s_malt_k
    Boolean? s_malt_s
    Boolean? s_malt_y
    Boolean? s_malt_r
    Boolean? number_threads_use
    Boolean? set_defaults_essentiality
    Boolean? verbose_debugging_output
  }
  command <<<
    bacteria_tradis \
      ~{if (text_file_listing) then "-f" else ""} \
      ~{if (tag_search_set) then "-t" else ""} \
      ~{if (reference_genome_fasta) then "-r" else ""} \
      ~{if (td) then "-td" else ""} \
      ~{if (mm) then "-mm" else ""} \
      ~{if (mapping_quality_cutoff) then "-m" else ""} \
      ~{if (custom_kmer_value_min) then "-k" else ""} \
      ~{if (s_malt) then "--smalt" else ""} \
      ~{if (s_malt_k) then "--smalt_k" else ""} \
      ~{if (s_malt_s) then "--smalt_s" else ""} \
      ~{if (s_malt_y) then "--smalt_y" else ""} \
      ~{if (s_malt_r) then "--smalt_r" else ""} \
      ~{if (number_threads_use) then "-n" else ""} \
      ~{if (set_defaults_essentiality) then "-e" else ""} \
      ~{if (verbose_debugging_output) then "-v" else ""}
  >>>
  parameter_meta {
    text_file_listing: ": text file listing fastq files with tradis tags attached"
    tag_search_set: ": tag to search for (optional.  If not set runs bwa in tagless mode with no filtering.)"
    reference_genome_fasta: ": reference genome in fasta format (.fa)"
    td: ": tag direction - 3 or 5 (optional. default = 3)"
    mm: ": number of mismatches allowed when matching tag (optional. default = 0)"
    mapping_quality_cutoff: ": mapping quality cutoff score (optional. default = 30)"
    custom_kmer_value_min: ": custom k-mer value (min seed length) (optional)"
    s_malt: ": use smalt rather than bwa as the mapper"
    s_malt_k: ": custom k-mer value for SMALT mapping (optional)"
    s_malt_s: ": custom step size for SMALT mapping (optional)"
    s_malt_y: ": custom y parameter for SMALT (optional. default = 0.96)"
    s_malt_r: ": custom r parameter for SMALT (optional. default = -1)"
    number_threads_use: ": number of threads to use for SMALT and samtools sort (optional. default = 1)"
    set_defaults_essentiality: ": set defaults for essentiality experiment (smalt_r = 0, -m = 0)"
    verbose_debugging_output: ": verbose debugging output"
  }
  output {
    File out_stdout = stdout()
  }
}