from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Anvi_Script_Augustus_Output_To_External_Gene_Calls_V0_1_0 = CommandToolBuilder(tool="anvi_script_augustus_output_to_external_gene_calls", base_command=["anvi-script-augustus-output-to-external-gene-calls"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Gene calls file from AUGUSTUS (that ends with .gff).\nPlease note that the script is only tested with\nAUGUSTUS v3.3.3 output (although it may still work\nwith other versions of the program). (default: None)")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="File path to store results. (default: None)")), ToolInput(tag="in_just_do_it", input_type=Boolean(optional=True), prefix="--just-do-it", doc=InputDocumentation(doc="Don't bother me with questions or warnings, just do\nit. (default: False)")), ToolInput(tag="in_augustus_gene_calls", input_type=String(), position=0, doc=InputDocumentation(doc="🍕 Can provide: ")), ToolInput(tag="in_external_gene_calls", input_type=String(), position=1, doc=InputDocumentation(doc="🍺 More on `anvi-script-augustus-output-to-external-gene-calls`:"))], outputs=[ToolOutput(tag="out_input_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_input_file", type_hint=File()), doc=OutputDocumentation(doc="Gene calls file from AUGUSTUS (that ends with .gff).\nPlease note that the script is only tested with\nAUGUSTUS v3.3.3 output (although it may still work\nwith other versions of the program). (default: None)")), ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="File path to store results. (default: None)"))], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Script_Augustus_Output_To_External_Gene_Calls_V0_1_0().translate("wdl")

