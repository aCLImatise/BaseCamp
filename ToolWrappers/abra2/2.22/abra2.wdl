version 1.0

task Abra2 {
  input {
    Int? am_q
    Boolean? ca
    File? cl
    Boolean? cons
    Boolean? contigs
    Int? dist
    Boolean? gc
    Boolean? gkl
    Boolean? gtf
    Boolean? in
    Boolean? in_vcf
    Boolean? index
    Boolean? junctions
    Boolean? keep_tmp
    Boolean? km_er
    Boolean? log
    Int? mac
    Int? mad
    Boolean? mapq
    Boolean? max_n
    Boolean? mbq
    Boolean? mcl
    Int? mcr
    Int? mer
    Int? mmr
    Int? mnf
    Float? mrn
    Int? mrr
    Int? msr
    Boolean? no_edge_ci
    Boolean? no_ndn
    Boolean? no_sort
    File? out
    Float? rcf
    Boolean? ref
    Boolean? sa
    Boolean? sc
    Boolean? sga
    Boolean? single
    Boolean? skip
    Boolean? sobs
    Boolean? ssc
    Boolean? sua
    Boolean? target_km_ers
    Boolean? targets
    Int? threads
    Boolean? tmpdir
    Boolean? u_jac
    Boolean? und_up
    Boolean? ws
  }
  command <<<
    abra2 \
      ~{if defined(am_q) then ("--amq " +  '"' + am_q + '"') else ""} \
      ~{if (ca) then "--ca" else ""} \
      ~{if defined(cl) then ("--cl " +  '"' + cl + '"') else ""} \
      ~{if (cons) then "--cons" else ""} \
      ~{if (contigs) then "--contigs" else ""} \
      ~{if defined(dist) then ("--dist " +  '"' + dist + '"') else ""} \
      ~{if (gc) then "--gc" else ""} \
      ~{if (gkl) then "--gkl" else ""} \
      ~{if (gtf) then "--gtf" else ""} \
      ~{if (in) then "--in" else ""} \
      ~{if (in_vcf) then "--in-vcf" else ""} \
      ~{if (index) then "--index" else ""} \
      ~{if (junctions) then "--junctions" else ""} \
      ~{if (keep_tmp) then "--keep-tmp" else ""} \
      ~{if (km_er) then "--kmer" else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if defined(mac) then ("--mac " +  '"' + mac + '"') else ""} \
      ~{if defined(mad) then ("--mad " +  '"' + mad + '"') else ""} \
      ~{if (mapq) then "--mapq" else ""} \
      ~{if (max_n) then "--maxn" else ""} \
      ~{if (mbq) then "--mbq" else ""} \
      ~{if (mcl) then "--mcl" else ""} \
      ~{if defined(mcr) then ("--mcr " +  '"' + mcr + '"') else ""} \
      ~{if defined(mer) then ("--mer " +  '"' + mer + '"') else ""} \
      ~{if defined(mmr) then ("--mmr " +  '"' + mmr + '"') else ""} \
      ~{if defined(mnf) then ("--mnf " +  '"' + mnf + '"') else ""} \
      ~{if defined(mrn) then ("--mrn " +  '"' + mrn + '"') else ""} \
      ~{if defined(mrr) then ("--mrr " +  '"' + mrr + '"') else ""} \
      ~{if defined(msr) then ("--msr " +  '"' + msr + '"') else ""} \
      ~{if (no_edge_ci) then "--no-edge-ci" else ""} \
      ~{if (no_ndn) then "--no-ndn" else ""} \
      ~{if (no_sort) then "--nosort" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if defined(rcf) then ("--rcf " +  '"' + rcf + '"') else ""} \
      ~{if (ref) then "--ref" else ""} \
      ~{if (sa) then "--sa" else ""} \
      ~{if (sc) then "--sc" else ""} \
      ~{if (sga) then "--sga" else ""} \
      ~{if (single) then "--single" else ""} \
      ~{if (skip) then "--skip" else ""} \
      ~{if (sobs) then "--sobs" else ""} \
      ~{if (ssc) then "--ssc" else ""} \
      ~{if (sua) then "--sua" else ""} \
      ~{if (target_km_ers) then "--target-kmers" else ""} \
      ~{if (targets) then "--targets" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (tmpdir) then "--tmpdir" else ""} \
      ~{if (u_jac) then "--ujac" else ""} \
      ~{if (und_up) then "--undup" else ""} \
      ~{if (ws) then "--ws" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    am_q: "Set mapq for alignments that map\\nequally well to reference and an\\nABRA generated contig.  default of\\n-1 disables (default: -1)"
    ca: "Contig anchor [M_bases_at_contig_edge,\\nmax_mismatches_near_edge] (default:\\n10,2)"
    cl: "Compression level of output bam file\\n(s) (default: 5)"
    cons: "Use positional consensus sequence when\\naligning high quality soft clipping"
    contigs: "Optional file to which assembled\\ncontigs are written"
    dist: "Max read move distance (default: 1000)"
    gc: "If specified, only reprocess regions\\nthat contain at least one contig\\ncontaining an indel or splice\\n(experimental)"
    gkl: "If specified, use the GKL Intel\\nDeflater."
    gtf: "GTF file defining exons and transcripts"
    in: "Required list of input sam or bam file\\n(s) separated by comma"
    in_vcf: "VCF containing known (or suspected)\\nvariant sites.  Very large files\\nshould be avoided."
    index: "Enable BAM index generation when\\noutputting sorted alignments (may\\nrequire additonal memory)"
    junctions: "Splice junctions definition file"
    keep_tmp: "Do not delete the temporary directory"
    km_er: "Optional assembly kmer size(delimit\\nwith commas if multiple sizes\\nspecified)"
    log: "Logging level (trace,debug,info,warn,\\nerror) (default: info)"
    mac: "Max assembled contigs (default: 64)"
    mad: "Regions with average depth exceeding\\nthis value will be downsampled\\n(default: 1000)"
    mapq: "[Integer]                        Minimum mapping quality for a read to\\nbe used in assembly and be eligible\\nfor realignment (default: 20)"
    max_n: "[Integer]                        Maximum pre-pruned nodes in regional\\nassembly (default: 150000)"
    mbq: "[Integer]                         Minimum base quality for inclusion in\\nassembly.  This value is compared\\nagainst the sum of base qualities\\nper kmer position (default: 20)"
    mcl: "[Integer]                         Assembly minimum contig length\\n(default: -1)"
    mcr: "Max number of cached reads per sample\\nper thread (default: 1000000)"
    mer: "Min edge pruning ratio.  Default value\\nis appropriate for relatively\\nsensitive somatic cases.  May be\\nincreased for improved speed in\\ngermline only cases. (default: 0.01)"
    mmr: "Max allowed mismatch rate when mapping\\nreads back to contigs (default: 0.05)"
    mnf: "Assembly minimum node frequency\\n(default: 1)"
    mrn: "Reads with noise score exceeding this\\nvalue are not remapped.\\nnumMismatches+(numIndels*2) <\\nreadLength*mnr (default: 0.1)"
    mrr: "Regions containing more reads than\\nthis value are not processed.  Use\\n-1 to disable. (default: 1000000)"
    msr: "Max reads to keep in memory per sample\\nduring the sort phase.  When this\\nvalue is exceeded, sort spills to\\ndisk (default: 1000000)"
    no_edge_ci: "If specified, do not update alignments\\nfor reads that have a complex indel\\nat the read edge.  i.e. Do not allow\\nalignments like: 90M10D10I"
    no_ndn: "If specified, do not allow adjacent N-\\nD-N cigar elements"
    no_sort: "Do not attempt to sort final output"
    out: "Required list of output sam or bam file\\n(s) separated by comma"
    rcf: "Minimum read candidate fraction for\\ntriggering assembly (default: 0.01)"
    ref: "Genome reference location"
    sa: "Skip assembly"
    sc: "Soft clip contig args [max_contigs,\\nmin_base_qual,frac_high_qual_bases,\\nmin_soft_clip_len] (default:\\n16,13,80,15)"
    sga: "Scoring used for contig alignments\\n(match, mismatch_penalty,\\ngap_open_penalty,\\ngap_extend_penalty) (default:\\n8,32,48,1)"
    single: "Input is single end"
    skip: "If no target specified, skip\\nrealignment of chromosomes matching\\nspecified regex.  Skipped reads are\\noutput without modification.\\nSpecify none to disable. (default:\\nGL.*|hs37d5|chr.*random|chrUn.\\n*|chrEBV|CMV|HBV|HCV.*|HIV.\\n*|KSHV|HTLV.*|MCV|SV40|HPV.*)"
    sobs: "Do not use observed indels in original\\nalignments to generate contigs"
    ssc: "Skip usage of soft clipped sequences\\nas putative contigs"
    sua: "Do not use unmapped reads anchored by\\nmate to trigger assembly.  These\\nreads are still eligible to\\ncontribute to assembly"
    target_km_ers: "BED-like file containing target\\nregions with per region kmer sizes\\nin 4th column"
    targets: "BED file containing target regions"
    threads: "Number of threads (default: 4)"
    tmpdir: "Set the temp directory (overrides java.\\nio.tmpdir)"
    u_jac: "If specified, use junction permuations\\nas contigs (Experimental - may use\\nexcessive memory and compute times)"
    und_up: "Unset duplicate flag"
    ws: "Processing window size and overlap\\n(size,overlap) (default: 400,200)"
  }
  output {
    File out_stdout = stdout()
    File out_cl = "${in_cl}"
    File out_out = "${in_out}"
  }
}