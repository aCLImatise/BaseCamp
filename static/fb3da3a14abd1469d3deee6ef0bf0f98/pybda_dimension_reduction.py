from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pybda_Dimension_Reduction_V0_1_0 = CommandToolBuilder(tool="pybda_dimension_reduction", base_command=["pybda", "dimension-reduction"], inputs=[ToolInput(tag="in_config", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_spark", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pybda_Dimension_Reduction_V0_1_0().translate("wdl", allow_empty_container=True)

