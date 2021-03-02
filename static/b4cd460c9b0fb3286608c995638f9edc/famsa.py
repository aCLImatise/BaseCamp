from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File, String

Famsa_V0_1_0 = CommandToolBuilder(tool="famsa", base_command=["famsa"], inputs=[ToolInput(tag="in_threads_means_default", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="- no. of threads, 0 means all available (default: 0)")), ToolInput(tag="in_verbose_mode_show", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="- verbose mode, show timing information (default: disabled)")), ToolInput(tag="in_gt", input_type=Boolean(optional=True), prefix="-gt", doc=InputDocumentation(doc="<sl | upgma | import <file>> - guide tree method (default: sl):\n* sl - single linkage\n* upgma - UPGMA\n* import <file> - imported from a Newick file")), ToolInput(tag="in_gt_export", input_type=File(optional=True), prefix="-gt_export", doc=InputDocumentation(doc="- export a guide tree to output file in Newick format")), ToolInput(tag="in_dist_export", input_type=File(optional=True), prefix="-dist_export", doc=InputDocumentation(doc="- export a distance matrix to output file in CSV format")), ToolInput(tag="in_input_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_gt_export", output_type=File(optional=True), selector=InputSelector(input_to_select="in_gt_export", type_hint=File()), doc=OutputDocumentation(doc="- export a guide tree to output file in Newick format")), ToolOutput(tag="out_dist_export", output_type=File(optional=True), selector=InputSelector(input_to_select="in_dist_export", type_hint=File()), doc=OutputDocumentation(doc="- export a distance matrix to output file in CSV format"))], container="quay.io/biocontainers/famsa:1.6.2--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Famsa_V0_1_0().translate("wdl")

