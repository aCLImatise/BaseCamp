from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Banner_Predict_V0_1_0 = CommandToolBuilder(tool="banner_predict", base_command=["banner", "predict"], inputs=[ToolInput(tag="in_model", input_type=String(optional=True), prefix="--model", doc=InputDocumentation(doc="The model that banner trained")), ToolInput(tag="in_probability", input_type=String(optional=True), prefix="--probability", doc=InputDocumentation(doc="The probability threshold for reporting\nclassifications")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print all predictions and probability, even if\nthreshold not met yet\n")), ToolInput(tag="in_banner", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Banner_Predict_V0_1_0().translate("wdl", allow_empty_container=True)

