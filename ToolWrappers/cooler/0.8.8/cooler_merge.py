from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Cooler_Merge_V0_1_0 = CommandToolBuilder(tool="cooler_merge", base_command=["cooler", "merge"], inputs=[ToolInput(tag="in_chunksize", input_type=Int(optional=True), prefix="--chunksize", doc=InputDocumentation(doc="Size of the merge buffer in number of pixel table")), ToolInput(tag="in_field", input_type=String(optional=True), prefix="--field", doc=InputDocumentation(doc="Specify the names of value columns to merge as\n'<name>'. Repeat the `--field` option for each one.\nUse '<name>,dtype=<dtype>' to specify the dtype.\nInclude ',agg=<agg>' to specify an aggregation\nfunction different from 'sum'.")), ToolInput(tag="in_output_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cooler_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

