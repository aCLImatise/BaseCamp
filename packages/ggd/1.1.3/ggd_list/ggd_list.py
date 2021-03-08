from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Ggd_List_V0_1_0 = CommandToolBuilder(tool="ggd_list", base_command=["ggd", "list"], inputs=[ToolInput(tag="in_pattern", input_type=String(optional=True), prefix="--pattern", doc=InputDocumentation(doc="(Optional) pattern to match the name of the ggd data\npackage.")), ToolInput(tag="in_prefix", input_type=File(optional=True), prefix="--prefix", doc=InputDocumentation(doc="(Optional) The name or the full directory path to a\nconda environment where a ggd recipe is stored. (Only\nneeded if listing data files not in the current\nenvironment)\n"))], outputs=[], container="quay.io/biocontainers/ggd:1.1.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ggd_List_V0_1_0().translate("wdl")

