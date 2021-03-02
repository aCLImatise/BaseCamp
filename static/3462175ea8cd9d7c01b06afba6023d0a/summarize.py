from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Summarize_V0_1_0 = CommandToolBuilder(tool="summarize", base_command=["summarize"], inputs=[ToolInput(tag="in_background_gc_content", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc=": Background GC content")), ToolInput(tag="in__gsc_weighting", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc=": Do GSC weighting")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_alignment", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Summarize_V0_1_0().translate("wdl", allow_empty_container=True)

