from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Anvi_Script_Variability_To_Vcf_V0_1_0 = CommandToolBuilder(tool="anvi_script_variability_to_vcf", base_command=["anvi-script-variability-to-vcf"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Filepath to the SNV table. This is the output from the\nanvi-gen-variability-profile program with the\nnucleotide engine (which is the default engine).\n(default: None)")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="File path to store results. (default: None)")), ToolInput(tag="in_variability_profile_txt", input_type=String(), position=0, doc=InputDocumentation(doc="🍕 Can provide: ")), ToolInput(tag="in_vcf", input_type=String(), position=1, doc=InputDocumentation(doc="🍺 More on `anvi-script-variability-to-vcf`:"))], outputs=[ToolOutput(tag="out_input", output_type=File(optional=True), selector=InputSelector(input_to_select="in_input", type_hint=File()), doc=OutputDocumentation(doc="Filepath to the SNV table. This is the output from the\nanvi-gen-variability-profile program with the\nnucleotide engine (which is the default engine).\n(default: None)")), ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="File path to store results. (default: None)"))], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Script_Variability_To_Vcf_V0_1_0().translate("wdl")

