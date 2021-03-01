from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

_Fcontrast_V0_1_0 = CommandToolBuilder(tool="_fcontrast", base_command=["_fcontrast"], inputs=[ToolInput(tag="in_vary_within", input_type=Boolean(optional=True), prefix="-varywithin", doc=InputDocumentation(doc="boolean    [N] Within-population variation in data")), ToolInput(tag="in_print_data", input_type=Boolean(optional=True), prefix="-printdata", doc=InputDocumentation(doc="boolean    [N] Print data at start of run")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="Additional (Optional) qualifiers (* if not always prompted):"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Fcontrast_V0_1_0().translate("wdl", allow_empty_container=True)

