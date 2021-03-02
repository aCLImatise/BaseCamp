from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Circos_Ambiguous__V0_1_0 = CommandToolBuilder(tool="circos_ambiguous.", base_command=["circos", "ambiguous."], inputs=[ToolInput(tag="in_hood", input_type=String(), position=0, doc=InputDocumentation(doc="http://www.circos.ca/documentation/tutorials/configuration/debugging"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Circos_Ambiguous__V0_1_0().translate("wdl", allow_empty_container=True)

