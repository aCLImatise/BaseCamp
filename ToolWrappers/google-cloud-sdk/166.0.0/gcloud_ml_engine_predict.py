from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Gcloud_Ml_Engine_Predict_V0_1_0 = CommandToolBuilder(tool="gcloud_ml_engine_predict", base_command=["gcloud", "ml-engine", "predict"], inputs=[ToolInput(tag="in_model", input_type=String(optional=True), prefix="--model", doc=InputDocumentation(doc="Name of the model.")), ToolInput(tag="in_json_instances", input_type=File(optional=True), prefix="--json-instances", doc=InputDocumentation(doc="Path to a local file from which instances are read. Instances are in\nJSON format; newline delimited.\nAn example of the JSON instances file:\n{'images': [0.0, ..., 0.1], 'key': 3}\n{'images': [0.0, ..., 0.1], 'key': 2}\n...\nThis flag accepts '-' for stdin.")), ToolInput(tag="in_text_instances", input_type=File(optional=True), prefix="--text-instances", doc=InputDocumentation(doc="Path to a local file from which instances are read. Instances are in\nUTF-8 encoded text format; newline delimited.\nAn example of the text instances file:\n107,4.9,2.5,4.5,1.7\n100,5.7,2.8,4.1,1.3\n...\nThis flag accepts '-' for stdin."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Ml_Engine_Predict_V0_1_0().translate("wdl", allow_empty_container=True)

