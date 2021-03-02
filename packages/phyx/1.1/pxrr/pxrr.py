from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Pxrr_V0_1_0 = CommandToolBuilder(tool="pxrr", base_command=["pxrr"], inputs=[ToolInput(tag="in_tree_f", input_type=File(optional=True), prefix="--treef", doc=InputDocumentation(doc="input tree file, STDIN otherwise")), ToolInput(tag="in_out_groups", input_type=String(optional=True), prefix="--outgroups", doc=InputDocumentation(doc="outgroup sep by commas (NO SPACES!)")), ToolInput(tag="in_ranked", input_type=Boolean(optional=True), prefix="--ranked", doc=InputDocumentation(doc="turn on ordering of outgroups. will root on first one present")), ToolInput(tag="in_un_root", input_type=Boolean(optional=True), prefix="--unroot", doc=InputDocumentation(doc="unroot the tree")), ToolInput(tag="in_out_f", input_type=File(optional=True), prefix="--outf", doc=InputDocumentation(doc="output tree file, STOUT otherwise")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="do not error if outgroup(s) not found")), ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="display phyx citation and exit"))], outputs=[ToolOutput(tag="out_out_f", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_f", type_hint=File()), doc=OutputDocumentation(doc="output tree file, STOUT otherwise"))], container="quay.io/biocontainers/phyx:1.1--h937addc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pxrr_V0_1_0().translate("wdl")

