version 1.0

task Flye {
  input {
    Array[File] pac_bio_raw
    Array[File] pac_bio_corr
    Array[File] pac_bio_hifi
    Array[File] nano_raw
    Array[File] nano_corr
    Array[File] subassemblies
    Int? genome_size
    File? out_dir
    Int? threads
    Int? iterations
    Int? min_overlap
    Int? asm_coverage
    Boolean? plasmids
    Boolean? metagenome_uneven_mode
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
      ~{if defined(pac_bio_raw) then ("--pacbio-raw " +  '"' + pac_bio_raw + '"') else ""} \
      ~{if defined(pac_bio_corr) then ("--pacbio-corr " +  '"' + pac_bio_corr + '"') else ""} \
      ~{if defined(pac_bio_hifi) then ("--pacbio-hifi " +  '"' + pac_bio_hifi + '"') else ""} \
      ~{if defined(nano_raw) then ("--nano-raw " +  '"' + nano_raw + '"') else ""} \
      ~{if defined(nano_corr) then ("--nano-corr " +  '"' + nano_corr + '"') else ""} \
      ~{if defined(subassemblies) then ("--subassemblies " +  '"' + subassemblies + '"') else ""} \
      ~{if defined(genome_size) then ("--genome-size " +  '"' + genome_size + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(asm_coverage) then ("--asm-coverage " +  '"' + asm_coverage + '"') else ""} \
      ~{true="--plasmids" false="" plasmids} \
      ~{true="--meta" false="" metagenome_uneven_mode} \
      ~{true="--keep-haplotypes" false="" keep_haplotypes} \
      ~{true="--trestle" false="" trestle} \
      ~{if defined(polish_target) then ("--polish-target " +  '"' + polish_target + '"') else ""} \
      ~{true="--resume" false="" resume} \
      ~{if defined(resume_from) then ("--resume-from " +  '"' + resume_from + '"') else ""} \
      ~{if defined(stop_after) then ("--stop-after " +  '"' + stop_after + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    pac_bio_raw: "PacBio raw reads"
    pac_bio_corr: "PacBio corrected reads"
    pac_bio_hifi: "PacBio HiFi reads"
    nano_raw: "ONT raw reads"
    nano_corr: "ONT corrected reads"
    subassemblies: "high-quality contigs input"
    genome_size: "estimated genome size (for example, 5m or 2.6g)"
    out_dir: "Output directory"
    threads: "number of parallel threads [1]"
    iterations: "number of polishing iterations [1]"
    min_overlap: "minimum overlap between reads [auto]"
    asm_coverage: "reduced coverage for initial disjointig assembly [not set]"
    plasmids: "rescue short unassembled plasmids"
    metagenome_uneven_mode: "metagenome / uneven coverage mode"
    keep_haplotypes: "do not collapse alternative haplotypes"
    trestle: "enable Trestle [disabled]"
    polish_target: "run polisher on the target sequence"
    resume: "resume from the last completed stage"
    resume_from: "resume from a custom stage"
    stop_after: "stop after the specified stage completed"
    debug: "enable debug output"
  }
}