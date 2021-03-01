from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Pxsstat_V0_1_0 = CommandToolBuilder(tool="pxsstat", base_command=["pxsstat"], inputs=[ToolInput(tag="in_seq_f", input_type=File(optional=True), prefix="--seqf", doc=InputDocumentation(doc="input seq file, STDIN otherwise")), ToolInput(tag="in_out_f", input_type=File(optional=True), prefix="--outf", doc=InputDocumentation(doc="output sequence file, STOUT otherwise")), ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="display phyx citation and exit"))], outputs=[ToolOutput(tag="out_out_f", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_f", type_hint=File()), doc=OutputDocumentation(doc="output sequence file, STOUT otherwise"))], container="quay.io/biocontainers/phyx:1.1--h937addc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pxsstat_V0_1_0().translate("wdl")

