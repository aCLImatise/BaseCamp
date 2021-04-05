from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Make_Database_Sh_V0_1_0 = CommandToolBuilder(tool="make_database.sh", base_command=["make_database.sh"], inputs=[ToolInput(tag="in_found", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="found"))], outputs=[], container="quay.io/biocontainers/siann:1.2--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Database_Sh_V0_1_0().translate("wdl")

