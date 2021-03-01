from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Filtergenesin_Pl_V0_1_0 = CommandToolBuilder(tool="filterGenesIn.pl", base_command=["filterGenesIn.pl"], inputs=[ToolInput(tag="in_name_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_dbfile", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filtergenesin_Pl_V0_1_0().translate("wdl")

