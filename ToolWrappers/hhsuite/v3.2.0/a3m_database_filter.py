from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

A3M_Database_Filter_V0_1_0 = CommandToolBuilder(tool="a3m_database_filter", base_command=["a3m_database_filter"], inputs=[ToolInput(tag="in_s", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_ff_index_a_three_m_database_prefix", input_type=Int(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_filter", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    A3M_Database_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

