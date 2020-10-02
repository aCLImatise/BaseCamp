version 1.0

task Flye {
  input {
    Boolean? nano_corr
    Array[File] pac_bio_raw
    Array[File] pac_bio_corr
    Array[File] pac_bio_hifi
    Array[File] nano_raw
    Array[File] subassemblies
    Int? genome_size
    Directory? out_dir
    Int? threads
    Int? iterations
    Int? min_overlap
    Int? asm_coverage
    Boolean? plasmids
    Boolean? metagenome_uneven_coverage
    Boolean? keep_haplotypes
    Boolean? trestle
    File? polish_target
    Boolean? resume
    String? resume_from
    String? stop_after
    Boolean? debug
  }
  command <<<
    flye \
      ~{if (nano_corr) then "--nano-corr" else ""} \
      ~{if defined(pac_bio_raw) then ("--pacbio-raw " +  '"' + pac_bio_raw + '"') else ""} \
      ~{if defined(pac_bio_corr) then ("--pacbio-corr " +  '"' + pac_bio_corr + '"') else ""} \
      ~{if defined(pac_bio_hifi) then ("--pacbio-hifi " +  '"' + pac_bio_hifi + '"') else ""} \
      ~{if defined(nano_raw) then ("--nano-raw " +  '"' + nano_raw + '"') else ""} \
      ~{if defined(subassemblies) then ("--subassemblies " +  '"' + subassemblies + '"') else ""} \
      ~{if defined(genome_size) then ("--genome-size " +  '"' + genome_size + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(asm_coverage) then ("--asm-coverage " +  '"' + asm_coverage + '"') else ""} \
      ~{if (plasmids) then "--plasmids" else ""} \
      ~{if (metagenome_uneven_coverage) then "--meta" else ""} \
      ~{if (keep_haplotypes) then "--keep-haplotypes" else ""} \
      ~{if (trestle) then "--trestle" else ""} \
      ~{if defined(polish_target) then ("--polish-target " +  '"' + polish_target + '"') else ""} \
      ~{if (resume) then "--resume" else ""} \
      ~{if defined(resume_from) then ("--resume-from " +  '"' + resume_from + '"') else ""} \
      ~{if defined(stop_after) then ("--stop-after " +  '"' + stop_after + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    nano_corr: "| --subassemblies) file1 [file_2 ...]\\n--genome-size SIZE --out-dir PATH\\n[--threads int] [--iterations int] [--min-overlap int]\\n[--meta] [--plasmids] [--trestle] [--polish-target]\\n[--keep-haplotypes] [--debug] [--version] [--help]\\n[--resume] [--resume-from] [--stop-after]"
    pac_bio_raw: "PacBio raw reads"
    pac_bio_corr: "PacBio corrected reads"
    pac_bio_hifi: "PacBio HiFi reads"
    nano_raw: "ONT raw reads"
    subassemblies: "high-quality contigs input"
    genome_size: "estimated genome size (for example, 5m or 2.6g)"
    out_dir: "Output directory"
    threads: "number of parallel threads [1]"
    iterations: "number of polishing iterations [1]"
    min_overlap: "minimum overlap between reads [auto]"
    asm_coverage: "reduced coverage for initial disjointig assembly [not\\nset]"
    plasmids: "rescue short unassembled plasmids"
    metagenome_uneven_coverage: "metagenome / uneven coverage mode"
    keep_haplotypes: "do not collapse alternative haplotypes"
    trestle: "enable Trestle [disabled]"
    polish_target: "run polisher on the target sequence"
    resume: "resume from the last completed stage"
    resume_from: "resume from a custom stage"
    stop_after: "stop after the specified stage completed"
    debug: "enable debug output"
  }
  output {
    File out_stdout = stdout()
    Directory out_out_dir = "${in_out_dir}"
  }
}