from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Loganalyser_V0_1_0 = CommandToolBuilder(tool="loganalyser", base_command=["loganalyser"], inputs=[ToolInput(tag="in_burnin", input_type=Int(optional=True), prefix="-burnin", doc=InputDocumentation(doc="number of states to be considered as 'burn-in'")), ToolInput(tag="in_short", input_type=String(optional=True), prefix="-short", doc=InputDocumentation(doc="this option to produce a short report")), ToolInput(tag="in_hpd", input_type=String(optional=True), prefix="-hpd", doc=InputDocumentation(doc="this option to produce hpds for each trace")), ToolInput(tag="in_ess", input_type=String(optional=True), prefix="-ess", doc=InputDocumentation(doc="this option to produce ESSs for each trace")), ToolInput(tag="in_stderr", input_type=String(optional=True), prefix="-stdErr", doc=InputDocumentation(doc="this option to produce standard Error")), ToolInput(tag="in_marginal", input_type=String(optional=True), prefix="-marginal", doc=InputDocumentation(doc="the trace to use to calculate the marginal likelihood")), ToolInput(tag="in_by", input_type=String(), position=0, doc=InputDocumentation(doc="Andrew Rambaut and Alexei J. Drummond")), ToolInput(tag="in_a_dotrambautateddotacdotuk", input_type=String(), position=0, doc=InputDocumentation(doc="Department of Computer Science")), ToolInput(tag="in_alexei_atcs_dot_auckland_do_tac_dot_nz", input_type=String(), position=0, doc=InputDocumentation(doc="dr.app.util.Arguments$ArgumentException: Unrecognized argument: --help"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Loganalyser_V0_1_0().translate("wdl", allow_empty_container=True)

