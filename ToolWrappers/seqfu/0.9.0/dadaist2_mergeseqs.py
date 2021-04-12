from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Dadaist2_Mergeseqs_V0_1_0 = CommandToolBuilder(tool="dadaist2_mergeseqs", base_command=["dadaist2-mergeseqs"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="FASTA or FASTQ file")), ToolInput(tag="in_fast_a", input_type=File(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Write new sequences to FASTA")), ToolInput(tag="in_pair_spacer", input_type=String(optional=True), prefix="--pair-spacer", doc=InputDocumentation(doc="Pairs separator [default: NNNNNNNNNN]")), ToolInput(tag="in_strip", input_type=String(optional=True), prefix="--strip", doc=InputDocumentation(doc="Remove this string from sample names")), ToolInput(tag="in_seq_name", input_type=String(optional=True), prefix="--seq-name", doc=InputDocumentation(doc="Sequence string name [default: MD5]")), ToolInput(tag="in_max_mismatches", input_type=Int(optional=True), prefix="--max-mismatches", doc=InputDocumentation(doc="Maximum allowed mismatches [default: 0]")), ToolInput(tag="in_id", input_type=String(optional=True), prefix="--id", doc=InputDocumentation(doc="Features column name [default: #OTU ID]")), ToolInput(tag="in_print_verbose_output", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print verbose output")), ToolInput(tag="in_features", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_print", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_column", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_11", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_name", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/seqfu:0.9.0--h38613fd_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dadaist2_Mergeseqs_V0_1_0().translate("wdl")

