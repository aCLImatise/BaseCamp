version 1.0

task XS {
  input {
    Boolean? verbose_mode
    Boolean? sequencingtype_type_
    Int? hf
    Boolean? ninstrumentname_unique_use
    Boolean? use_same_header
    Int? ls
    Int? ld
    Boolean? numberofreads_number_reads
    Boolean? acgtn_symbols_frequency
    Int? rn
    Int? ri
    Int? ra
    String? rm
    Boolean? rr
    Int? qt
    File? qf
    String? qc
    Boolean? eh
    Boolean? eo
    Boolean? ed
    Boolean? edb
    Boolean? es
    Boolean? seed_generation_seed
  }
  command <<<
    XS \
      ~{if (verbose_mode) then "-v" else ""} \
      ~{if (sequencingtype_type_) then "-t" else ""} \
      ~{if defined(hf) then ("-hf " +  '"' + hf + '"') else ""} \
      ~{if (ninstrumentname_unique_use) then "-i" else ""} \
      ~{if (use_same_header) then "-o" else ""} \
      ~{if defined(ls) then ("-ls " +  '"' + ls + '"') else ""} \
      ~{if defined(ld) then ("-ld " +  '"' + ld + '"') else ""} \
      ~{if (numberofreads_number_reads) then "-n" else ""} \
      ~{if (acgtn_symbols_frequency) then "-f" else ""} \
      ~{if defined(rn) then ("-rn " +  '"' + rn + '"') else ""} \
      ~{if defined(ri) then ("-ri " +  '"' + ri + '"') else ""} \
      ~{if defined(ra) then ("-ra " +  '"' + ra + '"') else ""} \
      ~{if defined(rm) then ("-rm " +  '"' + rm + '"') else ""} \
      ~{if (rr) then "-rr" else ""} \
      ~{if defined(qt) then ("-qt " +  '"' + qt + '"') else ""} \
      ~{if defined(qf) then ("-qf " +  '"' + qf + '"') else ""} \
      ~{if defined(qc) then ("-qc " +  '"' + qc + '"') else ""} \
      ~{if (eh) then "-eh" else ""} \
      ~{if (eo) then "-eo" else ""} \
      ~{if (ed) then "-ed" else ""} \
      ~{if (edb) then "-edb" else ""} \
      ~{if (es) then "-es" else ""} \
      ~{if (seed_generation_seed) then "-s" else ""}
  >>>
  parameter_meta {
    verbose_mode: "verbose mode"
    sequencingtype_type_: "<sequencingType>     type: 1=Roche-454, 2=Illumina, 3=ABI SOLiD, 4=Ion Torrent"
    hf: "header format: 1=Length appendix, 2=Pair End"
    ninstrumentname_unique_use: "n=<instrumentName>   the unique instrument name (use n= before name)"
    use_same_header: "use the same header in third line of the read"
    ls: "static line (bases/quality scores) size"
    ld: ":<maxSize>  dynamic line (bases/quality scores) size"
    numberofreads_number_reads: "<numberOfReads>      number of reads per file"
    acgtn_symbols_frequency: "<A>,<C>,<G>,<T>,<N>  symbols frequency"
    rn: "repeats: number (default: 0)"
    ri: "repeats: minimum size"
    ra: "repeats: maximum size"
    rm: "repeats: mutation frequency"
    rr: "repeats: use reverse complement repeats"
    qt: "quality scores distribution: 1=uniform, 2=gaussian"
    qf: "load file: mean, standard deviation (when: -qt 2)"
    qc: "custom template ascii alphabet"
    eh: "excludes the use of headers from output"
    eo: "excludes the use of optional headers (+) from output"
    ed: "excludes the use of DNA bases from output"
    edb: "excludes '\\n' when DNA bases line size is reached"
    es: "excludes the use of quality scores from output"
    seed_generation_seed: "<seed>               generation seed"
  }
  output {
    File out_stdout = stdout()
  }
}