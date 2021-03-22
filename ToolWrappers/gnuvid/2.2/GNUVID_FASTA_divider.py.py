from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Gnuvid_Fasta_Divider_Py_V0_1_0 = CommandToolBuilder(tool="GNUVID_FASTA_divider.py", base_command=["GNUVID_FASTA_divider.py"], inputs=[ToolInput(tag="in_n", input_type=String(optional=True), prefix="-N", doc=InputDocumentation(doc="")), ToolInput(tag="in_l", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/gnuvid:2.2--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gnuvid_Fasta_Divider_Py_V0_1_0().translate("wdl")

