from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Cobs_Compact_Construct_Combine_V0_1_0 = CommandToolBuilder(tool="cobs_compact_construct_combine", base_command=["cobs", "compact-construct-combine"], inputs=[ToolInput(tag="in_page_size", input_type=Boolean(optional=True), prefix="--page-size", doc=InputDocumentation(doc="the page size of the compact the index, default: 8192")), ToolInput(tag="in_in_dir", input_type=String(), position=0, doc=InputDocumentation(doc="path to the input directory")), ToolInput(tag="in_out_file", input_type=File(), position=1, doc=InputDocumentation(doc="path to the output file"))], outputs=[ToolOutput(tag="out_out_file", output_type=File(), selector=InputSelector(input_to_select="in_out_file", type_hint=File()), doc=OutputDocumentation(doc="path to the output file"))], container="quay.io/biocontainers/cobs:0.1.2--py39h56fc30b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cobs_Compact_Construct_Combine_V0_1_0().translate("wdl")

