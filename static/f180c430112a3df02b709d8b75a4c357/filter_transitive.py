from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Filter_Transitive_V0_1_0 = CommandToolBuilder(tool="filter_transitive", base_command=["filter_transitive"], inputs=[ToolInput(tag="in_depot", input_type=Boolean(optional=True), prefix="--depot", doc=InputDocumentation(doc="depot path (string)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Transitive_V0_1_0().translate("wdl", allow_empty_container=True)

