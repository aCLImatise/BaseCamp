from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Rasusa_Flags_V0_1_0 = CommandToolBuilder(tool="rasusa_FLAGS", base_command=["rasusa", "FLAGS"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="")), ToolInput(tag="in_genome_size", input_type=Int(optional=True), prefix="--genome-size", doc=InputDocumentation(doc="")), ToolInput(tag="in_coverage", input_type=String(optional=True), prefix="--coverage", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rasusa_Flags_V0_1_0().translate("wdl", allow_empty_container=True)

