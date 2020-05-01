version 1.0

task IitGet {
  input {
    String fieldField
    Boolean labelLabel
    Boolean coordsCoords
    Boolean anAnNotOnly
    Boolean sortSort
    Boolean unsignedUnsigned
    Int flankingFlanking
    String? optionsOptions
    String? iIItFile
    String? queryQuery
  }
  command <<<
    iit_get \
      ~{optionsOptions} \
      ~{if defined(fieldField) then ("--field " +  '"' + fieldField + '"') else ""} \
      ~{true="--label" false="" labelLabel} \
      ~{true="--coords" false="" coordsCoords} \
      ~{true="--annotonly" false="" anAnNotOnly} \
      ~{true="--sort" false="" sortSort} \
      ~{true="--unsigned" false="" unsignedUnsigned} \
      ~{if defined(flankingFlanking) then ("--flanking " +  '"' + flankingFlanking + '"') else ""} \
      ~{iIItFile} \
      ~{queryQuery}
  >>>
}