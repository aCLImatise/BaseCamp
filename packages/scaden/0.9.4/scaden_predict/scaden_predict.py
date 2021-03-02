from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Scaden_Predict_V0_1_0 = CommandToolBuilder(tool="scaden_predict", base_command=["scaden", "predict"], inputs=[ToolInput(tag="in_model_dir", input_type=File(optional=True), prefix="--model_dir", doc=InputDocumentation(doc="Path to trained model")), ToolInput(tag="in_out_name", input_type=File(optional=True), prefix="--outname", doc=InputDocumentation(doc="Name of predictions file.")), ToolInput(tag="in_prediction_data", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scaden_Predict_V0_1_0().translate("wdl", allow_empty_container=True)

