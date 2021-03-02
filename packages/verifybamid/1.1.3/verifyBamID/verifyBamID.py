from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Verifybamid_V0_1_0 = CommandToolBuilder(tool="verifyBamID", base_command=["verifyBamID"], inputs=[ToolInput(tag="in_vcf", input_type=Boolean(optional=True), prefix="--vcf", doc=InputDocumentation(doc="[vcf file] required"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Verifybamid_V0_1_0().translate("wdl", allow_empty_container=True)

