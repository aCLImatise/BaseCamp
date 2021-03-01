from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Scvis_Train_V0_1_0 = CommandToolBuilder(tool="scvis_train", base_command=["scvis", "train"], inputs=[ToolInput(tag="in_data_matrix_file", input_type=File(optional=True), prefix="--data_matrix_file", doc=InputDocumentation(doc="The high-dimensional data matrix")), ToolInput(tag="in_config_file", input_type=File(optional=True), prefix="--config_file", doc=InputDocumentation(doc="Path to a yaml format configuration file")), ToolInput(tag="in_out_dir", input_type=File(optional=True), prefix="--out_dir", doc=InputDocumentation(doc="Path for output files")), ToolInput(tag="in_data_label_file", input_type=File(optional=True), prefix="--data_label_file", doc=InputDocumentation(doc="Just used for colouring scatter plots")), ToolInput(tag="in_pre_trained_model_file", input_type=File(optional=True), prefix="--pretrained_model_file", doc=InputDocumentation(doc="A pretrained scvis model, continue to train this model")), ToolInput(tag="in_normalize", input_type=Int(optional=True), prefix="--normalize", doc=InputDocumentation(doc="The data will be divided by this number if provided\n(default: the maximum value).")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print running information")), ToolInput(tag="in_verbose_interval", input_type=String(optional=True), prefix="--verbose_interval", doc=InputDocumentation(doc="Print running information after running # of mini-\nbatches")), ToolInput(tag="in_show_plot", input_type=Boolean(optional=True), prefix="--show_plot", doc=InputDocumentation(doc="Plot intermediate embedding when this parameter is set"))], outputs=[ToolOutput(tag="out_out_dir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_dir", type_hint=File()), doc=OutputDocumentation(doc="Path for output files"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scvis_Train_V0_1_0().translate("wdl", allow_empty_container=True)

