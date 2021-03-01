from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Float, Boolean, String

Mashclust_Py_V0_1_0 = CommandToolBuilder(tool="mashclust.py", base_command=["mashclust.py"], inputs=[ToolInput(tag="in_input", input_type=Directory(optional=True), prefix="--input", doc=InputDocumentation(doc="REQUIRED.Input FASTA file")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="Output directory to extract clusteres FASTA")), ToolInput(tag="in_distance", input_type=Float(optional=True), prefix="--distance", doc=InputDocumentation(doc="Threshold distance to cluster sequences[0-1]\n0(identical) 1(unrelated) (default 0.5)")), ToolInput(tag="in_output_grouped", input_type=Boolean(optional=True), prefix="--output_grouped", doc=InputDocumentation(doc="Output clustered (non representative sequences")), ToolInput(tag="in_common_mash_reference_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output directory to extract clusteres FASTA"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mashclust_Py_V0_1_0().translate("wdl", allow_empty_container=True)

