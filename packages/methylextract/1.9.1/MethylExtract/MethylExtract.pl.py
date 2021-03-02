from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Methylextract_Pl_V0_1_0 = CommandToolBuilder(tool="MethylExtract.pl", base_command=["MethylExtract.pl"], inputs=[ToolInput(tag="in_accepted_parameter_check", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="not an accepted parameter, please check spelling and case sensitive"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Methylextract_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

