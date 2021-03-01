from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Phyluce_Assembly_Screen_Probes_For_Dupes_V0_1_0 = CommandToolBuilder(tool="phyluce_assembly_screen_probes_for_dupes", base_command=["phyluce_assembly_screen_probes_for_dupes"], inputs=[ToolInput(tag="in_last_z", input_type=String(optional=True), prefix="--lastz", doc=InputDocumentation(doc="The lastz input"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Assembly_Screen_Probes_For_Dupes_V0_1_0().translate("wdl", allow_empty_container=True)

