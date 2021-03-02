from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Pxssort_V0_1_0 = CommandToolBuilder(tool="pxssort", base_command=["pxssort"], inputs=[ToolInput(tag="in_seq_f", input_type=File(optional=True), prefix="--seqf", doc=InputDocumentation(doc="input sequence file, STDIN otherwise")), ToolInput(tag="in_sort_by", input_type=Boolean(optional=True), prefix="--sortby", doc=InputDocumentation(doc="what to sort by: 1:id (default) 2:id rev\n3:length (<)   4:length (>)")), ToolInput(tag="in_out_f", input_type=File(optional=True), prefix="--outf", doc=InputDocumentation(doc="output sequence file, STOUT otherwise")), ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="display phyx citation and exit"))], outputs=[ToolOutput(tag="out_out_f", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_f", type_hint=File()), doc=OutputDocumentation(doc="output sequence file, STOUT otherwise"))], container="quay.io/biocontainers/phyx:1.1--h937addc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pxssort_V0_1_0().translate("wdl")

