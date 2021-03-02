from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Plink_V0_1_0 = CommandToolBuilder(tool="plink", base_command=["plink"], inputs=[ToolInput(tag="in_list_duplicate_vars", input_type=Boolean(optional=True), prefix="--list-duplicate-vars", doc=InputDocumentation(doc=", and --score."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plink_V0_1_0().translate("wdl", allow_empty_container=True)

