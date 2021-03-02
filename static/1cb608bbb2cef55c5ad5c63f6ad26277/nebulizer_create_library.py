from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Nebulizer_Create_Library_V0_1_0 = CommandToolBuilder(tool="nebulizer_create_library", base_command=["nebulizer", "create_library"], inputs=[ToolInput(tag="in_description", input_type=String(optional=True), prefix="--description", doc=InputDocumentation(doc="description of the new library")), ToolInput(tag="in_synopsis", input_type=String(optional=True), prefix="--synopsis", doc=InputDocumentation(doc="synopsis text for the new library")), ToolInput(tag="in_galaxy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_name", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nebulizer_Create_Library_V0_1_0().translate("wdl", allow_empty_container=True)

