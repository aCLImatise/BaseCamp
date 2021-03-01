from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Array, String

Location_Predictor_Fit_V0_1_0 = CommandToolBuilder(tool="location_predictor_fit", base_command=["location_predictor", "fit"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Path to file containing input. (default: None)")), ToolInput(tag="in_model_file", input_type=File(optional=True), prefix="--model-file", doc=InputDocumentation(doc="Path to a fit model file. (default: model)")), ToolInput(tag="in_output_dir", input_type=File(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Path to output directory. (default: out)")), ToolInput(tag="in_selected_column_names", input_type=Array(t=String(), optional=True), prefix="--selected-column-names", doc=InputDocumentation(doc=".... (default: None)"))], outputs=[ToolOutput(tag="out_output_dir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Path to output directory. (default: out)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Location_Predictor_Fit_V0_1_0().translate("wdl", allow_empty_container=True)

