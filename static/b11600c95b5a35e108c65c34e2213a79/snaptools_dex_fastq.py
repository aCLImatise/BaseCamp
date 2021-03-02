from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Array, String

Snaptools_Dex_Fastq_V0_1_0 = CommandToolBuilder(tool="snaptools_dex_fastq", base_command=["snaptools", "dex-fastq"], inputs=[ToolInput(tag="in_input_fast_q", input_type=File(optional=True), prefix="--input-fastq", doc=InputDocumentation(doc="fastq file contains the sequencing reads (default:\nNone)")), ToolInput(tag="in_output_fast_q", input_type=File(optional=True), prefix="--output-fastq", doc=InputDocumentation(doc="output decomplexed fastq file (default: None)")), ToolInput(tag="in_index_fast_q_list", input_type=Array(t=String(), optional=True), prefix="--index-fastq-list", doc=InputDocumentation(doc="a list of fastq files that contain the cell indices.\n(default: None)\n"))], outputs=[ToolOutput(tag="out_output_fast_q", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fast_q", type_hint=File()), doc=OutputDocumentation(doc="output decomplexed fastq file (default: None)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snaptools_Dex_Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

