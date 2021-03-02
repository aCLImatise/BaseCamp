from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Boolean, String, Int, File

Obminimize_V0_1_0 = CommandToolBuilder(tool="obminimize", base_command=["obminimize"], inputs=[ToolInput(tag="in_set_criteria_defaulte", input_type=Float(optional=True), prefix="-c", doc=InputDocumentation(doc="set convergence criteria (default=1e-6)")), ToolInput(tag="in_cg", input_type=Boolean(optional=True), prefix="-cg", doc=InputDocumentation(doc="use conjugate gradients algorithm (default)")), ToolInput(tag="in_sd", input_type=Boolean(optional=True), prefix="-sd", doc=InputDocumentation(doc="use steepest descent algorithm")), ToolInput(tag="in_newton", input_type=Boolean(optional=True), prefix="-newton", doc=InputDocumentation(doc="use Newton2Num linesearch (default=Simple)")), ToolInput(tag="in_ff", input_type=String(optional=True), prefix="-ff", doc=InputDocumentation(doc="select a forcefield:")), ToolInput(tag="in_specify_maximum_numer", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="specify the maximum numer of steps (default=2500)")), ToolInput(tag="in_cut", input_type=Boolean(optional=True), prefix="-cut", doc=InputDocumentation(doc="use cut-off (default=don't use cut-off)")), ToolInput(tag="in_rv_dw", input_type=Float(optional=True), prefix="-rvdw", doc=InputDocumentation(doc="specify the VDW cut-off distance (default=6.0)")), ToolInput(tag="in_rele", input_type=Float(optional=True), prefix="-rele", doc=InputDocumentation(doc="specify the Electrostatic cut-off distance (default=10.0)")), ToolInput(tag="in_pf", input_type=Int(optional=True), prefix="-pf", doc=InputDocumentation(doc="specify the frequency to update the non-bonded pairs (default=10)")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Obminimize_V0_1_0().translate("wdl", allow_empty_container=True)

