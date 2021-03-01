from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mcerunner_Pl_V0_1_0 = CommandToolBuilder(tool="mcerunner.pl", base_command=["mcerunner.pl"], inputs=[ToolInput(tag="in_using_mce", input_type=Boolean(optional=True), prefix="--using_mce", doc=InputDocumentation(doc="- Bool. Default=1."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mcerunner_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

