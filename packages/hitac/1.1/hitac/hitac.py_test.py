from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hitac_Py_Test_V0_1_0 = CommandToolBuilder(tool="hitac.py_test", base_command=["hitac.py", "test"], inputs=[ToolInput(tag="in_threads", input_type=String(optional=True), prefix="--threads", doc=InputDocumentation(doc="")), ToolInput(tag="in_km_er", input_type=String(optional=True), prefix="--kmer", doc=InputDocumentation(doc="")), ToolInput(tag="in_hit_a_cdot_py", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_train", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_test", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_predictions", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hitac_Py_Test_V0_1_0().translate("wdl", allow_empty_container=True)

