from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Bamtools_Count_V0_1_0 = CommandToolBuilder(tool="bamtools_count", base_command=["bamtools", "count"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="the input BAM file(s) [stdin]")), ToolInput(tag="in_list", input_type=File(optional=True), prefix="-list", doc=InputDocumentation(doc="the input BAM file list, one\nline per file")), ToolInput(tag="in_region", input_type=File(optional=True), prefix="-region", doc=InputDocumentation(doc="genomic region. Index file is\nrecommended for better performance, and is\nused automatically if it exists. See\n'bamtools help index' for more details on\ncreating one"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamtools_Count_V0_1_0().translate("wdl", allow_empty_container=True)

