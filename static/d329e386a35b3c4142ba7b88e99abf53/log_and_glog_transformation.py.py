from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Log_And_Glog_Transformation_Py_V0_1_0 = CommandToolBuilder(tool="log_and_glog_transformation.py", base_command=["log_and_glog_transformation.py"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input dataset in wide format.")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file.")), ToolInput(tag="in_uniqid", input_type=String(optional=True), prefix="--uniqID", doc=InputDocumentation(doc="Name of the column with unique identifiers.")), ToolInput(tag="in_transformation", input_type=String(optional=True), prefix="--transformation", doc=InputDocumentation(doc="Type of transformation to use (log vs glog)")), ToolInput(tag="in_log_base", input_type=String(optional=True), prefix="--log_base", doc=InputDocumentation(doc="Base of the logarithm to use")), ToolInput(tag="in_lambda_value", input_type=String(optional=True), prefix="--lambda_value", doc=InputDocumentation(doc="Lambda parameter which is used only for G-Log\ntransformation.")), ToolInput(tag="in_o_name", input_type=File(optional=True), prefix="--oname", doc=InputDocumentation(doc="Output file name.")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Add debugging log output."))], outputs=[ToolOutput(tag="out_o_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_o_name", type_hint=File()), doc=OutputDocumentation(doc="Output file name."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Log_And_Glog_Transformation_Py_V0_1_0().translate("wdl", allow_empty_container=True)

