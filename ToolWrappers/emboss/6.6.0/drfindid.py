from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Drfindid_V0_1_0 = CommandToolBuilder(tool="drfindid", base_command=["drfindid"], inputs=[ToolInput(tag="in_sensitive", input_type=Boolean(optional=True), prefix="-sensitive", doc=InputDocumentation(doc="boolean    [N] By default, the query keywords are\nmatched against the EDAM term names (and\nsynonyms) only. This option also matches the\nkeywords against the EDAM term definitions\nand will therefore (typically) report more\nmatches."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drfindid_V0_1_0().translate("wdl", allow_empty_container=True)

