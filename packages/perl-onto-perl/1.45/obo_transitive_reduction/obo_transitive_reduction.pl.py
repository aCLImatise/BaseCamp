from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Obo_Transitive_Reduction_Pl_V0_1_0 = CommandToolBuilder(tool="obo_transitive_reduction.pl", base_command=["obo_transitive_reduction.pl"], inputs=[ToolInput(tag="in_obo_input_file", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="OBO input file"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Obo_Transitive_Reduction_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

