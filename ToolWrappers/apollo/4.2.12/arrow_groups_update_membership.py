from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Arrow_Groups_Update_Membership_V0_1_0 = CommandToolBuilder(tool="arrow_groups_update_membership", base_command=["arrow", "groups", "update_membership"], inputs=[ToolInput(tag="in_group_id", input_type=Int(optional=True), prefix="--group_id", doc=InputDocumentation(doc="Group ID Number")), ToolInput(tag="in_users", input_type=String(optional=True), prefix="--users", doc=InputDocumentation(doc="List of emails")), ToolInput(tag="in_memberships", input_type=Int(optional=True), prefix="--memberships", doc=InputDocumentation(doc="Bulk memberships to update of the form: [ {groupId:\n<groupId>,users: ['user1', 'user2', 'user3']},\n{groupId:<another-groupId>, users: ['user2', 'user8']}\n(users and groupId will be ignored)"))], outputs=[], container="quay.io/biocontainers/apollo:4.2.12--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arrow_Groups_Update_Membership_V0_1_0().translate("wdl")

