from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Spacepharer_Downloadgenome_V0_1_0 = CommandToolBuilder(tool="spacepharer_downloadgenome", base_command=["spacepharer", "downloadgenome"], inputs=[ToolInput(tag="in_reverse_set_db", input_type=Int(optional=True), prefix="--reverse-setdb", doc=InputDocumentation(doc="Create additional setDB with reversed fragments to compute under null [0,1] [1]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]")), ToolInput(tag="in_name", input_type=String(), position=0, doc=InputDocumentation(doc="- GenBank_phage_2018_09 "))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spacepharer_Downloadgenome_V0_1_0().translate("wdl", allow_empty_container=True)

