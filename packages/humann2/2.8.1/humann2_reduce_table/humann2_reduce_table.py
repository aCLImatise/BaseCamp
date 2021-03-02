from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Humann2_Reduce_Table_V0_1_0 = CommandToolBuilder(tool="humann2_reduce_table", base_command=["humann2_reduce_table"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="additional output is printed")), ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="the input table")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="the output table")), ToolInput(tag="in_function", input_type=String(optional=True), prefix="--function", doc=InputDocumentation(doc="the function to apply")), ToolInput(tag="in_sort_by", input_type=String(optional=True), prefix="--sort-by", doc=InputDocumentation(doc="sort the output by the selection\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Humann2_Reduce_Table_V0_1_0().translate("wdl", allow_empty_container=True)

