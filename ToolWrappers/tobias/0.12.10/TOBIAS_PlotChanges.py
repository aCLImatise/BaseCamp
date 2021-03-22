from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Tobias_Plotchanges_V0_1_0 = CommandToolBuilder(tool="TOBIAS_PlotChanges", base_command=["TOBIAS", "PlotChanges"], inputs=[ToolInput(tag="in_bin_detect", input_type=Boolean(optional=True), prefix="--bindetect", doc=InputDocumentation(doc="Bindetect_results.txt file from BINDetect run")), ToolInput(tag="in_tfs", input_type=Boolean(optional=True), prefix="--TFS", doc=InputDocumentation(doc="Text file containing names of TFs to show in plot (one per line)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file for plot (default: bindetect_changes.pdf)")), ToolInput(tag="in_conditions", input_type=Boolean(optional=True), prefix="--conditions", doc=InputDocumentation(doc="[ [ ...]]  Ordered list of conditions to show (default: conditions are\nordered as within the bindetect file)")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Level of output logging (0: silent, 1: errors/warnings, 2: info,\n3: stats, 4: debug, 5: spam) (default: 3)\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file for plot (default: bindetect_changes.pdf)"))], container="quay.io/biocontainers/tobias:0.12.10--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tobias_Plotchanges_V0_1_0().translate("wdl")

