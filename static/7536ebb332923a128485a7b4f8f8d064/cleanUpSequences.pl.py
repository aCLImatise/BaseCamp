from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Cleanupsequences_Pl_V0_1_0 = CommandToolBuilder(tool="cleanUpSequences.pl", base_command=["cleanUpSequences.pl"], inputs=[ToolInput(tag="in_max", input_type=Boolean(optional=True), prefix="-max", doc=InputDocumentation(doc="# and -min # removes sequences that are longer than max and shorter than min(optional)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cleanupsequences_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

