from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, Boolean, File, String

Indelfit_V0_1_0 = CommandToolBuilder(tool="indelFit", base_command=["indelFit"], inputs=[ToolInput(tag="in_alpha", input_type=Float(optional=True), prefix="--alpha", doc=InputDocumentation(doc="Starting value of alpha, the insertion rate.  Default is 0.02.")), ToolInput(tag="in_beta", input_type=Float(optional=True), prefix="--beta", doc=InputDocumentation(doc="Starting value of beta, the deletion rate.  Default is 0.04.")), ToolInput(tag="in_tau", input_type=Int(optional=True), prefix="--tau", doc=InputDocumentation(doc="Starting value of tau, the length parameter.  Default is 0.05.")), ToolInput(tag="in_lnl", input_type=Boolean(optional=True), prefix="--lnl", doc=InputDocumentation(doc="Compute log likelihood of model only, without optimizing parameters.\nThe options above can be used to set the parameters as desired.")), ToolInput(tag="in_columns", input_type=Boolean(optional=True), prefix="--columns", doc=InputDocumentation(doc="Output log likelihood of each column.")), ToolInput(tag="in_features", input_type=File(optional=True), prefix="--features", doc=InputDocumentation(doc="Estimate separate parameters for each type of feature in the given\nfile, as well as for background sites.")), ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="(For use with --features) Name of species (node of tree) defining\ncoordinate frame of features.  By default, the coordinate frame of\nthe entire alignment is assumed.")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="--log", doc=InputDocumentation(doc="Write log of optimization to specified file.")), ToolInput(tag="in_phyl_of_it_dot", input_type=String(), position=0, doc=InputDocumentation(doc="OPTIONS:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Indelfit_V0_1_0().translate("wdl", allow_empty_container=True)

