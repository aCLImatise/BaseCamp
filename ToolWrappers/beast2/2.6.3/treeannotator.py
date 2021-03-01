from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Treeannotator_V0_1_0 = CommandToolBuilder(tool="treeannotator", base_command=["treeannotator"], inputs=[ToolInput(tag="in_heights", input_type=String(optional=True), prefix="-heights", doc=InputDocumentation(doc="option of 'keep' (default), 'median', 'mean' or 'ca'")), ToolInput(tag="in_burnin", input_type=String(optional=True), prefix="-burnin", doc=InputDocumentation(doc="percentage of states to be considered as 'burn-in'")), ToolInput(tag="in_b", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="percentage of states to be considered as 'burn-in'")), ToolInput(tag="in_limit", input_type=String(optional=True), prefix="-limit", doc=InputDocumentation(doc="minimum posterior probability for a node to be annotated")), ToolInput(tag="in_target", input_type=String(optional=True), prefix="-target", doc=InputDocumentation(doc="a user target tree to be annotated")), ToolInput(tag="in_force_discrete", input_type=Int(optional=True), prefix="-forceDiscrete", doc=InputDocumentation(doc="integer traits to be treated as discrete traits.")), ToolInput(tag="in_lowmem", input_type=String(optional=True), prefix="-lowMem", doc=InputDocumentation(doc="less memory, which is a bit slower.")), ToolInput(tag="in_hpd_two_d", input_type=Int(optional=True), prefix="-hpd2D", doc=InputDocumentation(doc="HPD interval to be used for the bivariate traits")), ToolInput(tag="in_no_hpd_two_d", input_type=Int(optional=True), prefix="-nohpd2D", doc=InputDocumentation(doc="calculation of HPD intervals for the bivariate traits")), ToolInput(tag="in_nos_a", input_type=String(optional=True), prefix="-noSA", doc=InputDocumentation(doc="the tree set as begin from a not being from a sampled ancestor analysis, even if there are zero branch lengths in the tree set"))], outputs=[], container="quay.io/biocontainers/beast2:2.6.3--hf1b8bbb_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Treeannotator_V0_1_0().translate("wdl")

