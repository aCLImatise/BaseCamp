from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Pxlog_V0_1_0 = CommandToolBuilder(tool="pxlog", base_command=["pxlog"], inputs=[ToolInput(tag="in_par_mf", input_type=File(optional=True), prefix="--parmf", doc=InputDocumentation(doc="input parameter log file(s)")), ToolInput(tag="in_tree_f", input_type=File(optional=True), prefix="--treef", doc=InputDocumentation(doc="input tree log file(s)")), ToolInput(tag="in_out_f", input_type=File(optional=True), prefix="--outf", doc=InputDocumentation(doc="output file, STOUT otherwise")), ToolInput(tag="in_burnin", input_type=Int(optional=True), prefix="--burnin", doc=InputDocumentation(doc="number of samples to exclude at the beginning of a file")), ToolInput(tag="in_thin", input_type=Int(optional=True), prefix="--thin", doc=InputDocumentation(doc="interval of resampling")), ToolInput(tag="in_rand", input_type=Int(optional=True), prefix="--rand", doc=InputDocumentation(doc="number of random samples (without replacement) not yet implemented!")), ToolInput(tag="in_info", input_type=Boolean(optional=True), prefix="--info", doc=InputDocumentation(doc="calculate log file attributes and exit")), ToolInput(tag="in_columns", input_type=Boolean(optional=True), prefix="--columns", doc=InputDocumentation(doc="print out column names (parameter logs only)")), ToolInput(tag="in_delete", input_type=Int(optional=True), prefix="--delete", doc=InputDocumentation(doc="delete columns by 1-index sep by commas (NO SPACES!) (parameter logs only)")), ToolInput(tag="in_keep", input_type=Int(optional=True), prefix="--keep", doc=InputDocumentation(doc="keep only columns by 1-index sep by commas (NO SPACES!) (parameter logs only)")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="--seed", doc=InputDocumentation(doc="random number seed, clock otherwise")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="make the output more verbose")), ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="display phyx citation and exit"))], outputs=[ToolOutput(tag="out_out_f", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_f", type_hint=File()), doc=OutputDocumentation(doc="output file, STOUT otherwise"))], container="quay.io/biocontainers/phyx:1.1--h937addc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pxlog_V0_1_0().translate("wdl")

