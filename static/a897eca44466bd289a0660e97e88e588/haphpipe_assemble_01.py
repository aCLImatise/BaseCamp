from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Haphpipe_Assemble_01_V0_1_0 = CommandToolBuilder(tool="haphpipe_assemble_01", base_command=["haphpipe_assemble_01"], inputs=[ToolInput(tag="in_read_one", input_type=Int(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_read_two", input_type=Int(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_reference_fast_a", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_reference_gtf", input_type=String(optional=True), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_samp_id", input_type=String(optional=True), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_outdir", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/haphpipe:1.0.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Haphpipe_Assemble_01_V0_1_0().translate("wdl")

