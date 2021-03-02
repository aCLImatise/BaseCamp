from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Directory, Boolean, String

Enrichm_Predict_V0_1_0 = CommandToolBuilder(tool="enrichm_predict", base_command=["enrichm", "predict"], inputs=[ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Output logging information to this file.")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Level of verbosity (1 - 5 - default = 4) 5 = Very verbose, 1 = Silent")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Overwrite previous run")), ToolInput(tag="in_forester_model_directory", input_type=Directory(optional=True), prefix="--forester_model_directory", doc=InputDocumentation(doc="Pickled model to use")), ToolInput(tag="in_input_matrix", input_type=String(optional=True), prefix="--input_matrix", doc=InputDocumentation(doc="matrix of data to predict\n"))], outputs=[ToolOutput(tag="out_log", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log", type_hint=File()), doc=OutputDocumentation(doc="Output logging information to this file.")), ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Enrichm_Predict_V0_1_0().translate("wdl", allow_empty_container=True)

