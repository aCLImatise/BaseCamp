from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File, Boolean

Pxbdsim_V0_1_0 = CommandToolBuilder(tool="pxbdsim", base_command=["pxbdsim"], inputs=[ToolInput(tag="in_extant", input_type=Int(optional=True), prefix="--extant", doc=InputDocumentation(doc="number of extant species, alt to time")), ToolInput(tag="in_time", input_type=String(optional=True), prefix="--time", doc=InputDocumentation(doc="timespan of simulation (age of root), alt to extant")), ToolInput(tag="in_birth", input_type=Int(optional=True), prefix="--birth", doc=InputDocumentation(doc="birth rate, default=1")), ToolInput(tag="in_death", input_type=Int(optional=True), prefix="--death", doc=InputDocumentation(doc="death rate, default=0")), ToolInput(tag="in_n_reps", input_type=Int(optional=True), prefix="--nreps", doc=InputDocumentation(doc="number of replicates, default=1")), ToolInput(tag="in_out_f", input_type=File(optional=True), prefix="--outf", doc=InputDocumentation(doc="output file, STOUT otherwise")), ToolInput(tag="in_show_extinct", input_type=Boolean(optional=True), prefix="--showextinct", doc=InputDocumentation(doc="show lineages that went extinct, default=false")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="random number seed, clock otherwise")), ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="display phyx citation and exit"))], outputs=[ToolOutput(tag="out_out_f", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_f", type_hint=File()), doc=OutputDocumentation(doc="output file, STOUT otherwise"))], container="quay.io/biocontainers/phyx:1.1--h937addc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pxbdsim_V0_1_0().translate("wdl")

