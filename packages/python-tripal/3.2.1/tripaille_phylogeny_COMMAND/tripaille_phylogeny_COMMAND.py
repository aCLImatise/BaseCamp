from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tripaille_Phylogeny_Command_V0_1_0 = CommandToolBuilder(tool="tripaille_phylogeny_COMMAND", base_command=["tripaille", "phylogeny", "COMMAND"], inputs=[ToolInput(tag="in_args", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tripaille_Phylogeny_Command_V0_1_0().translate("wdl", allow_empty_container=True)

