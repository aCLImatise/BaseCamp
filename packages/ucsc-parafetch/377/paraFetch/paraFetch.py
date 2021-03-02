from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Parafetch_V0_1_0 = CommandToolBuilder(tool="paraFetch", base_command=["paraFetch"], inputs=[ToolInput(tag="in_newer", input_type=Boolean(optional=True), prefix="-newer", doc=InputDocumentation(doc="only download a file if it is newer than the version we already have.")), ToolInput(tag="in_progress", input_type=Boolean(optional=True), prefix="-progress", doc=InputDocumentation(doc="Show progress of download.")), ToolInput(tag="in_n", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_path", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_where", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_r", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_url", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_is", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_optional_dot", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_if", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_the", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_not", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_number", input_type=Int(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_of", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_specified", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_connections", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_to", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_use", input_type=String(), position=8, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parafetch_V0_1_0().translate("wdl", allow_empty_container=True)

