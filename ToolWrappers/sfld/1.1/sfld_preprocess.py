from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory

Sfld_Preprocess_V0_1_0 = CommandToolBuilder(tool="sfld_preprocess", base_command=["sfld_preprocess"], inputs=[ToolInput(tag="in_hmm", input_type=File(optional=True), prefix="--hmm", doc=InputDocumentation(doc="HMM file (input)")), ToolInput(tag="in_sites", input_type=File(optional=True), prefix="--sites", doc=InputDocumentation(doc="sites file (output)")), ToolInput(tag="in_alignments", input_type=File(optional=True), prefix="--alignments", doc=InputDocumentation(doc="alignments file (input)")), ToolInput(tag="in_hmm_dir", input_type=Directory(optional=True), prefix="--hmm_dir", doc=InputDocumentation(doc="SFLD HMM directory (overrides $SFLD_LIB_DIR)"))], outputs=[ToolOutput(tag="out_sites", output_type=File(optional=True), selector=InputSelector(input_to_select="in_sites", type_hint=File()), doc=OutputDocumentation(doc="sites file (output)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sfld_Preprocess_V0_1_0().translate("wdl", allow_empty_container=True)

