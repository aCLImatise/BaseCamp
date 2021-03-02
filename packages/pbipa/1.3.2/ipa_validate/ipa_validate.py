from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ipa_Validate_V0_1_0 = CommandToolBuilder(tool="ipa_validate", base_command=["ipa", "validate"], inputs=[ToolInput(tag="in_ipa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pbipa:1.3.2--hee625c5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ipa_Validate_V0_1_0().translate("wdl")

