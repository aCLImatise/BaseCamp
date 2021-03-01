from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Gem_2_Bed_Mappability_V0_1_0 = CommandToolBuilder(tool="gem_2_bed_mappability", base_command=["gem-2-bed", "mappability"], inputs=[ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="(mandatory)")), ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="(default=stdin)")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="(mandatory)"))], outputs=[], container="quay.io/biocontainers/gem2:20200110--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gem_2_Bed_Mappability_V0_1_0().translate("wdl")

