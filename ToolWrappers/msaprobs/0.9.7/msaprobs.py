from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Msaprobs_V0_1_0 = CommandToolBuilder(tool="msaprobs", base_command=["msaprobs"], inputs=[ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="specify the output file name (STDOUT by default)")), ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="-num_threads", doc=InputDocumentation(doc="specify the number of threads used, and otherwise detect automatically")), ToolInput(tag="in_clustalw", input_type=Boolean(optional=True), prefix="-clustalw", doc=InputDocumentation(doc="use CLUSTALW output format instead of FASTA format")), ToolInput(tag="in_consistency", input_type=Int(optional=True), prefix="--consistency", doc=InputDocumentation(doc="use 0 <= REPS <= 5 (default: 2) passes of consistency transformation")), ToolInput(tag="in_iterative_refinement", input_type=Int(optional=True), prefix="--iterative-refinement", doc=InputDocumentation(doc="use 0 <= REPS <= 1000 (default: 10) passes of iterative-refinement")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="report progress while aligning (default: off)")), ToolInput(tag="in_an_not", input_type=File(optional=True), prefix="-annot", doc=InputDocumentation(doc="write annotation for multiple alignment to FILENAME")), ToolInput(tag="in_alignment_order", input_type=Boolean(optional=True), prefix="--alignment-order", doc=InputDocumentation(doc="print sequences in alignment order rather than input order (default: off)")), ToolInput(tag="in_version", input_type=Boolean(optional=True), prefix="-version", doc=InputDocumentation(doc="print out version of MSAPROBS\n"))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="specify the output file name (STDOUT by default)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msaprobs_V0_1_0().translate("wdl", allow_empty_container=True)

