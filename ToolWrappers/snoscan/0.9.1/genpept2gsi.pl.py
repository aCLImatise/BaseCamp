from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Genpept2Gsi_Pl_V0_1_0 = CommandToolBuilder(tool="genpept2gsi.pl", base_command=["genpept2gsi.pl"], inputs=[ToolInput(tag="in_help_dot_gsi", input_type=Int(optional=True), prefix="--help.gsi", doc=InputDocumentation(doc="0 sequence names."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Genpept2Gsi_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

