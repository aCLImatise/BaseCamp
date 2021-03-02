from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Uvaia_V0_1_0 = CommandToolBuilder(tool="uvaia", base_command=["uvaia"], inputs=[ToolInput(tag="in_n_best", input_type=Int(optional=True), prefix="--nbest", doc=InputDocumentation(doc="number of best reference sequences per query to show (default=8)")), ToolInput(tag="in_nmax", input_type=Int(optional=True), prefix="--nmax", doc=InputDocumentation(doc="max number of best reference sequences when several optimal (default=2 x nbest)")), ToolInput(tag="in_trim", input_type=Int(optional=True), prefix="--trim", doc=InputDocumentation(doc="number of sites to trim from both ends (default=0, suggested for sarscov2=230) -- MAY CONTAIN BUGS")), ToolInput(tag="in_reference", input_type=Boolean(optional=True), prefix="--reference", doc=InputDocumentation(doc="=[ref.fa(.gz)]    *aligned* reference sequences")), ToolInput(tag="in_output", input_type=Boolean(optional=True), prefix="--output", doc=InputDocumentation(doc="=[chosen_refs.fa.gz] output reference sequences")), ToolInput(tag="in_n_threads", input_type=Int(optional=True), prefix="--nthreads", doc=InputDocumentation(doc="suggested number of threads (default is to let system decide; I may not honour your suggestion btw)"))], outputs=[], container="quay.io/biocontainers/uvaia:1.0.0--hbcae180_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Uvaia_V0_1_0().translate("wdl")

