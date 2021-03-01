from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Arrow_Groups_Update_Organism_Permissions_V0_1_0 = CommandToolBuilder(tool="arrow_groups_update_organism_permissions", base_command=["arrow", "groups", "update_organism_permissions"], inputs=[ToolInput(tag="in_administrate", input_type=Boolean(optional=True), prefix="--administrate", doc=InputDocumentation(doc="Should the group have administrate privileges")), ToolInput(tag="in_write", input_type=Boolean(optional=True), prefix="--write", doc=InputDocumentation(doc="Should the group have write privileges")), ToolInput(tag="in_read", input_type=Boolean(optional=True), prefix="--read", doc=InputDocumentation(doc="Should the group have read privileges")), ToolInput(tag="in_export", input_type=Boolean(optional=True), prefix="--export", doc=InputDocumentation(doc="Should the group have export privileges")), ToolInput(tag="in_group", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_organism_name", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/apollo:4.2.10--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arrow_Groups_Update_Organism_Permissions_V0_1_0().translate("wdl")

