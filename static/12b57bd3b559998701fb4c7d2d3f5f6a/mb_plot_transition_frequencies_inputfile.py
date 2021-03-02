from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mb_Plot_Transition_Frequencies_Inputfile_V0_1_0 = CommandToolBuilder(tool="mb_plot_transition_frequencies_inputfile", base_command=["mb-plot-transition-frequencies", "inputfile"], inputs=[ToolInput(tag="in_coverage", input_type=String(optional=True), prefix="--coverage", doc=InputDocumentation(doc="")), ToolInput(tag="in_mb_plot_transition_frequencies", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Plot_Transition_Frequencies_Inputfile_V0_1_0().translate("wdl", allow_empty_container=True)

