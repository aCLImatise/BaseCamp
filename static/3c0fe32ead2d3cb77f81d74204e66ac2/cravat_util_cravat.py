from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Cravat_Util_Cravat_V0_1_0 = CommandToolBuilder(tool="cravat_util_cravat", base_command=["cravat-util", "cravat"], inputs=[ToolInput(tag="in_cravat_util", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cravat_Util_Cravat_V0_1_0().translate("wdl")

