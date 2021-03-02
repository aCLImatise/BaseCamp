from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Directory, Boolean, String, Float

Enrichm_Generate_V0_1_0 = CommandToolBuilder(tool="enrichm_generate", base_command=["enrichm", "generate"], inputs=[ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Output logging information to this file.")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Level of verbosity (1 - 5 - default = 4) 5 = Very verbose, 1 = Silent")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="Output directory")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Overwrite previous run")), ToolInput(tag="in_input_matrix", input_type=String(optional=True), prefix="--input_matrix", doc=InputDocumentation(doc="input matrix of results")), ToolInput(tag="in_groups", input_type=String(optional=True), prefix="--groups", doc=InputDocumentation(doc="defined outcomes to train the data to")), ToolInput(tag="in_model_type", input_type=String(optional=True), prefix="--model_type", doc=InputDocumentation(doc="regressor or classifier")), ToolInput(tag="in_testing_portion", input_type=Float(optional=True), prefix="--testing_portion", doc=InputDocumentation(doc="portion of the input data to use for testing (default = 0.2)")), ToolInput(tag="in_grid_search", input_type=Boolean(optional=True), prefix="--grid_search", doc=InputDocumentation(doc="grid search")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads to use for hyperparameterization (default = all available)"))], outputs=[ToolOutput(tag="out_log", output_type=File(optional=True), selector=InputSelector(input_to_select="in_log", type_hint=File()), doc=OutputDocumentation(doc="Output logging information to this file.")), ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Enrichm_Generate_V0_1_0().translate("wdl", allow_empty_container=True)

