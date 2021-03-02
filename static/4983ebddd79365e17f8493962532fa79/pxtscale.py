from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String, Boolean

Pxtscale_V0_1_0 = CommandToolBuilder(tool="pxtscale", base_command=["pxtscale"], inputs=[ToolInput(tag="in_tree_f", input_type=File(optional=True), prefix="--treef", doc=InputDocumentation(doc="input tree file, STDIN otherwise")), ToolInput(tag="in_scale", input_type=Int(optional=True), prefix="--scale", doc=InputDocumentation(doc="edge length scaling factor")), ToolInput(tag="in_root_height", input_type=String(optional=True), prefix="--rootheight", doc=InputDocumentation(doc="height of root (tree must be ultrametric)")), ToolInput(tag="in_out_f", input_type=File(optional=True), prefix="--outf", doc=InputDocumentation(doc="output file, STOUT otherwise")), ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="display phyx citation and exit"))], outputs=[ToolOutput(tag="out_out_f", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_f", type_hint=File()), doc=OutputDocumentation(doc="output file, STOUT otherwise"))], container="quay.io/biocontainers/phyx:1.1--h937addc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pxtscale_V0_1_0().translate("wdl")

