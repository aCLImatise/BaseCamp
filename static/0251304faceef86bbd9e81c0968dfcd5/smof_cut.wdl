version 1.0

task SmofCut {
  input {
    String fieldsFields
    Boolean complementComplement
    String? inputInput
  }
  command <<<
    smof cut \
      ~{inputInput} \
      ~{if defined(fieldsFields) then ("--fields " +  '"' + fieldsFields + '"') else ""} \
      ~{true="--complement" false="" complementComplement}
  >>>
}