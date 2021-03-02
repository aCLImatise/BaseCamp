from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arrow_Cannedkeys_Show_Key_V0_1_0 = CommandToolBuilder(tool="arrow_cannedkeys_show_key", base_command=["arrow", "cannedkeys", "show_key"], inputs=[ToolInput(tag="in_value", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arrow_Cannedkeys_Show_Key_V0_1_0().translate("wdl")

