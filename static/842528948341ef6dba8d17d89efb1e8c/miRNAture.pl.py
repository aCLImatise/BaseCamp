from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mirnature_Pl_V0_1_0 = CommandToolBuilder(tool="miRNAture.pl", base_command=["miRNAture.pl"], inputs=[ToolInput(tag="in_man", input_type=String(optional=True), prefix="-man", doc=InputDocumentation(doc="documentation"))], outputs=[], container="quay.io/biocontainers/mirnature:1.0--pl5262r35hdfd78af_2", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mirnature_Pl_V0_1_0().translate("wdl")

