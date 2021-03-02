from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Alleyoop_Rates_Bam_V0_1_0 = CommandToolBuilder(tool="alleyoop_rates_bam", base_command=["alleyoop", "rates", "bam"], inputs=[ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_mq", input_type=String(optional=True), prefix="-mq", doc=InputDocumentation(doc="")), ToolInput(tag="in_r", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_alley_oop", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_rates", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alleyoop_Rates_Bam_V0_1_0().translate("wdl", allow_empty_container=True)

