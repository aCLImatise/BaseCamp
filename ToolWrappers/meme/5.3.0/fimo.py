from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, File, Int, String

Fimo_V0_1_0 = CommandToolBuilder(tool="fimo", base_command=["fimo"], inputs=[ToolInput(tag="in_alpha", input_type=Float(optional=True), prefix="--alpha", doc=InputDocumentation(doc="(default 1.0)")), ToolInput(tag="in_b_file", input_type=File(optional=True), prefix="--bfile", doc=InputDocumentation(doc="(DNA and protein use NRDB by default)")), ToolInput(tag="in_max_stored_scores", input_type=Int(optional=True), prefix="--max-stored-scores", doc=InputDocumentation(doc="(default=100000)")), ToolInput(tag="in_max_strand", input_type=Int(optional=True), prefix="--max-strand", doc=InputDocumentation(doc="(default=all)")), ToolInput(tag="in_motif_pseudo", input_type=Float(optional=True), prefix="--motif-pseudo", doc=InputDocumentation(doc="(default=0.1)")), ToolInput(tag="in_no_q_value", input_type=String(optional=True), prefix="--no-qvalue", doc=InputDocumentation(doc="(default=fimo_out)")), ToolInput(tag="in_oc", input_type=String(optional=True), prefix="--oc", doc=InputDocumentation(doc="(default=fimo_out)")), ToolInput(tag="in_parse_genomic_coord", input_type=File(optional=True), prefix="--parse-genomic-coord", doc=InputDocumentation(doc="(default none)")), ToolInput(tag="in_prior_dist", input_type=File(optional=True), prefix="--prior-dist", doc=InputDocumentation(doc="(default none)")), ToolInput(tag="in_motif_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sequence_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fimo_V0_1_0().translate("wdl")

