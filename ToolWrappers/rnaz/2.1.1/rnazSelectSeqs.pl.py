from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Rnazselectseqs_Pl_V0_1_0 = CommandToolBuilder(tool="rnazSelectSeqs.pl", base_command=["rnazSelectSeqs.pl"], inputs=[ToolInput(tag="in_num_seqs", input_type=Int(optional=True), prefix="--num-seqs", doc=InputDocumentation(doc="Number of sequences in the output alignment(s). (Default:6)")), ToolInput(tag="in_num_samples", input_type=Int(optional=True), prefix="--num-samples", doc=InputDocumentation(doc="Number of output alignments (Default: 1)")), ToolInput(tag="in_opt_id", input_type=Int(optional=True), prefix="--opt-id", doc=InputDocumentation(doc="The resulting alignment(s) is (are) optimized for this value of\nmean pairwise identity (in percent, default: 80)")), ToolInput(tag="in_max_id", input_type=Int(optional=True), prefix="--max-id", doc=InputDocumentation(doc="Sequences from pairs with pairwise identity higher than X% are\nremoved (default: 99, i.e. only almost identical sequences are\nremoved)")), ToolInput(tag="in_no_reference", input_type=Boolean(optional=True), prefix="--no-reference", doc=InputDocumentation(doc="By default the first sequence (=reference sequence) is always\npresent in the output alignment(s). If you do not care having it\nremoved, set this flag.")), ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Prints a detailed manual page and exits."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnazselectseqs_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

