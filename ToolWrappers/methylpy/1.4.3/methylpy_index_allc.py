from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Int, Boolean

Methylpy_Index_Allc_V0_1_0 = CommandToolBuilder(tool="methylpy_index_allc", base_command=["methylpy", "index-allc"], inputs=[ToolInput(tag="in_all_c_files", input_type=Array(t=String(), optional=True), prefix="--allc-files", doc=InputDocumentation(doc="List of allc files to index. (default: None)")), ToolInput(tag="in_num_procs", input_type=Int(optional=True), prefix="--num-procs", doc=InputDocumentation(doc="Number of processors to use (default: 1)")), ToolInput(tag="in_re_index", input_type=Boolean(optional=True), prefix="--reindex", doc=InputDocumentation(doc="Boolean indicating whether to index allc files whose\nindex files already exist. (default: True)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Methylpy_Index_Allc_V0_1_0().translate("wdl", allow_empty_container=True)

