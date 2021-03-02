from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Gfatools_View_V0_1_0 = CommandToolBuilder(tool="gfatools_view", base_command=["gfatools", "view"], inputs=[ToolInput(tag="in_verbose_level", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose level [2]")), ToolInput(tag="in_file_segment_list", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="/@FILE  segment list to subset []")), ToolInput(tag="in_subset_radius_effective", input_type=Int(optional=True), prefix="-r", doc=InputDocumentation(doc="subset radius (effective with -l) [0]")), ToolInput(tag="in_delete_list_segments", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="delete the list of segments (requiring -l; ignoring -r)")), ToolInput(tag="in_remove_multiple_edges", input_type=Boolean(optional=True), prefix="-M", doc=InputDocumentation(doc="remove multiple edges")), ToolInput(tag="in_do_print_sequences", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="don't print sequences")), ToolInput(tag="in_in_dot_gfa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/gfatools:0.4--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gfatools_View_V0_1_0().translate("wdl")

