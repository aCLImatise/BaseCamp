from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ktgettaxinfo_V0_1_0 = CommandToolBuilder(tool="ktGetTaxInfo", base_command=["ktGetTaxInfo"], inputs=[ToolInput(tag="in_taxid", input_type=String(), position=0, doc=InputDocumentation(doc="depth  parent  rank  name"))], outputs=[], container="quay.io/biocontainers/krona:2.8--pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktgettaxinfo_V0_1_0().translate("wdl")

