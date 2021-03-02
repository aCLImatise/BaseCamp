from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Wisestork_Count_V0_1_0 = CommandToolBuilder(tool="wisestork_count", base_command=["wisestork", "count"], inputs=[ToolInput(tag="in_binsize", input_type=Int(optional=True), prefix="--binsize", doc=InputDocumentation(doc="RANGE  Bin size to use. Default = 50000")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="Path to reference fasta  [required]")), ToolInput(tag="in_bin_file", input_type=File(optional=True), prefix="--bin-file", doc=InputDocumentation(doc="Optional path to region BED file")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to output BED file  [required]")), ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Path to input BAM file  [required]"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path to output BED file  [required]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wisestork_Count_V0_1_0().translate("wdl", allow_empty_container=True)

