from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Hilive_Build_V0_1_0 = CommandToolBuilder(tool="hilive_build", base_command=["hilive-build"], inputs=[ToolInput(tag="in_print_licensing_information", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="[ --license ]         Print licensing information and exit")), ToolInput(tag="in_arg_reference_genomes", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[ --input ] arg       Reference genome(s) in (multi-)FASTA format.\n[REQUIRED]")), ToolInput(tag="in_arg_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[ --out-prefix ] arg  Output file prefix. Several files with the same\nprefix will be created. [REQUIRED]")), ToolInput(tag="in_do_not_convert_spaces", input_type=Boolean(optional=True), prefix="--do-not-convert-spaces", doc=InputDocumentation(doc="Do not convert all spaces in reference ids to\nunderscores [Default: converting is on]")), ToolInput(tag="in_trim_after_space", input_type=Boolean(optional=True), prefix="--trim-after-space", doc=InputDocumentation(doc="Trim all reference ids after first space [Default:\nfalse]\n"))], outputs=[ToolOutput(tag="out_arg_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_arg_output_file", type_hint=File()), doc=OutputDocumentation(doc="[ --out-prefix ] arg  Output file prefix. Several files with the same\nprefix will be created. [REQUIRED]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hilive_Build_V0_1_0().translate("wdl", allow_empty_container=True)

