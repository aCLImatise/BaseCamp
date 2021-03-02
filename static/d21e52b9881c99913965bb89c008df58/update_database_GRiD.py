from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Update_Database_Grid_V0_1_0 = CommandToolBuilder(tool="update_database_GRiD", base_command=["update_database", "GRiD"], inputs=[ToolInput(tag="in__is_required", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="[option] is required"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Update_Database_Grid_V0_1_0().translate("wdl", allow_empty_container=True)

