from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Proteinortho_Extract_From_Graph_Pl_V0_1_0 = CommandToolBuilder(tool="proteinortho_extract_from_graph.pl", base_command=["proteinortho_extract_from_graph.pl"], inputs=[ToolInput(tag="in_protein_ortho_table", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Proteinortho_Extract_From_Graph_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

