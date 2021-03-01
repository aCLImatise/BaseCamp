from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Cnvkit_Py_Breaks_Segment_V0_1_0 = CommandToolBuilder(tool="cnvkit.py_breaks_segment", base_command=["cnvkit.py", "breaks", "segment"], inputs=[ToolInput(tag="in_o", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_m", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_cnv_kit_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_breaks", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_filename", input_type=File(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_segment", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cnvkit:0.9.8--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cnvkit_Py_Breaks_Segment_V0_1_0().translate("wdl")

