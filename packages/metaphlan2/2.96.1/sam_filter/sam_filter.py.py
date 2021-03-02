from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Sam_Filter_Py_V0_1_0 = CommandToolBuilder(tool="sam_filter.py", base_command=["sam_filter.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input_file", doc=InputDocumentation(doc="The input sam file.")), ToolInput(tag="in_min_align_score", input_type=Int(optional=True), prefix="--min_align_score", doc=InputDocumentation(doc="The sam records with alignment score smaller than this\nvalue will be discarded.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Show all information. Default 'not set'."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sam_Filter_Py_V0_1_0().translate("wdl", allow_empty_container=True)

