from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Drfindresource_V0_1_0 = CommandToolBuilder(tool="drfindresource", base_command=["drfindresource"], inputs=[ToolInput(tag="in_sensitive", input_type=Boolean(optional=True), prefix="-sensitive", doc=InputDocumentation(doc="boolean    [N] By default, the query keywords are\nmatched against the EDAM term names (and\nsynonyms) only. This option also matches the\nkeywords against the EDAM term definitions\nand will therefore (typically) report more\nmatches.")), ToolInput(tag="in_name", input_type=String(), position=0, doc=InputDocumentation(doc="Additional (Optional) qualifiers: (none)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drfindresource_V0_1_0().translate("wdl", allow_empty_container=True)

