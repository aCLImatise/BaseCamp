from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Nanoq_V0_1_0 = CommandToolBuilder(tool="nanoq", base_command=["nanoq"], inputs=[ToolInput(tag="in_crab", input_type=Boolean(optional=True), prefix="--crab", doc=InputDocumentation(doc="Rust-Bio parser (fastq only) [false]")), ToolInput(tag="in_detail", input_type=Boolean(optional=True), prefix="--detail", doc=InputDocumentation(doc="Print detailed read summary [false]")), ToolInput(tag="in_keep_bases", input_type=Int(optional=True), prefix="--keep_bases", doc=InputDocumentation(doc="Keep reads with best quality bases [0]")), ToolInput(tag="in_fast_x", input_type=File(optional=True), prefix="--fastx", doc=InputDocumentation(doc="Fastx input file [-]")), ToolInput(tag="in_max_length", input_type=Int(optional=True), prefix="--max_length", doc=InputDocumentation(doc="Maximum sequence length [0]")), ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min_length", doc=InputDocumentation(doc="Minimum sequence length [0]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Fastx output file [-]")), ToolInput(tag="in_keep_percent", input_type=Int(optional=True), prefix="--keep_percent", doc=InputDocumentation(doc="Keep best percent quality bases [0]")), ToolInput(tag="in_min_quality", input_type=Int(optional=True), prefix="--min_quality", doc=InputDocumentation(doc="Minimum average sequence quality [0]")), ToolInput(tag="in_top", input_type=Int(optional=True), prefix="--top", doc=InputDocumentation(doc="Print <top> length + quality reads [5]"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Fastx output file [-]"))], container="quay.io/biocontainers/nanoq:0.2.1--h7d875b9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nanoq_V0_1_0().translate("wdl")

