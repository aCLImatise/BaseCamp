from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, String

Plot_Insert_Size_Distribution_V0_1_0 = CommandToolBuilder(tool="plot_insert_size_distribution", base_command=["plot-insert-size-distribution"], inputs=[ToolInput(tag="in_name_output_datafilepdf", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of output file (default: <data-file>.pdf).")), ToolInput(tag="in_choose_xrange_isinvisible", input_type=Float(optional=True), prefix="-q", doc=InputDocumentation(doc="Choose x-range such that at most the given mass is\ninvisible in each tail (default=1e-4).")), ToolInput(tag="in_additionally_plot_distribution", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="Additionally plot normal distribution with given mean and\nstddev (comma separated).")), ToolInput(tag="in_x_range", input_type=String(optional=True), prefix="--xrange", doc=InputDocumentation(doc="Instead of using quantiles, use the given xrange (comma\nseparated).")), ToolInput(tag="in_y_range", input_type=String(optional=True), prefix="--yrange", doc=InputDocumentation(doc="Y-range to be used (default: auto).")), ToolInput(tag="in_distribution_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_name_output_datafilepdf", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_output_datafilepdf", type_hint=File()), doc=OutputDocumentation(doc="Name of output file (default: <data-file>.pdf)."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Insert_Size_Distribution_V0_1_0().translate("wdl", allow_empty_container=True)

