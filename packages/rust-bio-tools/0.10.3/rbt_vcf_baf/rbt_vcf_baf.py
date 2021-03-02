from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rbt_Vcf_Baf_V0_1_0 = CommandToolBuilder(tool="rbt_vcf_baf", base_command=["rbt", "vcf-baf"], inputs=[ToolInput(tag="in_rbt", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rbt_Vcf_Baf_V0_1_0().translate("wdl", allow_empty_container=True)

