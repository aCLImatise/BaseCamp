from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Yamlpp5_Parse_Emit_V0_1_0 = CommandToolBuilder(tool="yamlpp5_parse_emit", base_command=["yamlpp5-parse-emit"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Yamlpp5_Parse_Emit_V0_1_0().translate("wdl", allow_empty_container=True)

