from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Silent_V0_1_0 = CommandToolBuilder(tool="silent", base_command=["silent"], inputs=[ToolInput(tag="in_enzymes", input_type=Boolean(optional=True), prefix="-enzymes", doc=InputDocumentation(doc="string     [all] Comma separated enzyme list (Any\nstring)")), ToolInput(tag="in_s_show", input_type=Boolean(optional=True), prefix="-sshow", doc=InputDocumentation(doc="boolean    [N] Display untranslated sequence")), ToolInput(tag="in_t_show", input_type=Boolean(optional=True), prefix="-tshow", doc=InputDocumentation(doc="boolean    [N] Display translated sequence")), ToolInput(tag="in_all_mut", input_type=Boolean(optional=True), prefix="-allmut", doc=InputDocumentation(doc="boolean    [N] Display all mutations"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Silent_V0_1_0().translate("wdl", allow_empty_container=True)

