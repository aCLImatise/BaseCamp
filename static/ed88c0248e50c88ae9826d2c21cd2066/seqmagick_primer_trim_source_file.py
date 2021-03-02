from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Seqmagick_Primer_Trim_Source_File_V0_1_0 = CommandToolBuilder(tool="seqmagick_primer_trim_source_file", base_command=["seqmagick", "primer-trim", "source_file"], inputs=[ToolInput(tag="in_reverse_is_rev_comp", input_type=Boolean(optional=True), prefix="--reverse-is-revcomp", doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_magick", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_primer_trim", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqmagick_Primer_Trim_Source_File_V0_1_0().translate("wdl", allow_empty_container=True)

