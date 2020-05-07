version 1.0

task PoperaDhsCount {
  input {
    String dataData
    String nameName
    String bedBed
    Int minlengthMinlength
    String threadsThreads
  }
  command <<<
    popera_dhs_count \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(bedBed) then ("--bed " +  '"' + bedBed + '"') else ""} \
      ~{if defined(minlengthMinlength) then ("--minlength " +  '"' + minlengthMinlength + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}