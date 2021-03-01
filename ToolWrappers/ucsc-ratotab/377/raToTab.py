from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Ratotab_V0_1_0 = CommandToolBuilder(tool="raToTab", base_command=["raToTab"], inputs=[ToolInput(tag="in_cols", input_type=String(optional=True), prefix="-cols", doc=InputDocumentation(doc=",b,c - List columns in order to output in table\nOnly these columns will be output.  If you\nDon't give this option, all columns are output\nin alphabetical order")), ToolInput(tag="in_head", input_type=Boolean(optional=True), prefix="-head", doc=InputDocumentation(doc="- Put column names in header")), ToolInput(tag="in_in_do_tra", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ratotab_V0_1_0().translate("wdl", allow_empty_container=True)

