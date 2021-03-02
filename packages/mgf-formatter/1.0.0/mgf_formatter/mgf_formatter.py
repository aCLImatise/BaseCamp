from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Mgf_Formatter_V0_1_0 = CommandToolBuilder(tool="mgf_formatter", base_command=["mgf-formatter"], inputs=[ToolInput(tag="in_it_raq_filter", input_type=Boolean(optional=True), prefix="--itraq_filter", doc=InputDocumentation(doc="Default: false")), ToolInput(tag="in_mgf_format", input_type=Boolean(optional=True), prefix="--mgf_format", doc=InputDocumentation(doc="Default: DEFAULT")), ToolInput(tag="in_no_split_multiple_charge_states", input_type=Boolean(optional=True), prefix="--no_split_multiple_charge_states", doc=InputDocumentation(doc="Default: false")), ToolInput(tag="in_output", input_type=Boolean(optional=True), prefix="--output", doc=InputDocumentation(doc="Output")), ToolInput(tag="in_main_class", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mgf_Formatter_V0_1_0().translate("wdl", allow_empty_container=True)

