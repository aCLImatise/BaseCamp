from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Ptof_V0_1_0 = CommandToolBuilder(tool="ptof", base_command=["ptof"], inputs=[ToolInput(tag="in_impose_limit_line", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc=": do not impose limit on line length.")), ToolInput(tag="in_parameters_given_normalized", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc=": parameters given as normalized score units.")), ToolInput(tag="in_valueminimal_initiationtermination_score", input_type=Boolean(optional=True), prefix="-B", doc=InputDocumentation(doc="<value>:\nminimal initiation/termination score (default: -50 or -0.5 with option -r).")), ToolInput(tag="in_valueframeshift_error_penalty", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="<value>:\nframeshift error penalty (default: -100 or -1.0 with option -r).")), ToolInput(tag="in_valueinsert_score_default", input_type=Boolean(optional=True), prefix="-I", doc=InputDocumentation(doc="<value>:\ninsert score multiplier (default: 1/3).")), ToolInput(tag="in_valuestop_codon_penalty", input_type=Boolean(optional=True), prefix="-X", doc=InputDocumentation(doc="<value>:\nstop codon penalty (default: -100 or -1.0 with option -r).")), ToolInput(tag="in_valueintron_opening_default", input_type=Boolean(optional=True), prefix="-Y", doc=InputDocumentation(doc="<value>:\nintron opening penalty (default: -300 or -3.0 with option -r).")), ToolInput(tag="in_valueintron_extension_penalty", input_type=Boolean(optional=True), prefix="-Z", doc=InputDocumentation(doc="<value>:\nintron extension penalty (default: -1 or -0.01 with option -r).")), ToolInput(tag="in_hlr_bfi_xyz", input_type=Boolean(optional=True), prefix="-hlrBFIXYZ", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ptof_V0_1_0().translate("wdl", allow_empty_container=True)

