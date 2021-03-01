version 1.0

task Pmdtools {
  input {
    Boolean? adjusts_s
    Int? number
    String? chromosome
    String? require_mapq
    Int? read_length
    Int? maxlength
    Int? minlength
    Int? max_gc
    Int? ming_c
    String? require_base_q
    Boolean? deamination
    Boolean? udg_plus
    Boolean? ss
    Boolean? pm_dsp_rim
    Boolean? udg_minus
    Boolean? ecoli_cpg
    Boolean? ecoli
    Boolean? masks_s
    Boolean? leipzig_simple
    Boolean? no_cpg
    Boolean? first
    Int? range
    String? polymorphism_ancient
    String? polymorphism_contamination
    String? pm_dp_param
    String? pmd_constant
    Boolean? no_clips
    Boolean? no_indels
    Boolean? only_clips
    Boolean? only_deletions
    Boolean? only_insertions
    Boolean? no_deletions
    Boolean? no_insertions
    Boolean? not_reverse
    Boolean? print_ds
    Boolean? verbose
    Boolean? print_alignments
    String? mask_terminal_deamination_s
    String? mask_terminal_bases
    String? threshold
    String? upper_threshold
    String? perc_identity
    Boolean? adjust_base_q
    Boolean? adjust_base_q_all
    Boolean? dry
    File? sam_tools_path
    Boolean? base_composition
    Boolean? estimate
    String? estimate_base
    Boolean? platypus
    Boolean? writes_am_field
    Int? basic
    Boolean? terminal
    Boolean? stats
    String pm_dsp_rim_threshold
    String custom_terminus
    String refseq
  }
  command <<<
    pmdtools \
      ~{pm_dsp_rim_threshold} \
      ~{custom_terminus} \
      ~{refseq} \
      ~{if (adjusts_s) then "--adjustss" else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""} \
      ~{if defined(require_mapq) then ("--requiremapq " +  '"' + require_mapq + '"') else ""} \
      ~{if defined(read_length) then ("--readlength " +  '"' + read_length + '"') else ""} \
      ~{if defined(maxlength) then ("--maxlength " +  '"' + maxlength + '"') else ""} \
      ~{if defined(minlength) then ("--minlength " +  '"' + minlength + '"') else ""} \
      ~{if defined(max_gc) then ("--maxGC " +  '"' + max_gc + '"') else ""} \
      ~{if defined(ming_c) then ("--minGC " +  '"' + ming_c + '"') else ""} \
      ~{if defined(require_base_q) then ("--requirebaseq " +  '"' + require_base_q + '"') else ""} \
      ~{if (deamination) then "--deamination" else ""} \
      ~{if (udg_plus) then "--UDGplus" else ""} \
      ~{if (ss) then "--ss" else ""} \
      ~{if (pm_dsp_rim) then "--PMDSprim" else ""} \
      ~{if (udg_minus) then "--UDGminus" else ""} \
      ~{if (ecoli_cpg) then "--EcoliCpG" else ""} \
      ~{if (ecoli) then "--Ecoli" else ""} \
      ~{if (masks_s) then "--maskss" else ""} \
      ~{if (leipzig_simple) then "--Leipzigsimple" else ""} \
      ~{if (no_cpg) then "--noCpG" else ""} \
      ~{if (first) then "--first" else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{if defined(polymorphism_ancient) then ("--polymorphism_ancient " +  '"' + polymorphism_ancient + '"') else ""} \
      ~{if defined(polymorphism_contamination) then ("--polymorphism_contamination " +  '"' + polymorphism_contamination + '"') else ""} \
      ~{if defined(pm_dp_param) then ("--PMDpparam " +  '"' + pm_dp_param + '"') else ""} \
      ~{if defined(pmd_constant) then ("--PMDconstant " +  '"' + pmd_constant + '"') else ""} \
      ~{if (no_clips) then "--noclips" else ""} \
      ~{if (no_indels) then "--noindels" else ""} \
      ~{if (only_clips) then "--onlyclips" else ""} \
      ~{if (only_deletions) then "--onlydeletions" else ""} \
      ~{if (only_insertions) then "--onlyinsertions" else ""} \
      ~{if (no_deletions) then "--nodeletions" else ""} \
      ~{if (no_insertions) then "--noinsertions" else ""} \
      ~{if (not_reverse) then "--notreverse" else ""} \
      ~{if (print_ds) then "--printDS" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (print_alignments) then "--printalignments" else ""} \
      ~{if defined(mask_terminal_deamination_s) then ("--maskterminaldeaminations " +  '"' + mask_terminal_deamination_s + '"') else ""} \
      ~{if defined(mask_terminal_bases) then ("--maskterminalbases " +  '"' + mask_terminal_bases + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(upper_threshold) then ("--upperthreshold " +  '"' + upper_threshold + '"') else ""} \
      ~{if defined(perc_identity) then ("--perc_identity " +  '"' + perc_identity + '"') else ""} \
      ~{if (adjust_base_q) then "--adjustbaseq" else ""} \
      ~{if (adjust_base_q_all) then "--adjustbaseq_all" else ""} \
      ~{if (dry) then "--dry" else ""} \
      ~{if defined(sam_tools_path) then ("--samtoolspath " +  '"' + sam_tools_path + '"') else ""} \
      ~{if (base_composition) then "--basecomposition" else ""} \
      ~{if (estimate) then "--estimate" else ""} \
      ~{if defined(estimate_base) then ("--estimatebase " +  '"' + estimate_base + '"') else ""} \
      ~{if (platypus) then "--platypus" else ""} \
      ~{if (writes_am_field) then "--writesamfield" else ""} \
      ~{if defined(basic) then ("--basic " +  '"' + basic + '"') else ""} \
      ~{if (terminal) then "--terminal" else ""} \
      ~{if (stats) then "--stats" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    adjusts_s: "strand orientation aware penalization of base\\nqualities for single stranded libraries (use with\\n--CpG for udg-treated ss libs)"
    number: "stop after these many reads have been processed"
    chromosome: "only process data from this chromosome"
    require_mapq: "only process sequences with mapping quality at least\\nthis great"
    read_length: "only process sequences with this read length"
    maxlength: "only process sequences with max this read length"
    minlength: "only process sequences with min this read length"
    max_gc: "only process sequences with max this GC content of the\\naligning reference sequence"
    ming_c: "only process sequences with min this GC content of the\\naligning reference sequence"
    require_base_q: "only process bases with base quality at least this\\ngreat"
    deamination: "output base frequencies in the read at positions where\\nthere are C or G in the reference"
    udg_plus: "only use Cs and Gs in CpG context"
    ss: "single stranded"
    pm_dsp_rim: "PMDSprim"
    udg_minus: "use all bases (placeholder)"
    ecoli_cpg: "Ecoli CpG (first 5' position and two 3' positions and\\nCpG context)"
    ecoli: "Ecoli (first 5' position and two 3' positions only)"
    masks_s: "mask to lower case bases where ref is C (taking strand\\ninto account)"
    leipzig_simple: "Leipzigsimple"
    no_cpg: "dont use Cs and Gs in CpG context"
    first: "outputs the deamination rate at the first position\\nonly, but with a standard error"
    range: "output deamination patterns for this many positions\\nfrom the sequence terminus (default=30)"
    polymorphism_ancient: "True biological polymorphism between the ancient\\nindividual and the reference sequence"
    polymorphism_contamination: "True biological polymorphism between the contaminants\\nand the reference sequence"
    pm_dp_param: "parameter p in geometric probability distribution of\\nPMD"
    pmd_constant: "constant C in geometric probability distribution of\\nPMD"
    no_clips: "no clips"
    no_indels: "no indels"
    only_clips: "only clips"
    only_deletions: "only deletions"
    only_insertions: "only insertions"
    no_deletions: "no deletions"
    no_insertions: "no insertions"
    not_reverse: "no reverse complement alignments"
    print_ds: "print PMD scores"
    verbose: "verbose"
    print_alignments: "print human readable alignments"
    mask_terminal_deamination_s: "mask terminal deaminations"
    mask_terminal_bases: "mask terminal bases"
    threshold: "only output sequences with PMD score above this\\nthreshold"
    upper_threshold: "only output sequences with PMD score below this\\nthreshold"
    perc_identity: "only output sequences with percent identity above this\\nthreshold"
    adjust_base_q: "apply PMD-aware adjustment of base quality scores\\nspecific to C>T and G>A mismatches to the reference"
    adjust_base_q_all: "apply PMD-aware adjustment of base quality scores\\nregardless of observed bases"
    dry: "print SAM input without any filters"
    sam_tools_path: "full path to samtools"
    base_composition: "basecomposition"
    estimate: "two-terminus estimate of contamination"
    estimate_base: "position of base used fortwo-terminus estimate of\\ncontamination"
    platypus: "output big list of base frequencies for platypus"
    writes_am_field: "add 'DS:Z:<PMDS>' field to SAM output, will overwrite\\nif already present"
    basic: "only output reads with a C>T mismatch this many\\nbasepairs from the 5' end"
    terminal: "only output reads with a C>T mismatch in either 3' or\\n5' end"
    stats: "output summarizing statistics to stderr"
    pm_dsp_rim_threshold: "--UDGhalf             only use Cs and Gs in CpG context, the first and last"
    custom_terminus: "--flagss              flag SNPs (taking strand into account)"
    refseq: "--header              output the SAM header"
  }
  output {
    File out_stdout = stdout()
  }
}