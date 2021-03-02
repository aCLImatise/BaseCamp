from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Poretools_Hist_V0_1_0 = CommandToolBuilder(tool="poretools_hist", base_command=["poretools", "hist"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not output warnings to stderr")), ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min-length", doc=InputDocumentation(doc="Minimum read length to be included in histogram.")), ToolInput(tag="in_max_length", input_type=Int(optional=True), prefix="--max-length", doc=InputDocumentation(doc="Maximum read length to be included in histogram.")), ToolInput(tag="in_num_bins", input_type=Int(optional=True), prefix="--num-bins", doc=InputDocumentation(doc="The number of histogram bins.")), ToolInput(tag="in_save_as", input_type=File(optional=True), prefix="--saveas", doc=InputDocumentation(doc="Save the plot to a file.")), ToolInput(tag="in_theme_bw", input_type=Boolean(optional=True), prefix="--theme-bw", doc=InputDocumentation(doc="Use a black and white theme.")), ToolInput(tag="in_watch", input_type=Boolean(optional=True), prefix="--watch", doc=InputDocumentation(doc="Monitor a directory.")), ToolInput(tag="in_files", input_type=String(), position=0, doc=InputDocumentation(doc="The input FAST5 files."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poretools_Hist_V0_1_0().translate("wdl", allow_empty_container=True)

