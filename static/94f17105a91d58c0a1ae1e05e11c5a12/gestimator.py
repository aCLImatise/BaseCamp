from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Gestimator_V0_1_0 = CommandToolBuilder(tool="gestimator", base_command=["gestimator"], inputs=[ToolInput(tag="in_write_results_outfile", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc=": write results to outfile")), ToolInput(tag="in_get_verbose_output", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": get verbose output")), ToolInput(tag="in_max_hits_allowed", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=": max # of hits allowed per codon (default = 3)")), ToolInput(tag="in_remove_gaps_false", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc=": remove gaps from the whole aligment before calculating (default = FALSE)")), ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gestimator_V0_1_0().translate("wdl", allow_empty_container=True)

