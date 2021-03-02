from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Guidescan_Bamdata_V0_1_0 = CommandToolBuilder(tool="guidescan_bamdata", base_command=["guidescan_bamdata"], inputs=[ToolInput(tag="in_project_name_load", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="project name, load previously saved arguments and save\nadditional output (default: myguides)")), ToolInput(tag="in_label", input_type=File(optional=True), prefix="--label", doc=InputDocumentation(doc="use in file name of output database for this run\n(default: test)")), ToolInput(tag="in_name_file_guidernas", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="name of file with guideRNAs for which to compute BAM\ndatabase; may be gzipped (.gz); if not provided, use\nall candidate guideRNAs found in the project (default:\n)")), ToolInput(tag="in_maximum_hamming_distance", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="maximum Hamming distance to consider from guideRNA to\nits off-target; off-target is an alternative\noccurrence (with any PAM) of this guideRNA in the\ngenome at Hamming distance at most this number\n(including PAM); use -1 for omitting any off-target\ninfo in resulting BAM (works much faster) (default: 3)")), ToolInput(tag="in_max_off_count", input_type=Int(optional=True), prefix="--maxoffcount", doc=InputDocumentation(doc="maximum number of off-targets to store for a guideRNA\nin a resulting BAM library; ignore if OFFDIST is -1\n(default: 1000)")), ToolInput(tag="in_how_many_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="how many threads to use; do not specify more than you\nhave on your system; currently not implemented\n(default: 1)\n"))], outputs=[ToolOutput(tag="out_label", output_type=File(optional=True), selector=InputSelector(input_to_select="in_label", type_hint=File()), doc=OutputDocumentation(doc="use in file name of output database for this run\n(default: test)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Guidescan_Bamdata_V0_1_0().translate("wdl", allow_empty_container=True)

