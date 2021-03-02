from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Int, Boolean

Ribo_Select_V0_1_0 = CommandToolBuilder(tool="ribo_select", base_command=["ribo", "select"], inputs=[ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="output directory;default: None")), ToolInput(tag="in_feature", input_type=String(optional=True), prefix="--feature", doc=InputDocumentation(doc="Feature, rRNA or RRNA; default: rRNA")), ToolInput(tag="in_specific_features", input_type=Int(optional=True), prefix="--specific_features", doc=InputDocumentation(doc="colon:separated -- specific features; default:\n16S:23S:5S")), ToolInput(tag="in_clobber", input_type=Boolean(optional=True), prefix="--clobber", doc=InputDocumentation(doc="overwrite previous output files: default: False")), ToolInput(tag="in_clusters", input_type=Int(optional=True), prefix="--clusters", doc=InputDocumentation(doc="number of rDNA clusters;if submitting multiple\nrecords, must be a colon:separated list whose length\nmatches number of genbank records. Default is inferred\nfrom specific feature with fewest hits")), ToolInput(tag="in_verbosity", input_type=Int(optional=True), prefix="--verbosity", doc=InputDocumentation(doc="1 = debug(), 2 = info(), 3 = warning(), 4 = error()\nand 5 = critical(); default: 2")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Enable debug messages"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output directory;default: None"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ribo_Select_V0_1_0().translate("wdl", allow_empty_container=True)

