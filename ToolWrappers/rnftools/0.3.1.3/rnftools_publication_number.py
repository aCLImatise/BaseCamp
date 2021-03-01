from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rnftools_Publication_Number_V0_1_0 = CommandToolBuilder(tool="rnftools_publication_number", base_command=["rnftools", "publication", "number"], inputs=[ToolInput(tag="in_rnf_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_publication", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnftools_Publication_Number_V0_1_0().translate("wdl", allow_empty_container=True)

