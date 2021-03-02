from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Stats_V0_1_0 = CommandToolBuilder(tool="stats", base_command=["stats"], inputs=[ToolInput(tag="in_prefix_output_stats", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="Prefix for output stats files [default: stats]")), ToolInput(tag="in_h", input_type=Boolean(optional=True), prefix="-h", doc=InputDocumentation(doc="")), ToolInput(tag="in_show", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_files", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_maf_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_path", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_this", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_maf", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stats_V0_1_0().translate("wdl", allow_empty_container=True)

