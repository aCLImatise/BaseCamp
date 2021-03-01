from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Check_Disorder_Pl_V0_1_0 = CommandToolBuilder(tool="check_disorder.pl", base_command=["check-disorder.pl"], inputs=[ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="list all IDs that have children features appearing in front of themselves"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Check_Disorder_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

