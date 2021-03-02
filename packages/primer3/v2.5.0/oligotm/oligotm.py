from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean, String

Oligotm_V0_1_0 = CommandToolBuilder(tool="oligotm", base_command=["oligotm"], inputs=[ToolInput(tag="in_mv", input_type=Int(optional=True), prefix="-mv", doc=InputDocumentation(doc="- concentration of monovalent cations in mM, by default 50mM")), ToolInput(tag="in_dv", input_type=Float(optional=True), prefix="-dv", doc=InputDocumentation(doc="- concentration of divalent cations in mM, by default 1.5mM")), ToolInput(tag="in_dntpconc_concentration_deoxynycleotide", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="dNTP_conc       - concentration of deoxynycleotide triphosphate in mM, by default 0.6mM")), ToolInput(tag="in_dnaconc_concentration_dna", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="dna_conc        - concentration of DNA strands in nM, by default 50nM")), ToolInput(tag="in_tp", input_type=Boolean(optional=True), prefix="-tp", doc=InputDocumentation(doc="[0|1]     - Specifies the table of thermodynamic parameters and\nthe method of melting temperature calculation:\n0  Breslauer et al., 1986 and Rychlik et al., 1990\n(used by primer3 up to and including release 1.1.0).\n1  Use nearest neighbor parameters from SantaLucia 1998\n*This is the default and recommended value*")), ToolInput(tag="in_sc", input_type=Boolean(optional=True), prefix="-sc", doc=InputDocumentation(doc="[0..2]    - Specifies salt correction formula for the melting\ntemperature calculation\n0  Schildkraut and Lifson 1965, used by primer3 up to\nand including release 1.1.0.\n1  SantaLucia 1998\n*This is the default and recommended value*\n2  Owczarzy et al., 2004")), ToolInput(tag="in_oligo", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oligotm_V0_1_0().translate("wdl", allow_empty_container=True)

