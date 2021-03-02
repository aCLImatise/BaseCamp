from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Bp_Heterogeneity_Test_Pl_V0_1_0 = CommandToolBuilder(tool="bp_heterogeneity_test.pl", base_command=["bp_heterogeneity_test.pl"], inputs=[ToolInput(tag="in_sample_size", input_type=String(optional=True), prefix="--samplesize", doc=InputDocumentation(doc="mutation count")), ToolInput(tag="in_mut_non", input_type=String(optional=True), prefix="--mutnon", doc=InputDocumentation(doc="mutation count")), ToolInput(tag="in_iterations", input_type=String(optional=True), prefix="--iterations", doc=InputDocumentation(doc="of iterations")), ToolInput(tag="in_observed", input_type=String(optional=True), prefix="--observed", doc=InputDocumentation(doc="observed D")), ToolInput(tag="in_method", input_type=String(optional=True), prefix="--method", doc=InputDocumentation(doc="tajimaD or fuD  for Tajima's D or Fu and Li's D")), ToolInput(tag="in_verbose", input_type=String(optional=True), prefix="--verbose", doc=InputDocumentation(doc="print out extra verbose messages")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="Be extra quiet")), ToolInput(tag="in_precision", input_type=Boolean(optional=True), prefix="--precision", doc=InputDocumentation(doc="Level of precision - specify the number of digits\n(default 4)")), ToolInput(tag="in_description", input_type=String(), position=0, doc=InputDocumentation(doc="This is an implementation of the Heterogenetity test as described in\nHahn MW, Rausher MD, and Cunningham CW. 2002. Genetics 161(1):11-20.")), ToolInput(tag="in_options", input_type=String(), position=1, doc=InputDocumentation(doc="Options in brackets above are optional"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Heterogeneity_Test_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

