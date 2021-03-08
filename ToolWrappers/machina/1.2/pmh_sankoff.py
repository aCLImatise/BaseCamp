from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Pmh_Sankoff_V0_1_0 = CommandToolBuilder(tool="pmh_sankoff", base_command=["pmh_sankoff"], inputs=[ToolInput(tag="in_color_map_file", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc="Color map file")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="Output prefix")), ToolInput(tag="in_primary_anatomical_sites", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="Primary anatomical sites separated by commas (if omitted, every\nanatomical site will be considered iteratively as the primary)\n")), ToolInput(tag="in_leaf_labeling", input_type=String(), position=0, doc=InputDocumentation(doc="Leaf labeling"))], outputs=[], container="quay.io/biocontainers/machina:1.2--h176a8bc_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pmh_Sankoff_V0_1_0().translate("wdl")

