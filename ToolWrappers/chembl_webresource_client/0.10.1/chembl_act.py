from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Chembl_Act_V0_1_0 = CommandToolBuilder(tool="chembl_act", base_command=["chembl_act"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="input file with names, one line each")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file with ChEMBL IDs\n")), ToolInput(tag="in_ch_embl_ids", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file with ChEMBL IDs\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chembl_Act_V0_1_0().translate("wdl", allow_empty_container=True)

