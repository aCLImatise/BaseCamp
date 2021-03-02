from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Nebulizer_Create_Batch_Users_Template_V0_1_0 = CommandToolBuilder(tool="nebulizer_create_batch_users_TEMPLATE", base_command=["nebulizer", "create_batch_users", "TEMPLATE"], inputs=[ToolInput(tag="in_nebulizer", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_create_batch_users", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_galaxy", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_template", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_start", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_end", input_type=String(optional=True), position=5, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nebulizer_Create_Batch_Users_Template_V0_1_0().translate("wdl", allow_empty_container=True)

