from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Cmfinder_V0_1_0 = CommandToolBuilder(tool="cmfinder", base_command=["cmfinder"], inputs=[ToolInput(tag="in__candidate_file", input_type=File(optional=True), prefix="-c", doc=InputDocumentation(doc=": the candidate file")), ToolInput(tag="in_initial_motif_alignment", input_type=File(optional=True), prefix="-a", doc=InputDocumentation(doc=": the initial motif alignment")), ToolInput(tag="in_initial_covariance_model", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc=": the initial covariance model")), ToolInput(tag="in_output_motif_alignment", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": the output motif structural alignment in stockholm format")), ToolInput(tag="in_print_intermediate_alignments", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc=": print intermediate alignments")), ToolInput(tag="in_gap_threshold_determine", input_type=String(optional=True), prefix="--g", doc=InputDocumentation(doc=": the gap threshold to determine the conserved column")), ToolInput(tag="in_hmm", input_type=Boolean(optional=True), prefix="--hmm", doc=InputDocumentation(doc=": apply HMM filter")), ToolInput(tag="in_cmz_asha", input_type=Boolean(optional=True), prefix="--cmzasha", doc=InputDocumentation(doc=": apply cmzasha filter")), ToolInput(tag="in_update", input_type=Boolean(optional=True), prefix="--update", doc=InputDocumentation(doc=": Update instead of scanning for new candidates at each iteration")), ToolInput(tag="in_in_format", input_type=String(optional=True), prefix="--informat", doc=InputDocumentation(doc=": specify that input alignment is in format <s>")), ToolInput(tag="in_fragmentary", input_type=Boolean(optional=True), prefix="--fragmentary", doc=InputDocumentation(doc=": account for fragmentary input sequences")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file_in", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cm_file_output", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cmfinder_V0_1_0().translate("wdl", allow_empty_container=True)

