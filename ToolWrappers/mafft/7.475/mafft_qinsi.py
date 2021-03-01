from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mafft_Qinsi_V0_1_0 = CommandToolBuilder(tool="mafft_qinsi", base_command=["mafft-qinsi"], inputs=[ToolInput(tag="in_op", input_type=Boolean(optional=True), prefix="--op", doc=InputDocumentation(doc="# :         Gap opening penalty, default: 1.53")), ToolInput(tag="in_ep", input_type=Boolean(optional=True), prefix="--ep", doc=InputDocumentation(doc="# :         Offset (works like gap extension penalty), default: 0.0")), ToolInput(tag="in_max_iterate", input_type=Boolean(optional=True), prefix="--maxiterate", doc=InputDocumentation(doc="# : Maximum number of iterative refinement, default: 0")), ToolInput(tag="in_clustal_out", input_type=Boolean(optional=True), prefix="--clustalout", doc=InputDocumentation(doc=":   Output: clustal format, default: fasta")), ToolInput(tag="in_reorder", input_type=Boolean(optional=True), prefix="--reorder", doc=InputDocumentation(doc=":      Outorder: aligned, default: input order")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc=":        Do not report progress")), ToolInput(tag="in_thread", input_type=Boolean(optional=True), prefix="--thread", doc=InputDocumentation(doc="# :     Number of threads (if unsure, --thread -1)")), ToolInput(tag="in_dash", input_type=Boolean(optional=True), prefix="--dash", doc=InputDocumentation(doc=":         Add structural information (Rozewicki et al, submitted)"))], outputs=[], container="quay.io/biocontainers/mafft:7.475--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mafft_Qinsi_V0_1_0().translate("wdl")

