from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File, String

Fastqe_V0_1_0 = CommandToolBuilder(tool="fastqe", base_command=["fastqe"], inputs=[ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--minlen", doc=InputDocumentation(doc="Minimum length sequence to include in stats (default 0)")), ToolInput(tag="in_mean", input_type=Boolean(optional=True), prefix="--mean", doc=InputDocumentation(doc="show mean quality per position (DEFAULT)")), ToolInput(tag="in_bin", input_type=Boolean(optional=True), prefix="--bin", doc=InputDocumentation(doc="use binned scores")), ToolInput(tag="in_min", input_type=Boolean(optional=True), prefix="--min", doc=InputDocumentation(doc="show minimum quality per position")), ToolInput(tag="in_max", input_type=Boolean(optional=True), prefix="--max", doc=InputDocumentation(doc="show maximum quality per position")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="record program progress in LOG_FILE")), ToolInput(tag="in_scale", input_type=Boolean(optional=True), prefix="--scale", doc=InputDocumentation(doc="show relevant scale in output")), ToolInput(tag="in_fast_a_file", input_type=String(), position=0, doc=InputDocumentation(doc="Input FASTQ files"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastqe_V0_1_0().translate("wdl", allow_empty_container=True)

