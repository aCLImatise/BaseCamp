from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean, Int

Sorthits_V0_1_0 = CommandToolBuilder(tool="sortHits", base_command=["sortHits"], inputs=[ToolInput(tag="in_t", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_m", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_hit_file_two", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sorthits_V0_1_0().translate("wdl", allow_empty_container=True)

