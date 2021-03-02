from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Varscan_Processsomatic_V0_1_0 = CommandToolBuilder(tool="varscan_processSomatic", base_command=["varscan", "processSomatic"], inputs=[ToolInput(tag="in_max_normal_freq", input_type=Boolean(optional=True), prefix="--max-normal-freq", doc=InputDocumentation(doc="- Maximum variant allele frequency in normal [0.05]")), ToolInput(tag="in_p_value", input_type=Boolean(optional=True), prefix="--p-value", doc=InputDocumentation(doc="- P-value for high-confidence calling [0.07]")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc="--min-tumor-freq - Minimum variant allele frequency in tumor [0.10]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varscan_Processsomatic_V0_1_0().translate("wdl", allow_empty_container=True)

