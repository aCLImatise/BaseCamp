from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Locarna_Mea_Pl_V0_1_0 = CommandToolBuilder(tool="locarna_mea.pl", base_command=["locarna-mea.pl"], inputs=[ToolInput(tag="in_man", input_type=String(optional=True), prefix="--man", doc=InputDocumentation(doc="documentation")), ToolInput(tag="in_loca_rna_me_a", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Locarna_Mea_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

