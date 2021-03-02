from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Create_Coordinates_V0_1_0 = CommandToolBuilder(tool="create_coordinates", base_command=["create_coordinates"], inputs=[ToolInput(tag="in_input_vcf", input_type=String(optional=True), prefix="--input_vcf", doc=InputDocumentation(doc="VCF input")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="output coordinates to write (default: stdout)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Create_Coordinates_V0_1_0().translate("wdl", allow_empty_container=True)

