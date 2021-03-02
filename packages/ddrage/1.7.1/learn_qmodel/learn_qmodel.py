from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, File, Boolean, Int

Learn_Qmodel_V0_1_0 = CommandToolBuilder(tool="learn_qmodel", base_command=["learn_qmodel"], inputs=[ToolInput(tag="in_p_five", input_type=Array(t=File(), optional=True), prefix="--p5", doc=InputDocumentation(doc="Path to a forward (p5) read file.")), ToolInput(tag="in_p_seven", input_type=Array(t=File(), optional=True), prefix="--p7", doc=InputDocumentation(doc="Path to a reverse (p7) read file.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file name/path. Default: custom.qmodel")), ToolInput(tag="in_visualize", input_type=Boolean(optional=True), prefix="--visualize", doc=InputDocumentation(doc="Visualize the accumulating profile. And create a pdf\nversion of the plot. Only works for read file with\nmore than 10000 reads.")), ToolInput(tag="in_plot", input_type=Boolean(optional=True), prefix="--plot", doc=InputDocumentation(doc="Plot the quality distributions as pdf. (Like\nvisualize, but without the progress updates. Only\nplots the final distributions.)")), ToolInput(tag="in_show", input_type=File(optional=True), prefix="--show", doc=InputDocumentation(doc="Read and plot a .qmodel.npz file.")), ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc="Maximum read length. All values after this position\nwill be truncated and not become part of the model.\nDefault: 100\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file name/path. Default: custom.qmodel"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Learn_Qmodel_V0_1_0().translate("wdl", allow_empty_container=True)

