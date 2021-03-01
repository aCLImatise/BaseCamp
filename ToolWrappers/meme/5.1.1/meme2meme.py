from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Meme2Meme_V0_1_0 = CommandToolBuilder(tool="meme2meme", base_command=["meme2meme"], inputs=[ToolInput(tag="in_consensus", input_type=Boolean(optional=True), prefix="-consensus", doc=InputDocumentation(doc="numeric names are swapped for an IUPAC\nconsensus; default: use existing names")), ToolInput(tag="in_numbers", input_type=Boolean(optional=True), prefix="-numbers", doc=InputDocumentation(doc="use numbers instead of strings for motif names;\ndefault: use existing ID")), ToolInput(tag="in_bg", input_type=File(optional=True), prefix="-bg", doc=InputDocumentation(doc="file with background frequencies of letters;\ndefault: use first file background")), ToolInput(tag="in_log_odds", input_type=Boolean(optional=True), prefix="-logodds", doc=InputDocumentation(doc="print log-odds matrix as well as frequency matrix;\ndefault: frequency matrix only")), ToolInput(tag="in_url", input_type=String(optional=True), prefix="-url", doc=InputDocumentation(doc="website for the motif if it doesn't have one\nalready; The motif name is substituted for\nMOTIF_NAME; default: use existing url")), ToolInput(tag="in_force_url", input_type=Boolean(optional=True), prefix="-forceurl", doc=InputDocumentation(doc="Existing urls are ignored")), ToolInput(tag="in_x_alph", input_type=Boolean(optional=True), prefix="-xalph", doc=InputDocumentation(doc="Convert all motifs to use the same alphabet as\nspecified in the first file which must be a superset;\ndefault: all alphabets must be identical")), ToolInput(tag="in_meme_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Meme2Meme_V0_1_0().translate("wdl", allow_empty_container=True)

