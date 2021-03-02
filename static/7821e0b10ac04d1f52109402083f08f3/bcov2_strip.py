from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File

Bcov2_Strip_V0_1_0 = CommandToolBuilder(tool="bcov2_strip", base_command=["bcov2-strip"], inputs=[ToolInput(tag="in_b_cov_two", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_aligns_dot_b_six", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_table_dot_txt", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_bins", input_type=String(optional=True), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_x", input_type=String(optional=True), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_id", input_type=String(optional=True), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_uniq", input_type=String(optional=True), position=8, doc=InputDocumentation(doc="")), ToolInput(tag="in_up_r_of", input_type=String(optional=True), position=9, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_dot_fast_a", input_type=File(optional=True), position=10, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/burst:v1.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcov2_Strip_V0_1_0().translate("wdl")

