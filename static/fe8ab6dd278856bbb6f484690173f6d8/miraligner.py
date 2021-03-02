from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Miraligner_V0_1_0 = CommandToolBuilder(tool="miraligner", base_command=["miraligner"], inputs=[ToolInput(tag="in_add", input_type=Boolean(optional=True), prefix="-add", doc=InputDocumentation(doc="nt allowed for addition processes\nDefault: 3")), ToolInput(tag="in_format", input_type=Boolean(optional=True), prefix="-format", doc=InputDocumentation(doc="format input\nDefault: none")), ToolInput(tag="in_freq", input_type=Boolean(optional=True), prefix="-freq", doc=InputDocumentation(doc="add freq information\nDefault: true")), ToolInput(tag="in_three_letter_code", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="three letter code for species")), ToolInput(tag="in_sub", input_type=Boolean(optional=True), prefix="-sub", doc=InputDocumentation(doc="nt allowed for substitution processes\nDefault: 1")), ToolInput(tag="in_trim", input_type=Boolean(optional=True), prefix="-trim", doc=InputDocumentation(doc="nt allowed for trimming processes\nDefault: 3")), ToolInput(tag="in_help", input_type=String(), position=0, doc=InputDocumentation(doc="Default: false")), ToolInput(tag="in_version", input_type=String(), position=0, doc=InputDocumentation(doc="Default: false"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Miraligner_V0_1_0().translate("wdl", allow_empty_container=True)

