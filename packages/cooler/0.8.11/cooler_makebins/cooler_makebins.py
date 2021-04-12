from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Cooler_Makebins_V0_1_0 = CommandToolBuilder(tool="cooler_makebins", base_command=["cooler", "makebins"], inputs=[ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output file (defaults to stdout)")), ToolInput(tag="in_header", input_type=Boolean(optional=True), prefix="--header", doc=InputDocumentation(doc="Print the header of column names as the first row.\n[default: False]")), ToolInput(tag="in_rel_ids", input_type=Boolean(optional=True), prefix="--rel-ids", doc=InputDocumentation(doc="[0|1]  Include a column of relative bin IDs for each\nchromosome. Choose whether to report them as 0- or\n1-based.")), ToolInput(tag="in_order_dot", input_type=String(), position=0, doc=InputDocumentation(doc="BINSIZE : Resolution (bin size) in base pairs <int>."))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Output file (defaults to stdout)"))], container="quay.io/biocontainers/cooler:0.8.11--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cooler_Makebins_V0_1_0().translate("wdl")

