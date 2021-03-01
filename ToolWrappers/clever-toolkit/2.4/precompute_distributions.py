from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Precompute_Distributions_V0_1_0 = CommandToolBuilder(tool="precompute_distributions", base_command=["precompute-distributions"], inputs=[ToolInput(tag="in_arg_value_are", input_type=Boolean(optional=True), prefix="-N", doc=InputDocumentation(doc="[ --max_count ] arg (=500) Value up to which distributions are to be\ncomputed.\n")), ToolInput(tag="in_distribution_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Precompute_Distributions_V0_1_0().translate("wdl", allow_empty_container=True)

