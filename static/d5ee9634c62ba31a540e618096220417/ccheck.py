from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String, Int

Ccheck_V0_1_0 = CommandToolBuilder(tool="ccheck", base_command=["ccheck"], inputs=[ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="FASTA file with the likely contaminant (default: builtin mt311)")), ToolInput(tag="in_ancient", input_type=Boolean(optional=True), prefix="--ancient", doc=InputDocumentation(doc="Treat DNA as ancient (i.e. likely deaminated)")), ToolInput(tag="in_transversions", input_type=Boolean(optional=True), prefix="--transversions", doc=InputDocumentation(doc="Treat only transversions as diagnostic")), ToolInput(tag="in_span", input_type=String(optional=True), prefix="--span", doc=InputDocumentation(doc="Look only at range from M to N")), ToolInput(tag="in_num_pos", input_type=Int(optional=True), prefix="--numpos", doc=InputDocumentation(doc="Require N diagnostic sites in a single read (default: 1)")), ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="--force", doc=InputDocumentation(doc="Do not look for a higher numbered .maln")), ToolInput(tag="in_table", input_type=Boolean(optional=True), prefix="--table", doc=InputDocumentation(doc="Output as tables (easier for scripts, harder on the eyes)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase verbosity level (can be repeated)")), ToolInput(tag="in_aln_dot_mal_n", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ccheck_V0_1_0().translate("wdl", allow_empty_container=True)

