from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Microsyntenyplot_V0_1_0 = CommandToolBuilder(tool="MicroSyntenyPlot", base_command=["MicroSyntenyPlot"], inputs=[ToolInput(tag="in_string_homologybyxcorr_output", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="<string> : HomologyByXCorr output file"))], outputs=[ToolOutput(tag="out_string_homologybyxcorr_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_string_homologybyxcorr_output", type_hint=File()), doc=OutputDocumentation(doc="<string> : HomologyByXCorr output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Microsyntenyplot_V0_1_0().translate("wdl", allow_empty_container=True)

