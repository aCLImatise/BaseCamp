from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Proteinortho2Tree_Pl_V0_1_0 = CommandToolBuilder(tool="proteinortho2tree.pl", base_command=["proteinortho2tree.pl"], inputs=[ToolInput(tag="in_ortho_matrix", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/proteinortho:6.0.29--hb0e25da_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Proteinortho2Tree_Pl_V0_1_0().translate("wdl")

