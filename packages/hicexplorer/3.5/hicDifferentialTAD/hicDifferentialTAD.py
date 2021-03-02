from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int

Hicdifferentialtad_V0_1_0 = CommandToolBuilder(tool="hicDifferentialTAD", base_command=["hicDifferentialTAD"], inputs=[ToolInput(tag="in_target_matrix", input_type=String(optional=True), prefix="--targetMatrix", doc=InputDocumentation(doc="The matrix which was used to compute the TADs")), ToolInput(tag="in_control_matrix", input_type=String(optional=True), prefix="--controlMatrix", doc=InputDocumentation(doc="The control matrix to test the TADs for a differential\ninteraction pattern.")), ToolInput(tag="in_tad_domains", input_type=File(optional=True), prefix="--tadDomains", doc=InputDocumentation(doc="The TADs domain file computed by hicFindTADs.")), ToolInput(tag="in_out_filename_prefix", input_type=File(optional=True), prefix="--outFileNamePrefix", doc=InputDocumentation(doc="Outfile name prefix to store the accepted / rejected\nH0 TADs.")), ToolInput(tag="in_p_value", input_type=Int(optional=True), prefix="--pValue", doc=InputDocumentation(doc="H0 is considered as 'two regions are identical.' i.e.\nall regions with a test result of <= p-value are\nrejected and considered as differential.")), ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="Consider only intra-TAD interactions, or additional\nleft inter-TAD, right inter-TAD or all.")), ToolInput(tag="in_mode_reject", input_type=String(optional=True), prefix="--modeReject", doc=InputDocumentation(doc="All test of a mode must be rejected (all) or reject\nregion (and accept it is differential) as soon as at\nleast one region is having a p-value <= --pValue.")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads to use, the parallelization is\nimplemented per chromosome."))], outputs=[ToolOutput(tag="out_out_filename_prefix", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename_prefix", type_hint=File()), doc=OutputDocumentation(doc="Outfile name prefix to store the accepted / rejected\nH0 TADs."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicdifferentialtad_V0_1_0().translate("wdl", allow_empty_container=True)

