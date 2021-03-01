from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Novolrpolish_Novocraft_V0_1_0 = CommandToolBuilder(tool="novolrpolish_Novocraft", base_command=["novolrpolish", "Novocraft"], inputs=[ToolInput(tag="in_colheader_select_columns", input_type=Int(optional=True), prefix="-o", doc=InputDocumentation(doc=",COL2=HEADER     Select columns for display")), ToolInput(tag="in_ps", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Novolrpolish_Novocraft_V0_1_0().translate("wdl", allow_empty_container=True)

