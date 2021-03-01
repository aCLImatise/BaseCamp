from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float, String

Pyprophet_Filter_V0_1_0 = CommandToolBuilder(tool="pyprophet_filter", base_command=["pyprophet", "filter"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="--in", doc=InputDocumentation(doc="PyProphet input file.  [required]")), ToolInput(tag="in_max_precursor_pep", input_type=Float(optional=True), prefix="--max_precursor_pep", doc=InputDocumentation(doc="Maximum PEP to retain scored precursors in")), ToolInput(tag="in_max_peak_group_pep", input_type=Float(optional=True), prefix="--max_peakgroup_pep", doc=InputDocumentation(doc="Maximum PEP to retain scored peak groups in")), ToolInput(tag="in_max_transition_pep", input_type=Float(optional=True), prefix="--max_transition_pep", doc=InputDocumentation(doc="Maximum PEP to retain scored transitions in")), ToolInput(tag="in_sq_mass_files", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pyprophet:2.1.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyprophet_Filter_V0_1_0().translate("wdl")

