from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Proteinortho_Do_Mcl_Pl_V0_1_0 = CommandToolBuilder(tool="proteinortho_do_mcl.pl", base_command=["proteinortho_do_mcl.pl"], inputs=[ToolInput(tag="in_cores", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_blast_graph_one", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/proteinortho:6.0.28--hfd40d39_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Proteinortho_Do_Mcl_Pl_V0_1_0().translate("wdl")

