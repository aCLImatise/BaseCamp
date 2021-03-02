from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, File, String

Ntthal_V0_1_0 = CommandToolBuilder(tool="ntthal", base_command=["ntthal"], inputs=[ToolInput(tag="in_mv", input_type=Int(optional=True), prefix="-mv", doc=InputDocumentation(doc="- concentration of monovalent cations in mM, by default 50 mM")), ToolInput(tag="in_dv", input_type=Int(optional=True), prefix="-dv", doc=InputDocumentation(doc="- concentration of divalent cations in mM, by default 0 mM")), ToolInput(tag="in_dntpconc_concentration_mm", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="dNTP_conc        - concentration of deoxynycleotide triphosphate in mM, by default 0 mM")), ToolInput(tag="in_dnaconc_concentration_nm", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="dna_conc         - concentration of DNA strands in nM, by default 50 nM")), ToolInput(tag="in_mode_type_end", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="mode             - alignment type, END1, END2, ANY and HAIRPIN, by default ANY (when duplex)")), ToolInput(tag="in_temp_temperature_calculated", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="temp             - temperature at which duplex is calculated, by default 37C")), ToolInput(tag="in_causes_alignment_displayed", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="- causes the alignment NOT to be displayed on stderr, _only_ Tm is printed")), ToolInput(tag="in_max_loop", input_type=Int(optional=True), prefix="-maxloop", doc=InputDocumentation(doc="- the maximum size of secondary structures loops.\nDefault is 30 (this is maximum allowed length, currently).")), ToolInput(tag="in_path", input_type=File(optional=True), prefix="-path", doc=InputDocumentation(doc="- the path to the thermodynamic parameter files")), ToolInput(tag="in_oligo", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ntthal_V0_1_0().translate("wdl", allow_empty_container=True)

