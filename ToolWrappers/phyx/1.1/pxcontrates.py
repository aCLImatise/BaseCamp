from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Pxcontrates_V0_1_0 = CommandToolBuilder(tool="pxcontrates", base_command=["pxcontrates"], inputs=[ToolInput(tag="in_char_f", input_type=File(optional=True), prefix="--charf", doc=InputDocumentation(doc="input character file, STDIN otherwise")), ToolInput(tag="in_tree_f", input_type=File(optional=True), prefix="--treef", doc=InputDocumentation(doc="input tree file, STDIN otherwise")), ToolInput(tag="in_analysis", input_type=Int(optional=True), prefix="--analysis", doc=InputDocumentation(doc="analysis type (0=anc[DEFAULT], 1=ratetest)")), ToolInput(tag="in_out_f", input_type=File(optional=True), prefix="--outf", doc=InputDocumentation(doc="output sequence file, STOUT otherwise")), ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="display phyx citation and exit"))], outputs=[ToolOutput(tag="out_out_f", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_f", type_hint=File()), doc=OutputDocumentation(doc="output sequence file, STOUT otherwise"))], container="quay.io/biocontainers/phyx:1.1--h937addc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pxcontrates_V0_1_0().translate("wdl")

