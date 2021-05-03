from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arrow_Groups_Create_Group_V0_1_0 = CommandToolBuilder(tool="arrow_groups_create_group", base_command=["arrow", "groups", "create_group"], inputs=[ToolInput(tag="in_name", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/apollo:4.2.12--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arrow_Groups_Create_Group_V0_1_0().translate("wdl")

