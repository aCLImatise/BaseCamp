version 1.0

task Pbwt {
  input {
    File? log
    Boolean? check
    Boolean? stats
    File? read
    File? read_sites
    File? read_samples
    File? read_missing
    File? read_dosage
    File? read_reverse
    String? read_all
    File? read_vcf_gt
    File? read_vc_fpl
    File? read_macs
    File? read_vcf_q
    File? read_gen
    File? read_hap
    File? read_hap_legend
    File? read_phase
    String? checkpoint
    File? merge
    File? write
    File? write_sites
    File? write_samples
    File? write_missing
    File? write_dosage
    File? write_reverse
    String? write_all
    String? write_impute_ref
    File? write_impute_haps_g
    File? write_phase
    File? write_transpose_haplotypes
    File? haps
    File? write_gen
    File? write_vcf_gz
    File? reference_fast_a
    String? subsites
    String? subsample
    String? subrange
    String? corrupt_sites
    String? corrupt_samples
    Int? copy_samples
    File? select_sites
    File? remove_sites
    File? select_samples
    String? long_within
    Boolean? max_within
    File? match_naive
    File? match_indexed
    File? match_dynamic
    String? impute_explore
    String? phase
    String? reference_phase
    Int? reference_impute
    String? genotype_compare
    Boolean? impute_missing
    Float? fit_alphabet_a
    String? ll_copy_model
    File? paint
    File? paint_sparse
    File? pretty
    Boolean? sfs
    File? ref_freq
    File? site_info
    Boolean? build_reverse
    File? read_genetic_map
    Boolean? four_haps_stats
  }
  command <<<
    pbwt \
      ~{if defined(log) then ("-log " +  '"' + log + '"') else ""} \
      ~{if (check) then "-check" else ""} \
      ~{if (stats) then "-stats" else ""} \
      ~{if defined(read) then ("-read " +  '"' + read + '"') else ""} \
      ~{if defined(read_sites) then ("-readSites " +  '"' + read_sites + '"') else ""} \
      ~{if defined(read_samples) then ("-readSamples " +  '"' + read_samples + '"') else ""} \
      ~{if defined(read_missing) then ("-readMissing " +  '"' + read_missing + '"') else ""} \
      ~{if defined(read_dosage) then ("-readDosage " +  '"' + read_dosage + '"') else ""} \
      ~{if defined(read_reverse) then ("-readReverse " +  '"' + read_reverse + '"') else ""} \
      ~{if defined(read_all) then ("-readAll " +  '"' + read_all + '"') else ""} \
      ~{if defined(read_vcf_gt) then ("-readVcfGT " +  '"' + read_vcf_gt + '"') else ""} \
      ~{if defined(read_vc_fpl) then ("-readVcfPL " +  '"' + read_vc_fpl + '"') else ""} \
      ~{if defined(read_macs) then ("-readMacs " +  '"' + read_macs + '"') else ""} \
      ~{if defined(read_vcf_q) then ("-readVcfq " +  '"' + read_vcf_q + '"') else ""} \
      ~{if defined(read_gen) then ("-readGen " +  '"' + read_gen + '"') else ""} \
      ~{if defined(read_hap) then ("-readHap " +  '"' + read_hap + '"') else ""} \
      ~{if defined(read_hap_legend) then ("-readHapLegend " +  '"' + read_hap_legend + '"') else ""} \
      ~{if defined(read_phase) then ("-readPhase " +  '"' + read_phase + '"') else ""} \
      ~{if defined(checkpoint) then ("-checkpoint " +  '"' + checkpoint + '"') else ""} \
      ~{if defined(merge) then ("-merge " +  '"' + merge + '"') else ""} \
      ~{if defined(write) then ("-write " +  '"' + write + '"') else ""} \
      ~{if defined(write_sites) then ("-writeSites " +  '"' + write_sites + '"') else ""} \
      ~{if defined(write_samples) then ("-writeSamples " +  '"' + write_samples + '"') else ""} \
      ~{if defined(write_missing) then ("-writeMissing " +  '"' + write_missing + '"') else ""} \
      ~{if defined(write_dosage) then ("-writeDosage " +  '"' + write_dosage + '"') else ""} \
      ~{if defined(write_reverse) then ("-writeReverse " +  '"' + write_reverse + '"') else ""} \
      ~{if defined(write_all) then ("-writeAll " +  '"' + write_all + '"') else ""} \
      ~{if defined(write_impute_ref) then ("-writeImputeRef " +  '"' + write_impute_ref + '"') else ""} \
      ~{if defined(write_impute_haps_g) then ("-writeImputeHapsG " +  '"' + write_impute_haps_g + '"') else ""} \
      ~{if defined(write_phase) then ("-writePhase " +  '"' + write_phase + '"') else ""} \
      ~{if defined(write_transpose_haplotypes) then ("-writeTransposeHaplotypes " +  '"' + write_transpose_haplotypes + '"') else ""} \
      ~{if defined(haps) then ("-haps " +  '"' + haps + '"') else ""} \
      ~{if defined(write_gen) then ("-writeGen " +  '"' + write_gen + '"') else ""} \
      ~{if defined(write_vcf_gz) then ("-writeVcfGz " +  '"' + write_vcf_gz + '"') else ""} \
      ~{if defined(reference_fast_a) then ("-referenceFasta " +  '"' + reference_fast_a + '"') else ""} \
      ~{if defined(subsites) then ("-subsites " +  '"' + subsites + '"') else ""} \
      ~{if defined(subsample) then ("-subsample " +  '"' + subsample + '"') else ""} \
      ~{if defined(subrange) then ("-subrange " +  '"' + subrange + '"') else ""} \
      ~{if defined(corrupt_sites) then ("-corruptSites " +  '"' + corrupt_sites + '"') else ""} \
      ~{if defined(corrupt_samples) then ("-corruptSamples " +  '"' + corrupt_samples + '"') else ""} \
      ~{if defined(copy_samples) then ("-copySamples " +  '"' + copy_samples + '"') else ""} \
      ~{if defined(select_sites) then ("-selectSites " +  '"' + select_sites + '"') else ""} \
      ~{if defined(remove_sites) then ("-removeSites " +  '"' + remove_sites + '"') else ""} \
      ~{if defined(select_samples) then ("-selectSamples " +  '"' + select_samples + '"') else ""} \
      ~{if defined(long_within) then ("-longWithin " +  '"' + long_within + '"') else ""} \
      ~{if (max_within) then "-maxWithin" else ""} \
      ~{if defined(match_naive) then ("-matchNaive " +  '"' + match_naive + '"') else ""} \
      ~{if defined(match_indexed) then ("-matchIndexed " +  '"' + match_indexed + '"') else ""} \
      ~{if defined(match_dynamic) then ("-matchDynamic " +  '"' + match_dynamic + '"') else ""} \
      ~{if defined(impute_explore) then ("-imputeExplore " +  '"' + impute_explore + '"') else ""} \
      ~{if defined(phase) then ("-phase " +  '"' + phase + '"') else ""} \
      ~{if defined(reference_phase) then ("-referencePhase " +  '"' + reference_phase + '"') else ""} \
      ~{if defined(reference_impute) then ("-referenceImpute " +  '"' + reference_impute + '"') else ""} \
      ~{if defined(genotype_compare) then ("-genotypeCompare " +  '"' + genotype_compare + '"') else ""} \
      ~{if (impute_missing) then "-imputeMissing" else ""} \
      ~{if defined(fit_alphabet_a) then ("-fitAlphaBeta " +  '"' + fit_alphabet_a + '"') else ""} \
      ~{if defined(ll_copy_model) then ("-llCopyModel " +  '"' + ll_copy_model + '"') else ""} \
      ~{if defined(paint) then ("-paint " +  '"' + paint + '"') else ""} \
      ~{if defined(paint_sparse) then ("-paintSparse " +  '"' + paint_sparse + '"') else ""} \
      ~{if defined(pretty) then ("-pretty " +  '"' + pretty + '"') else ""} \
      ~{if (sfs) then "-sfs" else ""} \
      ~{if defined(ref_freq) then ("-refFreq " +  '"' + ref_freq + '"') else ""} \
      ~{if defined(site_info) then ("-siteInfo " +  '"' + site_info + '"') else ""} \
      ~{if (build_reverse) then "-buildReverse" else ""} \
      ~{if defined(read_genetic_map) then ("-readGeneticMap " +  '"' + read_genetic_map + '"') else ""} \
      ~{if (four_haps_stats) then "-4hapsStats" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    log: "log file; '-' for stderr"
    check: "do various checks"
    stats: "print stats depending on commands; writes to stdout"
    read: "read pbwt file; '-' for stdin"
    read_sites: "read sites file; '-' for stdin"
    read_samples: "read samples file; '-' for stdin"
    read_missing: "read missing file; '-' for stdin"
    read_dosage: "read dosage file; '-' for stdin"
    read_reverse: "read reverse file; '-' for stdin"
    read_all: "read .pbwt and if present .sites, .samples, .missing - note not by default dosage"
    read_vcf_gt: "read GTs from vcf or bcf file; '-' for stdin vcf only ; biallelic sites only - require diploid!"
    read_vc_fpl: "read PLs from vcf or bcf file; '-' for stdin vcf only ; biallelic sites only - require diploid!"
    read_macs: "read MaCS output file; '-' for stdin"
    read_vcf_q: "read VCFQ file; '-' for stdin"
    read_gen: "<chrom>   read impute2 gen file - must set chrom"
    read_hap: "<chrom>   read impute2 hap file - must set chrom"
    read_hap_legend: "<legend_file> <chrom>\\nread impute2 hap and legend file - must set chrom"
    read_phase: "read Li and Stephens phase file"
    checkpoint: "checkpoint every n sites while reading"
    merge: "...         merge two or more pbwt files"
    write: "write pbwt file; '-' for stdout"
    write_sites: "write sites file; '-' for stdout"
    write_samples: "write samples file; '-' for stdout"
    write_missing: "write missing file; '-' for stdout"
    write_dosage: "write missing file; '-' for stdout"
    write_reverse: "write reverse file; '-' for stdout"
    write_all: "write .pbwt and if present .sites, .samples, .missing, .dosage"
    write_impute_ref: "write .imputeHaps and .imputeLegend"
    write_impute_haps_g: "write haplotype file for IMPUTE -known_haps_g"
    write_phase: "write FineSTRUCTURE/ChromoPainter input format (Impute/ShapeIT output format) phase file"
    write_transpose_haplotypes: "write transposed haplotype file (one hap per row); '-' for stdout"
    haps: "write haplotype file; '-' for stdout"
    write_gen: "write impute2 gen file; '-' for stdout"
    write_vcf_gz: "write VCF or BCF; uncompressed or bgzip (Gz) compressed file; '-' for stdout"
    reference_fast_a: "reference fasta filename for VCF/BCF writing (optional)"
    subsites: "<frac>   subsample <frac> sites with AF > <fmin>"
    subsample: "<n>    subsample <n> samples from index <start>"
    subrange: "<end>   cut down to sites in [start,end)"
    corrupt_sites: "<q>     randomise fraction q of positions at fraction p of sites, according to site frequency"
    corrupt_samples: "<q>   randomise fraction q of positions for fraction p of samples, according to site frequency"
    copy_samples: "<len>    make M new samples copied from current haplotypes with mean switch length len"
    select_sites: "select sites as in sites file"
    remove_sites: "remove sites as in sites file"
    select_samples: "select samples as in samples file"
    long_within: "find matches within set longer than L"
    max_within: "find maximal matches within set"
    match_naive: "maximal match seqs in pbwt file to reference"
    match_indexed: "maximal match seqs in pbwt file to reference"
    match_dynamic: "maximal match seqs in pbwt file to reference"
    impute_explore: "n'th impute test"
    phase: "phase with n sparse pbwts"
    reference_phase: "phase current pbwt against reference whose root name is the argument - only keeps shared sites"
    reference_impute: "[nSparse=1] [fSparse=1]  impute current pbwt into reference whose root name is the first argument;\\ndoes not rephase either pbwt; optional nSparse > 1 also does sparse matching, fSparse is relative weight"
    genotype_compare: "compare genotypes with those from reference whose root name is the argument - need compatible sites"
    impute_missing: "impute data marked as missing"
    fit_alphabet_a: "fit probabilistic model 1..3"
    ll_copy_model: "<rho>  log likelihood of Li-Stephens model"
    paint: "[n] output painting co-ancestry matrix to fileroot, optionally specififying the number per region"
    paint_sparse: "[n] output sparse painting to fileroot, optionally specififying the number per region"
    pretty: "<k>        pretty plot at site k"
    sfs: "print site frequency spectrum (log scale) - also writes sites.freq file"
    ref_freq: "read site frequency information into the refFreq field of current sites"
    site_info: "<kmin> <kmax> export PBWT information at sites with allele count kmin <= k < kmax"
    build_reverse: "build reverse pbwt"
    read_genetic_map: "read Oxford format genetic map file"
    four_haps_stats: "mu:rho 4 hap test stats"
  }
  output {
    File out_stdout = stdout()
    File out_read_macs = "${in_read_macs}"
  }
}