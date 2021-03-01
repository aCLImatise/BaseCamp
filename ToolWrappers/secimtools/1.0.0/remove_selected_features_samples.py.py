from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Remove_Selected_Features_Samples_Py_V0_1_0 = CommandToolBuilder(tool="remove_selected_features_samples.py", base_command=["remove_selected_features_samples.py"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input dataset in wide format.")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file.")), ToolInput(tag="in_id", input_type=String(optional=True), prefix="--ID", doc=InputDocumentation(doc="Name of the column with unique identifiers.")), ToolInput(tag="in_flags", input_type=File(optional=True), prefix="--flags", doc=InputDocumentation(doc="Flag file.")), ToolInput(tag="in_flag_file_type", input_type=String(optional=True), prefix="--flagfiletype", doc=InputDocumentation(doc="Type of flag file")), ToolInput(tag="in_flag_uniqid", input_type=String(optional=True), prefix="--flagUniqID", doc=InputDocumentation(doc="Name of the column with unique identifiers in the flag\nfiles.")), ToolInput(tag="in_flag_drop", input_type=String(optional=True), prefix="--flagDrop", doc=InputDocumentation(doc="Name of the flag/field you want to access.")), ToolInput(tag="in_value", input_type=String(optional=True), prefix="--value", doc=InputDocumentation(doc="Cut Value")), ToolInput(tag="in_condition", input_type=Int(optional=True), prefix="--condition", doc=InputDocumentation(doc="Condition for the cutwhere 0=Equal to, 1=Greater than\nand 2=less than.")), ToolInput(tag="in_out_wide", input_type=File(optional=True), prefix="--outWide", doc=InputDocumentation(doc="Output file without the Drops.")), ToolInput(tag="in_out_flags", input_type=File(optional=True), prefix="--outFlags", doc=InputDocumentation(doc="Output file for Drops.\n"))], outputs=[ToolOutput(tag="out_out_wide", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_wide", type_hint=File()), doc=OutputDocumentation(doc="Output file without the Drops.")), ToolOutput(tag="out_out_flags", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_flags", type_hint=File()), doc=OutputDocumentation(doc="Output file for Drops.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Remove_Selected_Features_Samples_Py_V0_1_0().translate("wdl", allow_empty_container=True)

