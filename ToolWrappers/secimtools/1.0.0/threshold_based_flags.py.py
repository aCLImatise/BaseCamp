from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Threshold_Based_Flags_Py_V0_1_0 = CommandToolBuilder(tool="threshold_based_flags.py", base_command=["threshold_based_flags.py"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Input dataset in wide format.")), ToolInput(tag="in_design", input_type=File(optional=True), prefix="--design", doc=InputDocumentation(doc="Design file.")), ToolInput(tag="in_id", input_type=String(optional=True), prefix="--ID", doc=InputDocumentation(doc="Name of the column with unique: identifiers.")), ToolInput(tag="in_group", input_type=String(optional=True), prefix="--group", doc=InputDocumentation(doc="Add the option to separate sample IDs by treatement\nname.")), ToolInput(tag="in_cut_off", input_type=Int(optional=True), prefix="--cutoff", doc=InputDocumentation(doc="Cutoff to use for which values to flag. This defaults\nto 30,000")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output path for the created flag file.\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output path for the created flag file.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Threshold_Based_Flags_Py_V0_1_0().translate("wdl", allow_empty_container=True)

