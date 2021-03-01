from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Spacepharer_Restrictranks_V0_1_0 = CommandToolBuilder(tool="spacepharer_restrictranks", base_command=["spacepharer", "restrictranks"], inputs=[ToolInput(tag="in_rank_min_seq_ids", input_type=Int(optional=True), prefix="--rank-min-seq-ids", doc=InputDocumentation(doc="Comma-separated sequence identity thresholds to restrict ranks to:\nspecies, genus, family, order, class, phylum, kingdom, superkingdom [0.86,0.84,0.82,0.80,0.78,0.76,0.74,0.72]")), ToolInput(tag="in_tax_lineage", input_type=Int(optional=True), prefix="--tax-lineage", doc=InputDocumentation(doc="0: don't show, 1: add all lineage names, 2: add all lineage taxids [0]")), ToolInput(tag="in_lca_ranks", input_type=String(optional=True), prefix="--lca-ranks", doc=InputDocumentation(doc="Add column with specified ranks (',' separated) []")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [8]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[], container="quay.io/biocontainers/spacepharer:4.228b9e5--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spacepharer_Restrictranks_V0_1_0().translate("wdl")

