from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Proteinortho2Html_Pl_V0_1_0 = CommandToolBuilder(tool="proteinortho2html.pl", base_command=["proteinortho2html.pl"], inputs=[ToolInput(tag="in_my_project_dot_protein_ortho", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Proteinortho2Html_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

