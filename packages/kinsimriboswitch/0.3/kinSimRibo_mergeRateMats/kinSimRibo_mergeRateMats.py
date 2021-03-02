from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Kinsimribo_Mergeratemats_V0_1_0 = CommandToolBuilder(tool="kinSimRibo_mergeRateMats", base_command=["kinSimRibo_mergeRateMats"], inputs=[ToolInput(tag="in_factors_multiply_matrix", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc=":\nFactors to multiply the output matrix with, e.g. to account for\nthe pre-exponential factors of the Arrhenius equation. The\ncoefficients are applyed to different parts of the matrix as\nfollows:\n.-      -.  where A is multiplied with the monomer rates, B with\n|  A  C  |  the dimer rates, C with the monomer-dimer\n|        |  (dimerization) rates, and D with the dimer-monomer\n|  D  B  |  (dissociation) rates.\n`-      -´")), ToolInput(tag="in_allow_check_are", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc=":     Allow disconnected matrix / do not check whether A and B are")), ToolInput(tag="in_connected_dot", input_type=String(), position=0, doc=InputDocumentation(doc="-v:     Be verbose"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kinsimribo_Mergeratemats_V0_1_0().translate("wdl", allow_empty_container=True)

