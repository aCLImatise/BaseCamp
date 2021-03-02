from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Funcannot_V0_1_0 = CommandToolBuilder(tool="funcannot", base_command=["funcannot"], inputs=[ToolInput(tag="in_geneid", input_type=File(optional=True), prefix="--geneid", doc=InputDocumentation(doc="specifies common genelist identifier in VCF file(s)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Funcannot_V0_1_0().translate("wdl", allow_empty_container=True)

