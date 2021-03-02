from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Bedtools_Split_V0_1_0 = CommandToolBuilder(tool="bedtools_split", base_command=["bedtools", "split"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="(file)       BED input file (req'd).")), ToolInput(tag="in_number", input_type=Boolean(optional=True), prefix="--number", doc=InputDocumentation(doc="(int)       Number of files to create (req'd).")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="(string)    Output BED file prefix.")), ToolInput(tag="in_algorithm", input_type=Boolean(optional=True), prefix="--algorithm", doc=InputDocumentation(doc="(string) Algorithm used to split data.\n* size (default): uses a heuristic algorithm to group the items\nso all files contain the ~ same number of bases\n* simple : route records such that each split file has\napproximately equal records (like Unix split)."))], outputs=[ToolOutput(tag="out_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_prefix", type_hint=File()), doc=OutputDocumentation(doc="(string)    Output BED file prefix."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtools_Split_V0_1_0().translate("wdl", allow_empty_container=True)

