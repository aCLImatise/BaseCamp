from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Svm_Predict_V0_1_0 = CommandToolBuilder(tool="svm_predict", base_command=["svm-predict"], inputs=[ToolInput(tag="in_predict_probability_estimates", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc=": whether to predict probability estimates, 0 or 1 (default 0); for one-class SVM only 0 is supported")), ToolInput(tag="in_quiet_mode_outputs", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": quiet mode (no outputs)")), ToolInput(tag="in_test_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_model_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svm_Predict_V0_1_0().translate("wdl", allow_empty_container=True)

