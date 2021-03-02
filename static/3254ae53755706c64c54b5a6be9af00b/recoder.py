from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Recoder_V0_1_0 = CommandToolBuilder(tool="recoder", base_command=["recoder"], inputs=[ToolInput(tag="in_enzymes", input_type=Boolean(optional=True), prefix="-enzymes", doc=InputDocumentation(doc="string     [all] Comma separated enzyme list (Any\nstring)")), ToolInput(tag="in_s_show", input_type=Boolean(optional=True), prefix="-sshow", doc=InputDocumentation(doc="boolean    [N] Display untranslated sequence")), ToolInput(tag="in_t_show", input_type=Boolean(optional=True), prefix="-tshow", doc=InputDocumentation(doc="boolean    [N] Display translated sequence"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Recoder_V0_1_0().translate("wdl", allow_empty_container=True)

