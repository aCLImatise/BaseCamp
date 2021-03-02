from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Crisprtools_Filter_V0_1_0 = CommandToolBuilder(tool="crisprtools_filter", base_command=["crisprtools", "filter"], inputs=[ToolInput(tag="in_output_file_name", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file name, creates a filtered copy of the input file  [default: modify input file inplace]")), ToolInput(tag="in_filter_based_spacers", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="Filter based on the number of spacers the spacers")), ToolInput(tag="in_filter_based_direct", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="Filter based on the direct repeats")), ToolInput(tag="in_filter_based_flanking", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="Filter based on the flanking sequences")), ToolInput(tag="in_filter_based_spacer", input_type=Int(optional=True), prefix="-C", doc=InputDocumentation(doc="Filter based on spacer coverage"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crisprtools_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

