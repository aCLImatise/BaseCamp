from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Fitdistcurve_R_V0_1_0 = CommandToolBuilder(tool="fitDistCurve.R", base_command=["fitDistCurve.R"], inputs=[ToolInput(tag="in_opts", input_type=File(optional=True), prefix="--opts", doc=InputDocumentation(doc="RDS file containing argument values")), ToolInput(tag="in_inputs", input_type=String(optional=True), prefix="--inputs", doc=InputDocumentation(doc="Comma-separated list: locations of saved CHiCAGO objects (either .Rda or .Rds).")), ToolInput(tag="in_summary_input", input_type=Int(optional=True), prefix="--summaryInput", doc=InputDocumentation(doc="An .Rda file of summary information -- the max P-val for each putative interaction, and the location of the .rmap file. This file will be generated if it wasn't provided.")), ToolInput(tag="in_threshold", input_type=Int(optional=True), prefix="--threshold", doc=InputDocumentation(doc="Threshold applied to -log(p) values (NB: not the CHiCAGO score!). [default: -10]")), ToolInput(tag="in_subsets", input_type=Int(optional=True), prefix="--subsets", doc=InputDocumentation(doc="Number of subsets to partition the data into. Parameters estimated on subsets, median taken. [default: 5]")), ToolInput(tag="in_large_binsize", input_type=Int(optional=True), prefix="--largeBinSize", doc=InputDocumentation(doc="Largest bin size to consider [default: 1000000]")), ToolInput(tag="in_bin_number", input_type=Int(optional=True), prefix="--binNumber", doc=InputDocumentation(doc="Number of large bins [default: 16]")), ToolInput(tag="in_half_number", input_type=Int(optional=True), prefix="--halfNumber", doc=InputDocumentation(doc="First bin is subdivided into halves - the number of times to do this [default: 5]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fitdistcurve_R_V0_1_0().translate("wdl", allow_empty_container=True)

