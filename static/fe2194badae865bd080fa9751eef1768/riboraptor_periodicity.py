from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Riboraptor_Periodicity_V0_1_0 = CommandToolBuilder(tool="riboraptor_periodicity", base_command=["riboraptor", "periodicity"], inputs=[ToolInput(tag="in_counts", input_type=File(optional=True), prefix="--counts", doc=InputDocumentation(doc="Path to counts file (if not stdin)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Riboraptor_Periodicity_V0_1_0().translate("wdl", allow_empty_container=True)

