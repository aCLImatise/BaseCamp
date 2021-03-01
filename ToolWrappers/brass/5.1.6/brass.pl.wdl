version 1.0

task Brasspl {
  input {
    Directory? outdir
    Boolean? tumour
    Boolean? normal
    Boolean? depth
    Boolean? genome
    Boolean? species
    Boolean? assembly
    Boolean? protocol
    Boolean? g_cache
    Boolean? viral
    Boolean? microbe
    Boolean? gc_bins
    Boolean? cent_tel
    Boolean? min_cn
    Boolean? repeats
    Boolean? samp_stat
    Boolean? platform
    Boolean? tum_name
    Boolean? norm_name
    Boolean? filter
    Boolean? no_clean
    Boolean? cpus
    Boolean? process
    Boolean? index
    Boolean? limit
    Boolean? man
    Boolean? version
    String optional
  }
  command <<<
    brass_pl \
      ~{optional} \
      ~{if (outdir) then "-outdir" else ""} \
      ~{if (tumour) then "-tumour" else ""} \
      ~{if (normal) then "-normal" else ""} \
      ~{if (depth) then "-depth" else ""} \
      ~{if (genome) then "-genome" else ""} \
      ~{if (species) then "-species" else ""} \
      ~{if (assembly) then "-assembly" else ""} \
      ~{if (protocol) then "-protocol" else ""} \
      ~{if (g_cache) then "-g_cache" else ""} \
      ~{if (viral) then "-viral" else ""} \
      ~{if (microbe) then "-microbe" else ""} \
      ~{if (gc_bins) then "-gcbins" else ""} \
      ~{if (cent_tel) then "-centtel" else ""} \
      ~{if (min_cn) then "-mincn" else ""} \
      ~{if (repeats) then "-repeats" else ""} \
      ~{if (samp_stat) then "-sampstat" else ""} \
      ~{if (platform) then "-platform" else ""} \
      ~{if (tum_name) then "-tum_name" else ""} \
      ~{if (norm_name) then "-norm_name" else ""} \
      ~{if (filter) then "-filter" else ""} \
      ~{if (no_clean) then "-noclean" else ""} \
      ~{if (cpus) then "-cpus" else ""} \
      ~{if (process) then "-process" else ""} \
      ~{if (index) then "-index" else ""} \
      ~{if (limit) then "-limit" else ""} \
      ~{if (man) then "-man" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outdir: "Folder to output result to."
    tumour: "Tumour BAM file"
    normal: "Normal BAM file"
    depth: "Regions of excessive sequencing depth to be ignored"
    genome: "Genome fasta file"
    species: "Species name"
    assembly: "Assembly name"
    protocol: "Sequencing protocol (WGS|WXS|RNA)"
    g_cache: "Genome cache file."
    viral: "Virus sequences from NCBI"
    microbe: "Microbe sequences file prefix from NCBI, please exclude '.N.fa.2bit'"
    gc_bins: "5 column bed coord file, col 4 number of non-N bases, col 5 GC fraction."
    cent_tel: "TSV file of usable regions of the chromosome\\nExample in perl/share/Rdefault/"
    min_cn: "Minimum CN change for copynumber_flag [0.3]."
    repeats: "Repeat file, see 'make-repeat-file' (legacy)"
    samp_stat: "ASCAT sample statistics file or file containing\\nNormalContamination 0.XXXXX [0.25]\\nPloidy X.XXX [2.0]"
    platform: "Sequencing platform (when not defined in BAM header)"
    tum_name: "Tumour sample name (when not defined in BAM header)"
    norm_name: "Normal sample name (when not defined in BAM header)"
    filter: "bgzip tabix-ed normal panel groups file"
    no_clean: "Don't tidyup the processing areas."
    cpus: "Number of cores to use. [1]\\n- recommend max 2 during 'input' process."
    process: "Only process this step then exit, optionally set -index"
    index: "Optionally restrict '-p' to single job"
    limit: "Define with -p and -i, see below"
    man: "Full documentation."
    version: "Version"
    optional: "-mingroup  -j   Minimum reads to call group [2]."
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}