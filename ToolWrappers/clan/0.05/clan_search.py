from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Clan_Search_V0_1_0 = CommandToolBuilder(tool="clan_search", base_command=["clan_search"], inputs=[ToolInput(tag="in_d", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_r", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_read_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_reference_file", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_index_prefix", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clan_Search_V0_1_0().translate("wdl", allow_empty_container=True)

