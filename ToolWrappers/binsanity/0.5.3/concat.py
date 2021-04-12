from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Concat_V0_1_0 = CommandToolBuilder(tool="concat", base_command=["concat"], inputs=[ToolInput(tag="in_specify_directory_where", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Specify directory where alignments are")), ToolInput(tag="in_specify_extension_be", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="Specify the extension for your alignments (must be in Fasta format)")), ToolInput(tag="in_prefix", input_type=Boolean(optional=True), prefix="--Prefix", doc=InputDocumentation(doc="Specify the prefix that links your alignments (ex: if you have two alignments TOBG_RpL10, TOBG_RpL24, the --Prefix would be TOBG")), ToolInput(tag="in_specify_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Specify output file")), ToolInput(tag="in_specify_minimum_number", input_type=Boolean(optional=True), prefix="-N", doc=InputDocumentation(doc="Specify the minimum number of sequences needed to be included in concatenation")), ToolInput(tag="in_extension", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_linker", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_specify_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_specify_output_file", type_hint=File()), doc=OutputDocumentation(doc="Specify output file"))], container="quay.io/biocontainers/binsanity:0.5.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Concat_V0_1_0().translate("wdl")

