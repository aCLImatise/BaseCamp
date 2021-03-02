from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bedtools_Complement_V0_1_0 = CommandToolBuilder(tool="bedtools_complement", base_command=["bedtools", "complement"], inputs=[ToolInput(tag="in_limit_output_solely", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="Limit output to solely the chromosomes with records in the input file.")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtools_Complement_V0_1_0().translate("wdl", allow_empty_container=True)

