from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Svm_Subset_Py_V0_1_0 = CommandToolBuilder(tool="svm_subset.py", base_command=["svm-subset.py"], inputs=[ToolInput(tag="in_method_selection_default", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc=": method of selection (default 0)\n0 -- stratified selection (classification only)\n1 -- random selection"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svm_Subset_Py_V0_1_0().translate("wdl", allow_empty_container=True)

