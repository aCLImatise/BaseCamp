from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Bamtools_Stats_V0_1_0 = CommandToolBuilder(tool="bamtools_stats", base_command=["bamtools", "stats"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="the input BAM file [stdin]")), ToolInput(tag="in_list", input_type=File(optional=True), prefix="-list", doc=InputDocumentation(doc="the input BAM file list, one\nline per file")), ToolInput(tag="in_insert", input_type=Boolean(optional=True), prefix="-insert", doc=InputDocumentation(doc="summarize insert size data"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamtools_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

