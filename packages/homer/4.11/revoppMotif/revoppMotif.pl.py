from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Revoppmotif_Pl_V0_1_0 = CommandToolBuilder(tool="revoppMotif.pl", base_command=["revoppMotif.pl"], inputs=[ToolInput(tag="in_motif_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Revoppmotif_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

