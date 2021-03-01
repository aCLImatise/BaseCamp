from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Convertlinks_V0_1_0 = CommandToolBuilder(tool="convertlinks", base_command=["convertlinks"], inputs=[ToolInput(tag="in_no_options", input_type=Boolean(optional=True), prefix="-nooptions", doc=InputDocumentation(doc="")), ToolInput(tag="in_links", input_type=String(optional=True), prefix="-links", doc=InputDocumentation(doc="")), ToolInput(tag="in_cat", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_links_dot_txt", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convertlinks_V0_1_0().translate("wdl", allow_empty_container=True)

