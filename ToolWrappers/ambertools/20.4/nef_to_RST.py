from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Nef_To_Rst_V0_1_0 = CommandToolBuilder(tool="nef_to_RST", base_command=["nef_to_RST"], inputs=[ToolInput(tag="in_nef", input_type=File(optional=True), prefix="-nef", doc=InputDocumentation(doc=": NEF file")), ToolInput(tag="in_pdb", input_type=File(optional=True), prefix="-pdb", doc=InputDocumentation(doc=": PDBFILE using AMBER nomenclature and numbering")), ToolInput(tag="in_map", input_type=File(optional=True), prefix="-map", doc=InputDocumentation(doc=": MAP file  (default:map.NEF-AMBER)")), ToolInput(tag="in_rst", input_type=File(optional=True), prefix="-rst", doc=InputDocumentation(doc=":  SANDER DISANG format")), ToolInput(tag="in_rdc", input_type=File(optional=True), prefix="-rdc", doc=InputDocumentation(doc=":  SANDER DIP format")), ToolInput(tag="in_no_corr", input_type=Boolean(optional=True), prefix="-nocorr", doc=InputDocumentation(doc="(do not correct upper bound for r**-6 averaging)")), ToolInput(tag="in_a_ltd_is", input_type=Boolean(optional=True), prefix="-altdis", doc=InputDocumentation(doc="(use alternative form for the distance restraints)")), ToolInput(tag="in_report", input_type=Boolean(optional=True), prefix="-report", doc=InputDocumentation(doc="(gives you short runtime diagnostic output)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nef_To_Rst_V0_1_0().translate("wdl", allow_empty_container=True)

