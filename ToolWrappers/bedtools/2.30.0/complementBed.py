from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Complementbed_V0_1_0 = CommandToolBuilder(tool="complementBed", base_command=["complementBed"], inputs=[ToolInput(tag="in_limit_output_solely", input_type=Boolean(optional=True), prefix="-L", doc=InputDocumentation(doc="Limit output to solely the chromosomes with records in the input file.")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_bed_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_complement", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Complementbed_V0_1_0().translate("wdl")

