from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Pancake_Addali_V0_1_0 = CommandToolBuilder(tool="pancake_addAli", base_command=["pancake", "addAli"], inputs=[ToolInput(tag="in_pan_file", input_type=File(optional=True), prefix="--panfile", doc=InputDocumentation(doc="Name of PanCake Data Object File (required)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output pangenome file (PAN_FILE will be unchanged)")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--min_len", doc=InputDocumentation(doc="minimum length of pairwise alignments to get included\n(DEFAULT=25)")), ToolInput(tag="in_no_self_alignments", input_type=Boolean(optional=True), prefix="--no_self_alignments", doc=InputDocumentation(doc="if set, skip pairwise alignments between regions on\nidentical chromosomes (DEFAULT=False)\n")), ToolInput(tag="in_ali_file", input_type=String(), position=0, doc=InputDocumentation(doc="Alignment File (BLAST or nucmer output)"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output pangenome file (PAN_FILE will be unchanged)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pancake_Addali_V0_1_0().translate("wdl", allow_empty_container=True)

