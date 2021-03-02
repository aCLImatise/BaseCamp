from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Snpsift_Tstv_V0_1_0 = CommandToolBuilder(tool="SnpSift_tstv", base_command=["SnpSift", "tstv"], inputs=[ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ts_tv", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_one_dot_vcf", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snpsift_Tstv_V0_1_0().translate("wdl", allow_empty_container=True)

