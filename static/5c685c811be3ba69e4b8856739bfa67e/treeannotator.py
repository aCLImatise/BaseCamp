from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Treeannotator_V0_1_0 = CommandToolBuilder(tool="treeannotator", base_command=["treeannotator"], inputs=[ToolInput(tag="in_heights", input_type=String(optional=True), prefix="-heights", doc=InputDocumentation(doc="option of 'keep' (default), 'median', 'mean' or 'ca'")), ToolInput(tag="in_burnin", input_type=Int(optional=True), prefix="-burnin", doc=InputDocumentation(doc="number of states to be considered as 'burn-in'")), ToolInput(tag="in_burnin_trees", input_type=Int(optional=True), prefix="-burninTrees", doc=InputDocumentation(doc="number of trees to be considered as 'burn-in'")), ToolInput(tag="in_limit", input_type=String(optional=True), prefix="-limit", doc=InputDocumentation(doc="minimum posterior probability for a node to be annotated")), ToolInput(tag="in_target", input_type=String(optional=True), prefix="-target", doc=InputDocumentation(doc="a user target tree to be annotated")), ToolInput(tag="in_force_discrete", input_type=Int(optional=True), prefix="-forceDiscrete", doc=InputDocumentation(doc="integer traits to be treated as discrete traits.")), ToolInput(tag="in_hpd_two_d", input_type=Int(optional=True), prefix="-hpd2D", doc=InputDocumentation(doc="a (vector of comma seperated) HPD proportion(s)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Treeannotator_V0_1_0().translate("wdl", allow_empty_container=True)

