from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Scorer_V0_1_0 = CommandToolBuilder(tool="scorer", base_command=["scorer"], inputs=[ToolInput(tag="in_exact", input_type=Boolean(optional=True), prefix="--exact", doc=InputDocumentation(doc="Specify exact comparison when structure comparison is scored.\nDefault is to allow flexible pairings.")), ToolInput(tag="in_print", input_type=File(optional=True), prefix="--print", doc=InputDocumentation(doc="Prints the output file to standard output. This won't override the default\nbehavior of writing to a file.")), ToolInput(tag="in_number", input_type=File(optional=True), prefix="--number", doc=InputDocumentation(doc="Specify the index of a particular structure in the predicted CT to be\ncompared with the accepted CT, one-indexed.\nDefault is -1, which signifies all structures output to one file.\n")), ToolInput(tag="in_predicted_ct", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_accepted_ct", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_print", output_type=File(optional=True), selector=InputSelector(input_to_select="in_print", type_hint=File()), doc=OutputDocumentation(doc="Prints the output file to standard output. This won't override the default\nbehavior of writing to a file.")), ToolOutput(tag="out_number", output_type=File(optional=True), selector=InputSelector(input_to_select="in_number", type_hint=File()), doc=OutputDocumentation(doc="Specify the index of a particular structure in the predicted CT to be\ncompared with the accepted CT, one-indexed.\nDefault is -1, which signifies all structures output to one file.\n")), ToolOutput(tag="out_output_file", output_type=File(), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scorer_V0_1_0().translate("wdl", allow_empty_container=True)

