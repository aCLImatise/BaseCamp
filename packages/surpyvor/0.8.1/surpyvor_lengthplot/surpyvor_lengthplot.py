from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Surpyvor_Lengthplot_V0_1_0 = CommandToolBuilder(tool="surpyvor_lengthplot", base_command=["surpyvor", "lengthplot"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print out more information while running.")), ToolInput(tag="in_plot_out", input_type=File(optional=True), prefix="--plotout", doc=InputDocumentation(doc="output file to write figure to")), ToolInput(tag="in_counts", input_type=File(optional=True), prefix="--counts", doc=InputDocumentation(doc="output file to write counts to\n"))], outputs=[ToolOutput(tag="out_plot_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_plot_out", type_hint=File()), doc=OutputDocumentation(doc="output file to write figure to")), ToolOutput(tag="out_counts", output_type=File(optional=True), selector=InputSelector(input_to_select="in_counts", type_hint=File()), doc=OutputDocumentation(doc="output file to write counts to\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Surpyvor_Lengthplot_V0_1_0().translate("wdl", allow_empty_container=True)

