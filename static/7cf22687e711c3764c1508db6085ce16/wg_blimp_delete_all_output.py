from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Wg_Blimp_Delete_All_Output_V0_1_0 = CommandToolBuilder(tool="wg_blimp_delete_all_output", base_command=["wg-blimp", "delete-all-output"], inputs=[ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dry-run", doc=InputDocumentation(doc="Only dry-run deleting the pipeline output.")), ToolInput(tag="in_yes", input_type=Boolean(optional=True), prefix="--yes", doc=InputDocumentation(doc="Confirm the action without prompting.")), ToolInput(tag="in_config_yaml", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wg_Blimp_Delete_All_Output_V0_1_0().translate("wdl", allow_empty_container=True)

