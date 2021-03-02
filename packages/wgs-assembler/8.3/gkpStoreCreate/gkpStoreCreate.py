from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gkpstorecreate_V0_1_0 = CommandToolBuilder(tool="gkpStoreCreate", base_command=["gkpStoreCreate"], inputs=[ToolInput(tag="in_create_this_gkpstore", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="create this gkpStore"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gkpstorecreate_V0_1_0().translate("wdl", allow_empty_container=True)

