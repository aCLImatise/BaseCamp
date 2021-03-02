from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Regtools_Cis_Ase_V0_1_0 = CommandToolBuilder(tool="regtools_cis_ase", base_command=["regtools", "cis-ase"], inputs=[ToolInput(tag="in_command", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Regtools_Cis_Ase_V0_1_0().translate("wdl", allow_empty_container=True)

