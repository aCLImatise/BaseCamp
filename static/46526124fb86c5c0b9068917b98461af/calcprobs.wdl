version 1.0

task Calcprobs.py {
  input {
    String inputInput
    String temperatureTemperature
  }
  command <<<
    calcprobs.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(temperatureTemperature) then ("--temperature " +  '"' + temperatureTemperature + '"') else ""}
  >>>
}