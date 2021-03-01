from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Svm_Classify_V0_1_0 = CommandToolBuilder(tool="svm_classify", base_command=["svm_classify"], inputs=[ToolInput(tag="in_verbosity_level_default", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[0..3]  -> verbosity level (default 2)")), ToolInput(tag="in_old_output_format", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="[0,1]   -> 0: old output format of V1.0\n-> 1: output the value of decision function (default)\n")), ToolInput(tag="in_example_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_model_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svm_Classify_V0_1_0().translate("wdl", allow_empty_container=True)

