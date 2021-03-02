from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pfamtogoparser_Pl_V0_1_0 = CommandToolBuilder(tool="PFAMtoGoParser.pl", base_command=["PFAMtoGoParser.pl"], inputs=[ToolInput(tag="in_pfam_to_go", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pfamtogoparser_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

