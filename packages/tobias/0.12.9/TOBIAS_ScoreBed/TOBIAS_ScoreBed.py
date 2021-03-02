from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File, Int

Tobias_Scorebed_V0_1_0 = CommandToolBuilder(tool="TOBIAS_ScoreBed", base_command=["TOBIAS", "ScoreBed"], inputs=[ToolInput(tag="in_math", input_type=String(optional=True), prefix="--math", doc=InputDocumentation(doc="be used to adjust scoring scheme.")), ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="--bed", doc=InputDocumentation(doc="Sites to score (.bed file)")), ToolInput(tag="in_bigwigs", input_type=Boolean(optional=True), prefix="--bigwigs", doc=InputDocumentation(doc="[ [ ...]]  Scores to assign to regions in .bed (.bw file(s))")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path to output .bed-file (default: scored sites are written to\nstdout)")), ToolInput(tag="in_subset", input_type=Boolean(optional=True), prefix="--subset", doc=InputDocumentation(doc="Subset scoring to .bed regions and set all other sites to --null\nvalue (default: all sites in input file will be scored)")), ToolInput(tag="in_null", input_type=Boolean(optional=True), prefix="--null", doc=InputDocumentation(doc="If --subset is given, which score/label to add to non-scored\nregions (default: 0)")), ToolInput(tag="in_position", input_type=Boolean(optional=True), prefix="--position", doc=InputDocumentation(doc="Position in sites to score (start/mid/end/full) (default: full)")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="Level of output logging (0: silent, 1: errors/warnings, 2: info, 3:\nstats, 4: debug, 5: spam) (default: 3)\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path to output .bed-file (default: scored sites are written to\nstdout)"))], container="quay.io/biocontainers/tobias:0.12.9--py36h29c9776_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tobias_Scorebed_V0_1_0().translate("wdl")

