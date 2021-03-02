from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean, Array

Fancplot_V0_1_0 = CommandToolBuilder(tool="fancplot", base_command=["fancplot"], inputs=[ToolInput(tag="in_plot", input_type=File(optional=True), prefix="--plot", doc=InputDocumentation(doc="New plot, type will be chosen automatically by file\ntype, unless '-t' is provided.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Suppresses interactive plotting window and redirects\nplot to file. Specify path to file when plotting a\nsingle region, and path to a folder for plotting\nmultiple regions.")), ToolInput(tag="in_script", input_type=File(optional=True), prefix="--script", doc=InputDocumentation(doc="Use a script file to define plot.")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="Plot name to be used as prefix when plotting multiple\nregions. Is ignored for single region and interactive\nplot.")), ToolInput(tag="in_width", input_type=Int(optional=True), prefix="--width", doc=InputDocumentation(doc="Width of the figure in inches. Default: 4")), ToolInput(tag="in_window_size", input_type=Int(optional=True), prefix="--window-size", doc=InputDocumentation(doc="Plotting region size in base pairs. If provided, the\nactual size of the given region is ignored and instead\na region <chromosome>:<region center - window size/2>\n- <region center + window size/2> will be plotted.")), ToolInput(tag="in_invert_x", input_type=Boolean(optional=True), prefix="--invert-x", doc=InputDocumentation(doc="Invert x-axis for this plot")), ToolInput(tag="in_tick_locations", input_type=Array(t=String(), optional=True), prefix="--tick-locations", doc=InputDocumentation(doc="Manually define the locations of the tick labels on\nthe genome axis.")), ToolInput(tag="in_regions", input_type=String(), position=0, doc=InputDocumentation(doc="List of region selectors (<chr>:<start>-<end>) or\nfiles with region information (BED, GTF, ...)."))], outputs=[], container="quay.io/biocontainers/fanc:0.9.0--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fancplot_V0_1_0().translate("wdl")

