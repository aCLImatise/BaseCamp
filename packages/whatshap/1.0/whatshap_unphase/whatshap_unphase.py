from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Whatshap_Unphase_V0_1_0 = CommandToolBuilder(tool="whatshap_unphase", base_command=["whatshap", "unphase"], inputs=[ToolInput(tag="in_vcf", input_type=String(), position=0, doc=InputDocumentation(doc="VCF file. Use '-' to read from standard input"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Whatshap_Unphase_V0_1_0().translate("wdl", allow_empty_container=True)

