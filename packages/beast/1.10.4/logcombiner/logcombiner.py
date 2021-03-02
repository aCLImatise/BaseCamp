from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Float, Int

Logcombiner_V0_1_0 = CommandToolBuilder(tool="logcombiner", base_command=["logcombiner"], inputs=[ToolInput(tag="in_trees", input_type=String(optional=True), prefix="-trees", doc=InputDocumentation(doc="this option to combine tree log files")), ToolInput(tag="in_decimal", input_type=Float(optional=True), prefix="-decimal", doc=InputDocumentation(doc="option converts numbers from scientific to decimal notation")), ToolInput(tag="in_burnin", input_type=Int(optional=True), prefix="-burnin", doc=InputDocumentation(doc="number of states to be considered as 'burn-in'")), ToolInput(tag="in_resample", input_type=String(optional=True), prefix="-resample", doc=InputDocumentation(doc="the log files to this frequency (the original sampling frequency must be a factor of this value)")), ToolInput(tag="in_scale", input_type=String(optional=True), prefix="-scale", doc=InputDocumentation(doc="scaling factor that will multiply any time units by this value")), ToolInput(tag="in_strip", input_type=String(optional=True), prefix="-strip", doc=InputDocumentation(doc="out all annotations (trees only)")), ToolInput(tag="in_re_number", input_type=String(optional=True), prefix="-renumber", doc=InputDocumentation(doc="option renumbers output states consecutively")), ToolInput(tag="in_by", input_type=String(), position=0, doc=InputDocumentation(doc="Andrew Rambaut and Alexei J. Drummond")), ToolInput(tag="in_a_dotrambautateddotacdotuk", input_type=String(), position=0, doc=InputDocumentation(doc="Department of Computer Science")), ToolInput(tag="in_alexei_atcs_dot_auckland_do_tac_dot_nz", input_type=String(), position=0, doc=InputDocumentation(doc="dr.app.util.Arguments$ArgumentException: Unrecognized argument: --help"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Logcombiner_V0_1_0().translate("wdl", allow_empty_container=True)

