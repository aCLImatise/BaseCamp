from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Nebulizer_Uninstall_Tool_V0_1_0 = CommandToolBuilder(tool="nebulizer_uninstall_tool", base_command=["nebulizer", "uninstall_tool"], inputs=[ToolInput(tag="in_remove_from_disk", input_type=Boolean(optional=True), prefix="--remove_from_disk", doc=InputDocumentation(doc="remove the uninstalled tool from disk (otherwise tool is\njust deactivated).")), ToolInput(tag="in_yes", input_type=Boolean(optional=True), prefix="--yes", doc=InputDocumentation(doc="don't ask for confirmation of uninstallation.")), ToolInput(tag="in_fast_qc", input_type=String(), position=0, doc=InputDocumentation(doc="The tool must already be present in GALAXY; a revision must be specified"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nebulizer_Uninstall_Tool_V0_1_0().translate("wdl", allow_empty_container=True)

