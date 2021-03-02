from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Bamtools_2_4_1_Header_V0_1_0 = CommandToolBuilder(tool="bamtools_2.4.1_header", base_command=["bamtools-2.4.1", "header"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="the input BAM file(s) [stdin]")), ToolInput(tag="in_list", input_type=File(optional=True), prefix="-list", doc=InputDocumentation(doc="the input BAM file list, one\nline per file")), ToolInput(tag="in_bam_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_header", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamtools_2_4_1_Header_V0_1_0().translate("wdl", allow_empty_container=True)

