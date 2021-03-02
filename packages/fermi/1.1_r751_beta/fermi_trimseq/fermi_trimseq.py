from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Fermi_Trimseq_V0_1_0 = CommandToolBuilder(tool="fermi_trimseq", base_command=["fermi", "trimseq"], inputs=[ToolInput(tag="in_n", input_type=Boolean(optional=True), prefix="-N", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fermi_Trimseq_V0_1_0().translate("wdl", allow_empty_container=True)

