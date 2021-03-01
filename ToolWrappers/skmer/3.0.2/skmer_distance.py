from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int

Skmer_Distance_V0_1_0 = CommandToolBuilder(tool="skmer_distance", base_command=["skmer", "distance"], inputs=[ToolInput(tag="in_output_distances_prefix", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="Output (distances) prefix. Default: ref-dist-mat")), ToolInput(tag="in_apply_jukescantor_transformation", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Apply Jukes-Cantor transformation to distances. Output 5.0 if\nnot applicable")), ToolInput(tag="in_max_number_use", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="Max number of processors to use [1-8]. Default for this machine:\n8\n")), ToolInput(tag="in_library", input_type=String(), position=0, doc=InputDocumentation(doc="Directory of the input (processed) library"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Skmer_Distance_V0_1_0().translate("wdl", allow_empty_container=True)

