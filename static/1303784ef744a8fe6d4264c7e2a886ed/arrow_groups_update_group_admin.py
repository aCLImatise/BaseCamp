from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arrow_Groups_Update_Group_Admin_V0_1_0 = CommandToolBuilder(tool="arrow_groups_update_group_admin", base_command=["arrow", "groups", "update_group_admin"], inputs=[ToolInput(tag="in_users", input_type=String(optional=True), prefix="--users", doc=InputDocumentation(doc="List of emails")), ToolInput(tag="in_group_id", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arrow_Groups_Update_Group_Admin_V0_1_0().translate("wdl")

