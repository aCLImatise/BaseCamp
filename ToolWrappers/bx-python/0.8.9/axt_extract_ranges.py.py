from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Axt_Extract_Ranges_Py_V0_1_0 = CommandToolBuilder(tool="axt_extract_ranges.py", base_command=["axt_extract_ranges.py"], inputs=[ToolInput(tag="in_min_cols", input_type=Int(optional=True), prefix="--mincols", doc=InputDocumentation(doc="Minimum length (columns) required for alignment to be\noutput\n")), ToolInput(tag="in_interval_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_index", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Axt_Extract_Ranges_Py_V0_1_0().translate("wdl", allow_empty_container=True)

