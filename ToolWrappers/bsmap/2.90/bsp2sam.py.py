from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Bsp2Sam_Py_V0_1_0 = CommandToolBuilder(tool="bsp2sam.py", base_command=["bsp2sam.py"], inputs=[ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="output file name. (required)")), ToolInput(tag="in_ref", input_type=File(optional=True), prefix="--ref", doc=InputDocumentation(doc="reference genome fasta file. (required)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="don't print progress on stderr.")), ToolInput(tag="in_bs_map_mapping_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="output file name. (required)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bsp2Sam_Py_V0_1_0().translate("wdl", allow_empty_container=True)

