from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Probcons_V0_1_0 = CommandToolBuilder(tool="probcons", base_command=["probcons"], inputs=[ToolInput(tag="in_clustalw", input_type=Boolean(optional=True), prefix="-clustalw", doc=InputDocumentation(doc="use CLUSTALW output format instead of MFA")), ToolInput(tag="in_consistency", input_type=Int(optional=True), prefix="--consistency", doc=InputDocumentation(doc="use 0 <= REPS <= 5 (default: 2) passes of consistency transformation")), ToolInput(tag="in_iterative_refinement", input_type=Int(optional=True), prefix="--iterative-refinement", doc=InputDocumentation(doc="use 0 <= REPS <= 1000 (default: 100) passes of iterative-refinement")), ToolInput(tag="in_pre_training", input_type=Int(optional=True), prefix="--pre-training", doc=InputDocumentation(doc="use 0 <= REPS <= 20 (default: 0) rounds of pretraining")), ToolInput(tag="in_pairs", input_type=Boolean(optional=True), prefix="-pairs", doc=InputDocumentation(doc="generate all-pairs pairwise alignments")), ToolInput(tag="in_viterbi", input_type=Boolean(optional=True), prefix="-viterbi", doc=InputDocumentation(doc="use Viterbi algorithm to generate all pairs (automatically enables -pairs)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="report progress while aligning (default: off)")), ToolInput(tag="in_an_not", input_type=File(optional=True), prefix="-annot", doc=InputDocumentation(doc="write annotation for multiple alignment to FILENAME")), ToolInput(tag="in_train", input_type=File(optional=True), prefix="--train", doc=InputDocumentation(doc="compute EM transition probabilities, store in FILENAME (default: no training)")), ToolInput(tag="in_emissions", input_type=Boolean(optional=True), prefix="--emissions", doc=InputDocumentation(doc="also reestimate emission probabilities (default: off)")), ToolInput(tag="in_param_file", input_type=File(optional=True), prefix="--paramfile", doc=InputDocumentation(doc="read parameters from FILENAME (default: )")), ToolInput(tag="in_alignment_order", input_type=Boolean(optional=True), prefix="--alignment-order", doc=InputDocumentation(doc="print sequences in alignment order rather than input order (default: off)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Probcons_V0_1_0().translate("wdl", allow_empty_container=True)

