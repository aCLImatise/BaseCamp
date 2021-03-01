from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Pxstrec_V0_1_0 = CommandToolBuilder(tool="pxstrec", base_command=["pxstrec"], inputs=[ToolInput(tag="in_data_f", input_type=File(optional=True), prefix="--dataf", doc=InputDocumentation(doc="input data file")), ToolInput(tag="in_data_wide", input_type=Boolean(optional=True), prefix="--datawide", doc=InputDocumentation(doc="data is in wide format so (001 instead of 2)")), ToolInput(tag="in_data_z", input_type=Boolean(optional=True), prefix="--dataz", doc=InputDocumentation(doc="data is in probability format (0,1,0,0)")), ToolInput(tag="in_tree_f", input_type=File(optional=True), prefix="--treef", doc=InputDocumentation(doc="input tree file")), ToolInput(tag="in_conf", input_type=File(optional=True), prefix="--conf", doc=InputDocumentation(doc="configuration file")), ToolInput(tag="in_out_an_c", input_type=File(optional=True), prefix="--outanc", doc=InputDocumentation(doc="output file for ancestral calc")), ToolInput(tag="in_out_st_num", input_type=File(optional=True), prefix="--outstnum", doc=InputDocumentation(doc="output file for stochastic mapping number")), ToolInput(tag="in_out_st_num_any", input_type=File(optional=True), prefix="--outstnumany", doc=InputDocumentation(doc="output file for stochastic mapping number any")), ToolInput(tag="in_out_st_tim", input_type=File(optional=True), prefix="--outsttim", doc=InputDocumentation(doc="output file for stochastic mapping duration")), ToolInput(tag="in_periods", input_type=String(optional=True), prefix="--periods", doc=InputDocumentation(doc="comma separated times")), ToolInput(tag="in_log_f", input_type=File(optional=True), prefix="--logf", doc=InputDocumentation(doc="log file, STOUT otherwise")), ToolInput(tag="in_citation", input_type=Boolean(optional=True), prefix="--citation", doc=InputDocumentation(doc="display phyx citation and exit"))], outputs=[ToolOutput(tag="out_out_an_c", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_an_c", type_hint=File()), doc=OutputDocumentation(doc="output file for ancestral calc")), ToolOutput(tag="out_out_st_tim", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_st_tim", type_hint=File()), doc=OutputDocumentation(doc="output file for stochastic mapping duration"))], container="quay.io/biocontainers/phyx:1.1--h937addc_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pxstrec_V0_1_0().translate("wdl")

