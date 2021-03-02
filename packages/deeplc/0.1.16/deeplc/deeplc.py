from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Array, Int, Boolean, String

Deeplc_V0_1_0 = CommandToolBuilder(tool="deeplc", base_command=["deeplc"], inputs=[ToolInput(tag="in_file_pred", input_type=File(optional=True), prefix="--file_pred", doc=InputDocumentation(doc="Path to peptide file for which to make predictions\n(required)")), ToolInput(tag="in_file_cal", input_type=File(optional=True), prefix="--file_cal", doc=InputDocumentation(doc="Path to peptide file with retention times to use for\ncalibration (optional)")), ToolInput(tag="in_file_pred_out", input_type=File(optional=True), prefix="--file_pred_out", doc=InputDocumentation(doc="Path to output file with predictions (optional)")), ToolInput(tag="in_file_model", input_type=Array(t=File(), optional=True), prefix="--file_model", doc=InputDocumentation(doc="Path to prediction model(s). Seperate with spaces.\nLeave empty to select the best of the default models\n(optional)")), ToolInput(tag="in_dict_divider", input_type=Int(optional=True), prefix="--dict_divider", doc=InputDocumentation(doc="Batch size (in peptides) for predicting the retention\ntime. Set lower to decrease memory footprint\n(optional, default=250000)")), ToolInput(tag="in_plot_predictions", input_type=Boolean(optional=True), prefix="--plot_predictions", doc=InputDocumentation(doc="Save scatter plot of predictions vs observations\n(default=False)")), ToolInput(tag="in_n_threads", input_type=Int(optional=True), prefix="--n_threads", doc=InputDocumentation(doc="Number of threads to use (optional, default=maximum\navailable)")), ToolInput(tag="in_log_level", input_type=String(optional=True), prefix="--log_level", doc=InputDocumentation(doc="Logging level (debug, info, warning, error, or\ncritical; default=info)"))], outputs=[ToolOutput(tag="out_file_pred_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_file_pred_out", type_hint=File()), doc=OutputDocumentation(doc="Path to output file with predictions (optional)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deeplc_V0_1_0().translate("wdl", allow_empty_container=True)

