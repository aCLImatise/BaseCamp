from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mobster_To_Vcf_V0_1_0 = CommandToolBuilder(tool="mobster_to_vcf", base_command=["mobster-to-vcf"], inputs=[ToolInput(tag="in_mobster_to_vcf", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mobster_To_Vcf_V0_1_0().translate("wdl", allow_empty_container=True)

