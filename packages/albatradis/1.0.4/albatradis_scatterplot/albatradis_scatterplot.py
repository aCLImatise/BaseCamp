from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean

Albatradis_Scatterplot_V0_1_0 = CommandToolBuilder(tool="albatradis_scatterplot", base_command=["albatradis-scatterplot"], inputs=[ToolInput(tag="in_control", input_type=Int(optional=True), prefix="--control", doc=InputDocumentation(doc="control files (use 2 or more) (default: None)")), ToolInput(tag="in_condition", input_type=Int(optional=True), prefix="--condition", doc=InputDocumentation(doc="condition files (use 2 or more) (default: None)")), ToolInput(tag="in_window_size", input_type=Int(optional=True), prefix="--window_size", doc=InputDocumentation(doc="Window size (default: 50)")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--outputfile", doc=InputDocumentation(doc="Output filename prefix (default: scatter)")), ToolInput(tag="in_normalise", input_type=Boolean(optional=True), prefix="--normalise", doc=InputDocumentation(doc="normalise the files (default: False)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print out more information while it runs (default:\nFalse)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Turn on debugging (default: False)"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output filename prefix (default: scatter)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Albatradis_Scatterplot_V0_1_0().translate("wdl", allow_empty_container=True)

