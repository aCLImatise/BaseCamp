from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Nebulizer_Add_Key_Alias_V0_1_0 = CommandToolBuilder(tool="nebulizer_add_key_ALIAS", base_command=["nebulizer", "add_key", "ALIAS"], inputs=[ToolInput(tag="in_galaxy_url", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_api_key", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nebulizer_Add_Key_Alias_V0_1_0().translate("wdl", allow_empty_container=True)

