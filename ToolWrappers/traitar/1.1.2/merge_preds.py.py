from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Merge_Preds_Py_V0_1_0 = CommandToolBuilder(tool="merge_preds.py", base_command=["merge_preds.py"], inputs=[ToolInput(tag="in_combine", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_the", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_misclassified", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_samples", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_of", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_different", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_phenotypes", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_into", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_data", input_type=String(), position=8, doc=InputDocumentation(doc="")), ToolInput(tag="in_matrices", input_type=String(), position=9, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Preds_Py_V0_1_0().translate("wdl", allow_empty_container=True)

