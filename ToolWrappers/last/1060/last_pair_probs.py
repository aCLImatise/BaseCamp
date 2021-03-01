from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float, String, Int

Last_Pair_Probs_V0_1_0 = CommandToolBuilder(tool="last_pair_probs", base_command=["last-pair-probs"], inputs=[ToolInput(tag="in_rna", input_type=Boolean(optional=True), prefix="--rna", doc=InputDocumentation(doc="assume the reads are from potentially-spliced RNA")), ToolInput(tag="in_est_dist", input_type=Boolean(optional=True), prefix="--estdist", doc=InputDocumentation(doc="just estimate the distribution of distances")), ToolInput(tag="in_mis_map", input_type=Float(optional=True), prefix="--mismap", doc=InputDocumentation(doc="don't write alignments with mismap probability > M\n(default: 0.01)")), ToolInput(tag="in_fra_glen", input_type=String(optional=True), prefix="--fraglen", doc=InputDocumentation(doc="mean distance in bp")), ToolInput(tag="in_sdev", input_type=String(optional=True), prefix="--sdev", doc=InputDocumentation(doc="standard deviation of distance")), ToolInput(tag="in_disjoint", input_type=Float(optional=True), prefix="--disjoint", doc=InputDocumentation(doc="prior probability of disjoint mapping (default: 0.02\nif -r, else 0.01)")), ToolInput(tag="in_circular", input_type=String(optional=True), prefix="--circular", doc=InputDocumentation(doc="specifies that chromosome CHROM is circular (default:\nchrM)")), ToolInput(tag="in_alignments_one", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Last_Pair_Probs_V0_1_0().translate("wdl", allow_empty_container=True)

