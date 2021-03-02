from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Poretools_Squiggle_V0_1_0 = CommandToolBuilder(tool="poretools_squiggle", base_command=["poretools", "squiggle"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not output warnings to stderr")), ToolInput(tag="in_save_as", input_type=File(optional=True), prefix="--saveas", doc=InputDocumentation(doc="Save the squiggle plot to a file.")), ToolInput(tag="in_num_facets", input_type=Int(optional=True), prefix="--num-facets", doc=InputDocumentation(doc="The number of plot facets (sub-plots). More is better\nfor long reads. (def=6)")), ToolInput(tag="in_theme_bw", input_type=Boolean(optional=True), prefix="--theme-bw", doc=InputDocumentation(doc="Use a black and white theme.")), ToolInput(tag="in_files", input_type=String(), position=0, doc=InputDocumentation(doc="The input FAST5 files."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poretools_Squiggle_V0_1_0().translate("wdl", allow_empty_container=True)

