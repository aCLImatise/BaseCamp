from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Msaconverter_V0_1_0 = CommandToolBuilder(tool="msaconverter", base_command=["msaconverter"], inputs=[ToolInput(tag="in_input_msa_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="input msa file")), ToolInput(tag="in_output_msa_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output msa file")), ToolInput(tag="in_p", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="input msa format [fasta]")), ToolInput(tag="in_q", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc="input msa format [phylip-relaxed]\n"))], outputs=[ToolOutput(tag="out_output_msa_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_msa_file", type_hint=File()), doc=OutputDocumentation(doc="output msa file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msaconverter_V0_1_0().translate("wdl", allow_empty_container=True)

