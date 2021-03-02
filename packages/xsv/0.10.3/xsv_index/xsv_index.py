from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Xsv_Index_V0_1_0 = CommandToolBuilder(tool="xsv_index", base_command=["xsv", "index"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Write index to <file> instead of <input>.idx.\nGenerally, this is not currently useful because\nthe only way to use an index is if it is specially\nnamed <input>.idx.")), ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="The field delimiter for reading CSV data.\nMust be a single character. (default: ,)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xsv_Index_V0_1_0().translate("wdl", allow_empty_container=True)

