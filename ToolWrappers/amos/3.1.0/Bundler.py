from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bundler_V0_1_0 = CommandToolBuilder(tool="Bundler", base_command=["Bundler"], inputs=[ToolInput(tag="in_t", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_b", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="")), ToolInput(tag="in_an_k", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bank_name", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_ype", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_comma_separated_list_of_link_types_to_process", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bundler_V0_1_0().translate("wdl", allow_empty_container=True)

