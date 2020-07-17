version 1.0

task XS {
  input {
    Boolean? verbose_mode
    Boolean? sequencingtype_type_solid
    String? hf
    Boolean? ninstrumentname_unique_instrument
    Boolean? use_same_header
    String? ls
    Int? ld
    Boolean? numberofreads_number_reads
    Boolean? acgtn_symbols_frequency
    String? rn
    String? ri
    String? ra
    String? rm
    Boolean? rr
    String? qt
    String? qf
    String? qc
    Boolean? eh
    Boolean? eo
    Boolean? ed
    Boolean? edb
    Boolean? es
    Boolean? seed_generation_seed
    String? option
  }
  command <<<
    XS \
      ~{option} \
      ~{true="-v" false="" verbose_mode} \
      ~{true="-t" false="" sequencingtype_type_solid} \
      ~{if defined(hf) then ("-hf " +  '"' + hf + '"') else ""} \
      ~{true="-i" false="" ninstrumentname_unique_instrument} \
      ~{true="-o" false="" use_same_header} \
      ~{if defined(ls) then ("-ls " +  '"' + ls + '"') else ""} \
      ~{if defined(ld) then ("-ld " +  '"' + ld + '"') else ""} \
      ~{true="-n" false="" numberofreads_number_reads} \
      ~{true="-f" false="" acgtn_symbols_frequency} \
      ~{if defined(rn) then ("-rn " +  '"' + rn + '"') else ""} \
      ~{if defined(ri) then ("-ri " +  '"' + ri + '"') else ""} \
      ~{if defined(ra) then ("-ra " +  '"' + ra + '"') else ""} \
      ~{if defined(rm) then ("-rm " +  '"' + rm + '"') else ""} \
      ~{true="-rr" false="" rr} \
      ~{if defined(qt) then ("-qt " +  '"' + qt + '"') else ""} \
      ~{if defined(qf) then ("-qf " +  '"' + qf + '"') else ""} \
      ~{if defined(qc) then ("-qc " +  '"' + qc + '"') else ""} \
      ~{true="-eh" false="" eh} \
      ~{true="-eo" false="" eo} \
      ~{true="-ed" false="" ed} \
      ~{true="-edb" false="" edb} \
      ~{true="-es" false="" es} \
      ~{true="-s" false="" seed_generation_seed}
  >>>
  parameter_meta {
    verbose_mode: "verbose mode"
    sequencingtype_type_solid: "<sequencingType>     type: 1=Roche-454, 2=Illumina, 3=ABI SOLiD, 4=Ion Torrent"
    hf: "header format: 1=Length appendix, 2=Pair End"
    ninstrumentname_unique_instrument: "n=<instrumentName>   the unique instrument name (use n= before name)"
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
    edb: "excludes '\n' when DNA bases line size is reached"
    es: "excludes the use of quality scores from output"
    seed_generation_seed: "<seed>               generation seed"
    option: ""
  }
}