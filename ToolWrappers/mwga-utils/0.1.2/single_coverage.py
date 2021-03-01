from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Single_Coverage_V0_1_0 = CommandToolBuilder(tool="single_coverage", base_command=["single_coverage"], inputs=[ToolInput(tag="in_h", input_type=Boolean(optional=True), prefix="-h", doc=InputDocumentation(doc="")), ToolInput(tag="in_show", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_maf_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_path", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_this", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_maf", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Single_Coverage_V0_1_0().translate("wdl", allow_empty_container=True)

