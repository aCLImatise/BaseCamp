from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Consent_Correction_V0_1_0 = CommandToolBuilder(tool="CONSENT_correction", base_command=["CONSENT-correction"], inputs=[ToolInput(tag="in_c", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_p", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_e", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_l", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_s", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_k", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/consent:2.2.2--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Consent_Correction_V0_1_0().translate("wdl")

