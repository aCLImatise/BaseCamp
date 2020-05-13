version 1.0

task MethylDackelPerRead {
  input {
    String cpgCpg
    String numberNumber
    String? inputInput
  }
  command <<<
    MethylDackel perRead \
      ~{inputInput} \
      ~{if defined(cpgCpg) then ("- CpG " +  '"' + cpgCpg + '"') else ""} \
      ~{if defined(numberNumber) then ("- number " +  '"' + numberNumber + '"') else ""}
  >>>
}