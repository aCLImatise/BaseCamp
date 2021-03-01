from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, String, Boolean

Pxcolt_V0_1_0 = CommandToolBuilder(tool="pxcolt", base_command=["pxcolt"], inputs=[ToolInput(tag="in_tree_f", input_type=File(optional=True), prefix="--treef", doc=InputDocumentation(doc="input tree file, STDIN otherwise")), ToolInput(tag="in_limit", input_type=Float(optional=True), prefix="--limit", doc=InputDocumentation(doc="minimum support threshold as proportion (default = 0.5)")), ToolInput(tag="in_sup", input_type=String(optional=True), prefix="--sup", doc=InputDocumentation(doc="string identifying support values (if default fails)")), ToolInput(tag="in_out_f", input_type=File(optional=True), prefix="--outf", doc=InputDocumentation(doc="output file, STOUT otherwise")), ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="display phyx citation and exit"))], outputs=[ToolOutput(tag="out_out_f", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_f", type_hint=File()), doc=OutputDocumentation(doc="output file, STOUT otherwise"))], container="quay.io/biocontainers/phyx:1.1--h937addc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pxcolt_V0_1_0().translate("wdl")

