from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tdrmappingscripts_Pl_V0_1_0 = CommandToolBuilder(tool="TdrMappingScripts.pl", base_command=["TdrMappingScripts.pl"], inputs=[ToolInput(tag="in_reference_trna_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tdrmappingscripts_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

