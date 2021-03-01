from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Makedist_Rst_V0_1_0 = CommandToolBuilder(tool="makeDIST_RST", base_command=["makeDIST_RST"], inputs=[ToolInput(tag="in_up_b", input_type=File(optional=True), prefix="-upb", doc=InputDocumentation(doc=": 7-col_NOE (necessary) distance bound file, OR")), ToolInput(tag="in_ual", input_type=File(optional=True), prefix="-ual", doc=InputDocumentation(doc=": 8-col_UAL (necessary) upper/lower file, OR")), ToolInput(tag="in_vol", input_type=File(optional=True), prefix="-vol", doc=InputDocumentation(doc=": 7-col_VOL (necessary) VOLUME file, one or more volumes")), ToolInput(tag="in_pdb", input_type=File(optional=True), prefix="-pdb", doc=InputDocumentation(doc=": PDBFILE using AMBER nomenclature and numbering")), ToolInput(tag="in_map", input_type=File(optional=True), prefix="-map", doc=InputDocumentation(doc=": MAP file  (default:map.DG-AMBER)")), ToolInput(tag="in_dgm", input_type=File(optional=True), prefix="-dgm", doc=InputDocumentation(doc=":  DGEOM95 restraint format")), ToolInput(tag="in_rst", input_type=File(optional=True), prefix="-rst", doc=InputDocumentation(doc=":  SANDER restraint format")), ToolInput(tag="in_rm_six", input_type=File(optional=True), prefix="-rm6", doc=InputDocumentation(doc=":  DISGEO/NOEVIO format")), ToolInput(tag="in_svf", input_type=File(optional=True), prefix="-svf", doc=InputDocumentation(doc=":  Sander Volume Format")), ToolInput(tag="in_no_corr", input_type=Boolean(optional=True), prefix="-nocorr", doc=InputDocumentation(doc="(do not correct upper bound for r**-6 averaging)")), ToolInput(tag="in_a_ltd_is", input_type=Boolean(optional=True), prefix="-altdis", doc=InputDocumentation(doc="(use alternative form for the distance restraints)")), ToolInput(tag="in_report", input_type=Boolean(optional=True), prefix="-report", doc=InputDocumentation(doc="(gives you short runtime diagnostic output)")), ToolInput(tag="in_i_mix", input_type=Boolean(optional=True), prefix="-imix", doc=InputDocumentation(doc="(for -vol input, says which mixing time; default is 1)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makedist_Rst_V0_1_0().translate("wdl", allow_empty_container=True)

