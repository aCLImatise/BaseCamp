from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Gendb_V0_1_0 = CommandToolBuilder(tool="gendb", base_command=["gendb"], inputs=[ToolInput(tag="in_alph", input_type=File(optional=True), prefix="-alph", doc=InputDocumentation(doc="Set the alphabet (overrides -type)")), ToolInput(tag="in_am_big", input_type=String(optional=True), prefix="-ambig", doc=InputDocumentation(doc="Set the fraction of symbols that\nwill be ambiguous (overrides -type)")), ToolInput(tag="in_b_file", input_type=File(optional=True), prefix="-bfile", doc=InputDocumentation(doc="Set the background")), ToolInput(tag="in_min_seq", input_type=Int(optional=True), prefix="-minseq", doc=InputDocumentation(doc="Set the minimum sequence length\n(default: 50)")), ToolInput(tag="in_max_seq", input_type=Int(optional=True), prefix="-maxseq", doc=InputDocumentation(doc="Set the maximum sequence length\n(default: 2000)")), ToolInput(tag="in_order", input_type=String(optional=True), prefix="-order", doc=InputDocumentation(doc="Set the highest background order to load\n(default: load highest available)")), ToolInput(tag="in_type", input_type=Int(optional=True), prefix="-type", doc=InputDocumentation(doc="|1|2|3|4          Set the alphabet type\n0 = Protein with 1% ambiguous symbols (default)\n1 = DNA with 1% ambiguous symbols\n2 = codons (ignores -bfile)\n3 = DNA without ambiguous symbols\n4 = Protein without ambiguous symbols")), ToolInput(tag="in_dummy", input_type=Boolean(optional=True), prefix="-dummy", doc=InputDocumentation(doc="Add dummy sequence showing the configuration")), ToolInput(tag="in_seed", input_type=Int(optional=True), prefix="-seed", doc=InputDocumentation(doc="Set the pseudo-random number generator seed"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gendb_V0_1_0().translate("wdl", allow_empty_container=True)

