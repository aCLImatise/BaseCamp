from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

_Whichdb_V0_1_0 = CommandToolBuilder(tool="_whichdb", base_command=["_whichdb"], inputs=[ToolInput(tag="in_get", input_type=Boolean(optional=True), prefix="-get", doc=InputDocumentation(doc="toggle     [N] Retrieve sequences")), ToolInput(tag="in_show_all", input_type=Boolean(optional=True), prefix="-showall", doc=InputDocumentation(doc="boolean    [N] Show failed attempts"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Whichdb_V0_1_0().translate("wdl", allow_empty_container=True)

