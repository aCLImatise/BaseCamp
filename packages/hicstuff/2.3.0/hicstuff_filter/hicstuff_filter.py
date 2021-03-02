from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String, Int

Hicstuff_Filter_V0_1_0 = CommandToolBuilder(tool="hicstuff_filter", base_command=["hicstuff", "filter"], inputs=[ToolInput(tag="in_fig_dir", input_type=File(optional=True), prefix="--figdir", doc=InputDocumentation(doc="Path to the output figure directory.\nBy default, the figure is only shown\nbut not saved.")), ToolInput(tag="in_interactive", input_type=Boolean(optional=True), prefix="--interactive", doc=InputDocumentation(doc="Interactively shows plots and asks\nfor thresholds.")), ToolInput(tag="in_plot", input_type=Boolean(optional=True), prefix="--plot", doc=InputDocumentation(doc="Shows plots of library composition\nand 3C events abundance.")), ToolInput(tag="in_prefix", input_type=String(optional=True), prefix="--prefix", doc=InputDocumentation(doc="If the library has a name, it will\nbe shown on the figures.")), ToolInput(tag="in_thresholds", input_type=Int(optional=True), prefix="--thresholds", doc=InputDocumentation(doc="Manually defines integer values for\nthe thresholds in the order\n[uncut, loop]. Reads above those values\nare kept.\n")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc="2D BED file containing coordinates of Hi-C interacting\npairs, the index of their restriction fragment and their\nstrands.")), ToolInput(tag="in_output", input_type=String(), position=1, doc=InputDocumentation(doc="Path to the filtered file, in the same format as the input."))], outputs=[ToolOutput(tag="out_fig_dir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_fig_dir", type_hint=File()), doc=OutputDocumentation(doc="Path to the output figure directory.\nBy default, the figure is only shown\nbut not saved."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicstuff_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

